# ConcurrentHashMap

## 背景

上篇文章分析了`HashMap`的原理，但是其不能保证线程安全，所以`ConcurrentHashMap`作为线程安全的`Map` ，它的使用频率也是很高。也是面试中的常考的点。

> 面试官：面试开始，那我们就先聊聊Java基础吧
>
> 面试官：你先说说`HashMap`的底层数据结构和原理吧
>
> 我：`HashMap`使用了 数组+链表+红黑树。然后怎么解决hash冲突，怎么扩容和缩容……
>
> 面试官：`HashMap`怎么减少hash碰撞？
> 我：通过负载因子……
>
> 面试官：`HashMap`是线程不安全的，那么它会带来是么问题呢？
>
> 我：……
>
> 面试官：线程安全的`Map`我们通常使用`ConcurrentHashMap`，那么说说他的底层数据结构和原理吧？
>
> 我：瞬间蒙圈！！！
>
> *然后说到线程安全，马上又聊到多线程和高并发……*

有的面试官一般会一步步地挖掘你的知识深度，看看你到底能达到什么地步。

## 多线程下的 HashMap 有什么问题？

- 在jdk1.7中，在多线程环境下，扩容时会造成死循环（尾插法引起环形链）或数据丢失。
- 在jdk1.8中，在多线程环境下，会发生数据覆盖的情况。

### jdk1.7多线程环境下HashMap问题

在jdk1.7多线程环境下HashMap容易出现死循环和数据丢失，这里我们先用代码来模拟出现死循环的情况：

```java
public class HashMapTest {

    public static void main(String[] args) {
        HashMapThread thread0 = new HashMapThread();
        HashMapThread thread1 = new HashMapThread();
        HashMapThread thread2 = new HashMapThread();
        HashMapThread thread3 = new HashMapThread();
        HashMapThread thread4 = new HashMapThread();
        thread0.start();
        thread1.start();
        thread2.start();
        thread3.start();
        thread4.start();
    }
}

class HashMapThread extends Thread {
    private static AtomicInteger ai = new AtomicInteger();
    private static Map<Integer, Integer> map = new HashMap<>();

    @Override
    public void run() {
        while (ai.get() < 1000000) {
            map.put(ai.get(), ai.get());
            ai.incrementAndGet();
        }
    }
}
```

上述代码比较简单，就是开多个线程不断进行put操作，并且HashMap与AtomicInteger都是全局共享的。在多运行几次该代码后，出现死循环情形。

我们着重分析为什么会出现死循环的情况，通过`jps`和`jstack`命名查看死循环情况，结果如下：

![jdk1.8 HashMap死循环堆栈情况](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/202109252012771.jpeg)

从堆栈信息中可以看到出现死循环的位置，通过该信息可明确知道死循环发生在HashMap的 **扩容函数** 中，根源在**`transfer`函数**中，jdk1.7中HashMap的`transfer`函数如下：

```java
void transfer(Entry[] newTable, boolean rehash) {
    int newCapacity = newTable.length;
    for (Entry<K,V> e : table) {
        while(null != e) {
            Entry<K,V> next = e.next;
            if (rehash) {
                e.hash = null == e.key ? 0 : hash(e.key);
            }
            int i = indexFor(e.hash, newCapacity);
            e.next = newTable[i];
            newTable[i] = e;
            e = next;
        }
    }
}
```

在对table进行扩容到newTable后，需要将原来数据转移到newTable中，注意10-12行代码，这里可以看出在转移元素的过程中，使用的是**头插法**，也就是**链表的顺序会翻转**，这里也是形成死循环的关键点。

### **jdk1.8多线程环境下HashMap问题**

在jdk8中对HashMap进行了优化，在发生hash碰撞，不再采用头插法方式，而是直接插入链表尾部，因此不会出现环形链表的情况，但是在多线程的情况下仍然不安全。

这里我们看jdk8中HashMap的put操作源码：

```java
final V putVal(int hash, K key, V value, boolean onlyIfAbsent,
               boolean evict) {
    Node<K,V>[] tab; Node<K,V> p; int n, i;
    if ((tab = table) == null || (n = tab.length) == 0)
        n = (tab = resize()).length;
    if ((p = tab[i = (n - 1) & hash]) == null) // 如果没有hash碰撞则直接插入元素
        tab[i] = newNode(hash, key, value, null);
    else {
        Node<K,V> e; K k;
        if (p.hash == hash &&
            ((k = p.key) == key || (key != null && key.equals(k))))
            e = p;
        else if (p instanceof TreeNode)
            e = ((TreeNode<K,V>)p).putTreeVal(this, tab, hash, key, value);
        else {
            for (int binCount = 0; ; ++binCount) {
                if ((e = p.next) == null) {
                    p.next = newNode(hash, key, value, null);
                    if (binCount >= TREEIFY_THRESHOLD - 1) // -1 for 1st
                        treeifyBin(tab, hash);
                    break;
                }
                if (e.hash == hash &&
                    ((k = e.key) == key || (key != null && key.equals(k))))
                    break;
                p = e;
            }
        }
        if (e != null) { // existing mapping for key
            V oldValue = e.value;
            if (!onlyIfAbsent || oldValue == null)
                e.value = value;
            afterNodeAccess(e);
            return oldValue;
        }
    }
    ++modCount;
    if (++size > threshold)
        resize();
    afterNodeInsertion(evict);
    return null;
}
```

这是jdk1.8中HashMap中put操作的主函数， 注意第6行代码，如果没有hash碰撞则会直接插入元素。如果线程A和线程B同时进行put操作，刚好这两条不同的数据hash值一样，并且该位置数据为null，所以这线程A、B都会进入第6行代码中。假设一种情况，线程A进入后还未进行数据插入时挂起，而线程B正常执行，从而正常插入数据，然后线程A获取CPU时间片，此时线程A不用再进行hash判断了，问题出现：线程A会把线程B插入的数据给**覆盖**，发生线程不安全。

详细分析参看：[阿里Java一面：说说HashMap线程不安全的体现，这TM什么人间疾苦！](https://zhuanlan.zhihu.com/p/174226955)

## 怎样保证线程安全，为什么选用 ConcurrentHashMap？

**怎样保证线程安全？**

首先能想到的就是`Hashtable`了，但是它的 `put` 方法和 `get` 方法是通过加`synchronized`关键字来实现的，锁住了整个 table，效率低下，因此 并不适合高并发场景。

也许，你还会想起来一个集合工具类 `Collections`，生成一个`SynchronizedMap`。其实，它和 Hashtable 差不多，同样的原因，锁住整张表，效率低下。

所以，思考一下，既然锁住整张表的话，并发效率低下，那我**把整张表分成 N 个部分，并使元素尽量均匀的分布到每个部分中，分别给他们加锁，互相之间并不影响**，这种方式岂不是更好 。这就是在 JDK1.7 中 `ConcurrentHashMap` 采用的方案，被叫做**锁分段技术**，每个部分就是一个 Segment（段）。

但是，在JDK1.8中，完全重构了，采用的是 **`Synchronized` + `CAS`** ，**把锁的粒度进一步降低，而放弃了 Segment 分段**。（此时的 Synchronized 已经升级了，效率得到了很大提升，锁升级可以了解一下）

## ConcurrentHashMap的数据结构

### ConcurrentHashMap 1.7

在 JDK1.7中，本质上还是采用链表+数组的形式存储键值对的。但是，为了提高并发，把原来的整个 table 划分为 n 个 `Segment` 。所以，从整体来看，它是一个由 `Segment` 组成的数组。然后，每个 `Segment` 里边是由 `HashEntry` 组成的数组，每个 `HashEntry`之间又可以形成链表。我们可以把每个 `Segment` 看成是一个小的 `HashMap`，其内部结构和 `HashMap` 是一模一样的，每一个 `HashMap` 的内部可以进行扩容。但是 `Segment` 的个数一旦**初始化就不能改变**，默认 `Segment` 的个数是 16 个，你也可以认为 `ConcurrentHashMap` 默认支持最多 16 个线程并发。

![ConcurrentHashMap 1.7存储结构](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/202109252101050.png)

当对某个 Segment 加锁时，并不会影响到其他 Segment 的读写。每个 Segment 内部自己操作自己的数据。这样一来，我们要做的就是**尽可能的让元素均匀的分布在不同的 Segment中**。最理想的状态是，所有执行的线程操作的元素都是不同的 Segment，这样就可以降低锁的竞争。

### ConcurrentHashMap 1.8

可以发现 Java8 的 `ConcurrentHashMap` 相对于 Java7 来说变化比较大，不再是之前的 **Segment 数组 + HashEntry 数组 + 链表**，而是 **Node 数组 + 链表 / 红黑树**。当冲突链表达到一定长度时，链表会转换成红黑树。

![Java8 ConcurrentHashMap 存储结构](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/202109252157388.png)

不再使用分段锁，而是给数组中的每一个头节点（为了方便，以后都叫桶）都加锁，锁的粒度降低了。并且，用的是 `Synchronized `锁。

底层存储结构和 1.8 的 HashMap 是一样的，不同的就是，多了一些并发的处理。



## ConcurrentHashMap 1.8 如何保证线程安全？

### 初始化 initTable

```java
private final Node<K,V>[] initTable() {
    Node<K,V>[] tab; int sc;
    //循环判断表是否为空，直到初始化成功为止。
    while ((tab = table) == null || tab.length == 0) {
        //sizeCtl 这个值有很多情况，默认值为0，
        //当为 -1 时，说明有其它线程正在对表进行初始化操作
        //当表初始化成功后，又会把它设置为扩容阈值
        //当为一个小于 -1 的负数，用来表示当前有几个线程正在帮助扩容(后边细讲)
        if ((sc = sizeCtl) < 0)
            //若 sc 小于0，其实在这里就是-1，因为此时表是空的，不会发生扩容，sc只能为正数或者-1
            //因此，当前线程放弃 CPU 时间片，只是自旋。
            Thread.yield(); // lost initialization race; just spin
        //通过 CAS 把 sc 的值设置为-1，表明当前线程正在进行表的初始化，其它失败的线程就会自旋
        else if (U.compareAndSwapInt(this, SIZECTL, sc, -1)) {
            try {
                //重新检查一下表是否为空
                if ((tab = table) == null || tab.length == 0) {
                    //如果sc大于0，则为sc，否则返回默认容量 16。
                    //当调用有参构造创建 Map 时，sc的值是大于0的。
                    int n = (sc > 0) ? sc : DEFAULT_CAPACITY;
                    @SuppressWarnings("unchecked")
                    //创建数组
                    Node<K,V>[] nt = (Node<K,V>[])new Node<?,?>[n];
                    table = tab = nt;
                    //n减去 1/4 n ，即为 0.75n ，表示扩容阈值
                    sc = n - (n >>> 2);
                }
            } finally {
                //更新 sizeCtl 为扩容阈值
                sizeCtl = sc;
            }
            //若当前线程初始化表成功，则跳出循环。其它自旋的线程因为判断数组不为空，也会停止自旋
            break;
        }
    }
    return tab;
}
```

从源码中可以发现 `ConcurrentHashMap` 的初始化是通过**自旋和 CAS** 操作完成的。里面需要注意的是变量 `sizeCtl` ，它的值决定着当前的初始化状态。

1. `-1` 说明正在初始化
2. `-N` 说明有N-1个线程正在进行扩容
3. 如果 table 没有初始化，表示 table 初始化大小
4. 如果 table已经初始化，表示 table 容量。

### put()方法

总结`put`过程：

1. 根据 key 计算出 hashcode 。
2. 判断是否需要进行初始化。
3. 即为当前 key 定位出的 Node，如果为空表示当前位置可以写入数据，利用 CAS 尝试写入，失败则自旋保证成功。
4. 如果当前位置的 `hashcode == MOVED == -1`,则需要进行扩容。
5. 如果都不满足，则利用`synchronized` 锁写入数据。
6. 如果数量大于 `TREEIFY_THRESHOLD` 则要转换为红黑树。

源码：

```java
public V put(K key, V value) {
    return putVal(key, value, false);
}

final V putVal(K key, V value, boolean onlyIfAbsent) {
    //可以看到，在并发情况下，key 和 value 都是不支持为空的。
    if (key == null || value == null) throw new NullPointerException();
    //这里和1.8 HashMap 的hash 方法大同小异，只是多了一个操作，如下
    //( h ^ (h >>> 16)) & HASH_BITS;  HASH_BITS = 0x7fffffff;
    // 0x7fffffff ，二进制为 0111 1111 1111 1111 1111 1111 1111 1111 。
    //所以，hash值除了做了高低位异或运算，还多了一步，保证最高位的 1 个 bit 位总是0。
    //这里，我并没有明白它的意图，仅仅是保证计算出来的hash值不超过 Integer 最大值，且不为负数吗。
    //同 HashMap 的hash 方法对比一下，会发现连源码注释都是相同的，并没有多说明其它的。
    //我个人认为意义不大，因为最后 hash 是为了和 capacity -1 做与运算，而 capacity 最大值为 1<<30，
    //即 0100 0000 0000 0000 0000 0000 0000 0000 ，减1为 0011 1111 1111 1111 1111 1111 1111 1111。
    //即使 hash 最高位为 1(无所谓0)，也不影响最后的结果，最高位也总会是0.
    int hash = spread(key.hashCode());
    //用来计算当前链表上的元素个数
    int binCount = 0;
    for (Node<K,V>[] tab = table;;) {
        Node<K,V> f; int n, i, fh;
        //如果表为空，则说明还未初始化。
        if (tab == null || (n = tab.length) == 0)
            //初始化表，只有一个线程可以初始化成功。
            tab = initTable();
        //若表已经初始化，则找到当前 key 所在的桶，并且判断是否为空
        else if ((f = tabAt(tab, i = (n - 1) & hash)) == null) {
            //若当前桶为空，则通过 CAS 原子操作，把新节点插入到此位置，
            //这保证了只有一个线程可以 CAS 成功，其它线程都会失败。
            if (casTabAt(tab, i, null,
                         new Node<K,V>(hash, key, value, null)))
                break;                   // no lock when adding to empty bin
        }
        //若所在桶不为空，则判断节点的 hash 值是否为 MOVED（值是-1）
        else if ((fh = f.hash) == MOVED)
            //若为-1，说明当前数组正在进行扩容，则需要当前线程帮忙迁移数据
            tab = helpTransfer(tab, f);
        else {
            V oldVal = null;
            //这里用加同步锁的方式，来保证线程安全，给桶中第一个节点对象加锁
            synchronized (f) {
                //recheck 一下，保证当前桶的第一个节点无变化，后边很多这样类似的操作，不再赘述
                if (tabAt(tab, i) == f) {
                    //如果hash值大于等于0，说明是正常的链表结构
                    if (fh >= 0) {
                        binCount = 1;
                        //从头结点开始遍历，每遍历一次，binCount计数加1
                        for (Node<K,V> e = f;; ++binCount) {
                            K ek;
                            //如果找到了和当前 key 相同的节点，则用新值替换旧值
                            if (e.hash == hash &&
                                ((ek = e.key) == key ||
                                 (ek != null && key.equals(ek)))) {
                                oldVal = e.val;
                                if (!onlyIfAbsent)
                                    e.val = value;
                                break;
                            }
                            Node<K,V> pred = e;
                            //若遍历到了尾结点，则把新节点尾插进去
                            if ((e = e.next) == null) {
                                pred.next = new Node<K,V>(hash, key,
                                                          value, null);
                                break;
                            }
                        }
                    }
                    //否则判断是否是树节点。这里提一下，TreeBin只是头结点对TreeNode的再封装
                    else if (f instanceof TreeBin) {
                        Node<K,V> p;
                        binCount = 2;
                        if ((p = ((TreeBin<K,V>)f).putTreeVal(hash, key,
                                                              value)) != null) {
                            oldVal = p.val;
                            if (!onlyIfAbsent)
                                p.val = value;
                        }
                    }
                }
            }
            //注意下，这个判断是在同步锁外部，因为 treeifyBin内部也有同步锁，并不影响
            if (binCount != 0) {
                //如果节点个数大于等于 8，则转化为红黑树
                if (binCount >= TREEIFY_THRESHOLD)
                    treeifyBin(tab, i);
                //把旧节点值返回
                if (oldVal != null)
                    return oldVal;
                break;
            }
        }
    }
    //给元素个数加 1，并有可能会触发扩容，比较复杂，稍后细讲
    addCount(1L, binCount);
    return null;
}
```

### get()方法

```java
public V get(Object key) {
    Node<K,V>[] tab; Node<K,V> e, p; int n, eh; K ek;
    // key 所在的 hash 位置
    int h = spread(key.hashCode());
    if ((tab = table) != null && (n = tab.length) > 0 &&
        (e = tabAt(tab, (n - 1) & h)) != null) {
        // 如果指定位置元素存在，头结点hash值相同
        if ((eh = e.hash) == h) {
            if ((ek = e.key) == key || (ek != null && key.equals(ek)))
                // key hash 值相等，key值相同，直接返回元素 value
                return e.val;
        }
        else if (eh < 0)
            // 头结点hash值小于0，说明正在扩容或者是红黑树，find查找
            return (p = e.find(h, key)) != null ? p.val : null;
        while ((e = e.next) != null) {
            // 是链表，遍历查找
            if (e.hash == h &&
                ((ek = e.key) == key || (ek != null && key.equals(ek))))
                return e.val;
        }
    }
    return null;
}
```

总结一下 get 过程：

1. 根据 hash 值计算位置。
2. 查找到指定位置，如果头节点就是要找的，直接返回它的 value.
3. 如果头节点 hash 值小于 0 ，说明正在扩容或者是红黑树，查找之。
4. 如果是链表，遍历查找之。

## 总结

**HashMap线程不安全体现在**：

- 在jdk1.7中，在多线程环境下，扩容时会造成死循环（尾插法引起环形链）或数据丢失。
- 在jdk1.8中，在多线程环境下，会发生数据覆盖的情况。

**ConcurrentHashMap如何解决线程安全问题？**

在JDK1.7中，使用**锁分段技术**实现线程安全。**把整张表分成 N 个部分，并使元素尽量均匀的分布到每个部分中，分别给他们加锁，互相之间并不影响**，每个部分就是一个 Segment（段）。

在JDK1.8中，完全重构了，采用的是 **`Synchronized` + `CAS`** ，**把锁的粒度进一步降低，而放弃了 Segment 分段**。（此时的 Synchronized 已经升级了，效率得到了很大提升，锁升级可以了解一下）

**`put`过程**

1. 根据 key 计算出 hashcode 。
2. 判断是否需要进行初始化。
3. 即为当前 key 定位出的 Node，如果为空表示当前位置可以写入数据，利用 CAS 尝试写入，失败则自旋保证成功。
4. 如果当前位置的 `hashcode == MOVED == -1`，则需要进行扩容。
5. 如果都不满足，则利用`synchronized` 锁写入数据。
6. 如果数量大于 `TREEIFY_THRESHOLD` 则要转换为红黑树。



*更加详细的分析，参看文末的文章，分析的都比较好。*

## 参看

- [阿里Java一面：说说HashMap线程不安全的体现，这TM什么人间疾苦！](https://zhuanlan.zhihu.com/p/174226955) （HashMap线程不安全的体现分析的比较透彻）

- [我就知道面试官接下来要问我 ConcurrentHashMap 底层原理了](https://mp.weixin.qq.com/s/My4P_BBXDnAGX1gh630ZKw) 

  





# HashCode

#### 1. HashCode 为什么使用 31 作为乘数？

**hashCode的计算逻辑中，为什么是31作为乘数**？

![image-20210703205523786](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703205530.png)

在获取`hashCode`的源码中可以看到，有一个固定值`31`，在for循环每次执行时进行乘积计算，循环后的公式如下； `s[0]*31^(n-1) + s[1]*31^(n-2) + ... + s[n-1]`。

原因：

- 31 是一个奇质数，如果选择偶数会导致乘积运算时数据溢出。

- 在二进制中，2个5次方是32，那么也就是 `31 * i == (i << 5) - i`。这主要是说乘积运算可以使用位移提升性能，同时目前的JVM虚拟机也会自动支持此类的优化。
- 超过 5 千个单词计算 hashCode， 这个 hashCode 的运算使用 31、33、37、39 和 41 作为乘积，得到的碰撞 结果，31 被使用就很正常了。
  - 31的碰撞概率很小，比较稳定，而且不超过int的取值范围。*199的碰撞概率更小，这就相当于一排奇数的茅坑量多，自然会减少碰撞。**但这个范围值已经远超过int的取值范围了，如果用此数作为乘数，又返回int值，就会丢失数据信息**。*
  - hash的散列比较均匀

# HashMap

## 2. HashMap的基本特点

- HashMap 主要用来存放键值对，它基于哈希表的 Map 接口实现，是常用的 Java 集合之一，是非线程安全的，在多线程环境下可能会存在问题。
- HashMap 允许 null 键和 null 值，在计算哈键的哈希值时，null 键哈希值为 0。null键只能有一个，null值可以有多个。
- HashMap 并不保 证键值对的顺序，这意味着在进行某些操作后，键值对的顺序可能会发生变化。
- `HashMap` 默认的初始化大小为 16。之后每次扩充，容量变为原来的 2 倍。并且， `HashMap` 总是使用 2 的幂作为哈希表的大小。
- JDK1.8 之前 HashMap 由 数组+链表 组成的，数组是 HashMap 的主体，链表则是主要为了解决哈希冲突而存在的（“拉链法”解决冲突）。 JDK1.8 以后的 `HashMap` 在解决哈希冲突时有了较大的变化，当链表长度大于阈值（默认为 8）（将链表转换成红黑树前会判断，如果当前数组的长度小于 64，那么会选择先进行数组扩容，而不是转换为红黑树）时，将链表转化为红黑树，以减少搜索时间。

## 3. 实现一个简单的HashMap

**问题**： 假设我们有一组 7 个字符串，需要存放到数组中，但要求在获取每个元 素的时候时间复杂度是 O(1)。也就是说你不能通过循环遍历的方式进行获取， 而是要定位到数组 ID 直接获取相应的元素。

**方案：**如果说我们需要通过ID从数组中获取元素，那么就需要把每个字符串都计算出一个在数组中的位置ID。*字符串获取ID你能想到什么方式？* 一个字符串最直接的获取跟数字相关的信息就是HashCode，可HashCode的取值范围太大了`[-2147483648, 2147483647]`，不可能直接使用。那么就需要使用HashCode与数组长度做与运算，得到一个可以在数组中出现的位置。如果说有两个元素得到同样的ID，那么这个数组ID下就存放两个字符串。

```java
// 初始化一组字符串
List<String> list = new ArrayList<>();
list.add("jlkk");
list.add("lopi");
list.add("小傅哥");
list.add("e4we");
list.add("alpo");
list.add("yhjk");
list.add("plop");

// 定义要存放的数组
String[] tab = new String[8];

// 循环存放
for (String key : list) {
    int idx = key.hashCode() & (tab.length - 1);  // 计算索引位置
    System.out.println(String.format("key值=%s Idx=%d", key, idx));
    if (null == tab[idx]) {
        tab[idx] = key;
        continue;
    }
    tab[idx] = tab[idx] + "->" + key;
}
// 输出测试结果
System.out.println(JSON.toJSONString(tab));
```

**代码实现思路**：

1. 初始化一组字符串集合，这里初始化了7个。
2. 定义一个数组用于存放字符串，注意这里的长度是8，也就是2的倍数。这样的数组长度才会出现一个 `0111` 除高位以外都是1的特征，也是为了散列。
3. 接下来就是循环存放数据，计算出每个字符串在数组中的位置。`key.hashCode() & (tab.length - 1)`。
4. 在字符串存放到数组的过程，如果遇到相同的元素，进行连接操作`模拟链表的过程`。
5. 最后输出存放结果。

**测试结果**

```java
key值=jlkk Idx=2
key值=lopi Idx=4
key值=小傅哥 Idx=7
key值=e4we Idx=5
key值=alpo Idx=2
key值=yhjk Idx=0
key值=plop Idx=5
测试结果：["yhjk",null,"jlkk->alpo",null,"lopi","e4we->plop",null,"小傅哥"]
```

- 在测试结果首先是计算出每个元素在数组的Idx，也有出现重复的位置。
- 最后是测试结果的输出，1、3、6，位置是空的，2、5，位置有两个元素被链接起来`e4we->plop`。
- 这就达到了我们一个最基本的要求，将串元素散列存放到数组中，最后通过字符串元素的索引ID进行获取对应字符串。这样是HashMap的一个最基本原理，有了这个基础后面就会更容易理解HashMap的源码实现。

1. 初始化一组字符串集合，这里初始化了7个。
2. 定义一个数组用于存放字符串，注意这里的长度是8，也就是2的倍数。这样的数组长度才会出现一个 `0111` 除高位以外都是1的特征，也是为了散列。
3. 接下来就是循环存放数据，计算出每个字符串在数组中的位置。`key.hashCode() & (tab.length - 1)`。
4. 在字符串存放到数组的过程，如果遇到相同的元素，进行连接操作`模拟链表的过程`。
5. 最后输出存放结果。

**测试结果**

```
key值=jlkk Idx=2
key值=lopi Idx=4
key值=小傅哥 Idx=7
key值=e4we Idx=5
key值=alpo Idx=2
key值=yhjk Idx=0
key值=plop Idx=5
测试结果：["yhjk",null,"jlkk->alpo",null,"lopi","e4we->plop",null,"小傅哥"]
```

- 在测试结果首先是计算出每个元素在数组的Idx，也有出现重复的位置。
- 最后是测试结果的输出，1、3、6，位置是空的，2、5，位置有两个元素被链接起来`e4we->plop`。
- 这就达到了我们一个最基本的要求，将串元素散列存放到数组中，最后通过字符串元素的索引ID进行获取对应字符串。这样是HashMap的一个最基本原理，有了这个基础后面就会更容易理解HashMap的源码实现。

**Hash散列示意图**

如果上面的测试结果不能在你的头脑中很好的建立出一个数据结构，那么可以看以下这张散列示意图，方便理解

![7个元素的hash散列示意图](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703210928.png)

黄色的索引ID是没有元素存放、绿色的索引ID存放了一个元素、红色的索引ID存放了两个元素

**简单的HashMap有哪些问题**？

以上实现了一个简单的HashMap，或者说还算不上HashMap，只能算做一个散列数据存放的雏形。但这样的一个数据结构放在实际使用中，会有哪些问题呢？

1. 在获取索引ID的计算公式中，需要数组长度是2的倍数，那么**怎么进行初始化这个数组大小**？
2. 数组越小碰撞的越大，数组越大碰撞的越小，**时间与空间如何取舍**？
3. 目前存放7个元素，已经有两个位置都存放了2个字符串，那么**链表越来越长怎么优化**？链表越长意味着检索效率越低
4. 随着元素的不断添加，数组长度不足扩容时，**怎么把原有的元素，拆分到新的位置上去**？
5. 这里所有的元素存放都需要获取一个索引位置，而如果元素的位置不够散列碰撞严重，那么就失去了散列表存放的意义，没有达到预期的性能

以上这些问题可以从HashMap的`扰动函数`、`初始化容量`、`负载因子`、`扩容方法`以及`链表和红黑树转换`的角度考虑。

## 4. 扰动函数

### 4.1 Java8中的扰动函数

在HashMap存放元素时候有这样一段代码来处理哈希值，这是`java 8`的散列值扰动函数，用于优化散列效果：

```java
static final int hash(Object key) {
    int h;
    // key.hashCode()：返回散列值也就是hashcode
    // ^ ：按位异或
    // >>>:无符号右移，忽略符号位，空位都以0补齐
    return (key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);
}
```

### 4.2 为什么使用扰动函数？

理论上来说字符串的`hashCode`是一个int类型值，可以直接作为数组下标，且不会出现碰撞。但是这个`hashCode`的取值范围是`[-2147483648, 2147483647]`，有将近40亿的长度，不可能把数组初始化的这么大，内存是放不下的。

所以HashMap默认大小是16个长度，即 `DEFAULT_INITIAL_CAPACITY = 1 << 4`，所以获取的Hash值并不能直接作为下标使用，需要与数组长度进行取模运算得到一个下标值。

hashMap源码这里不只是直接获取哈希值，还进行了一次扰动计算，`(h = key.hashCode()) ^ (h >>> 16)`。把哈希值右移16位，也就正好是自己长度的一半，之后与原哈希值做异或运算，这样就混合了原哈希值中的高位和低位，增大了**随机性**。计算方式如下图：

![扰动函数计算过程](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703212320.png)

总结：**使用扰动函数就是为了增加随机性，让数据元素更加均衡的散列，减少碰撞**。

### 4.3 Java7中的扰动函数

对比一下 JDK1.7 的 HashMap 的 hash 方法源码.

```java
static int hash(int h) {
    h ^= (h >>> 20) ^ (h >>> 12);
    return h ^ (h >>> 7) ^ (h >>> 4);
}
```

相比于 JDK1.8 的 hash 方法 ，JDK 1.7 的 hash 方法的性能会稍差一点点，因为**毕竟扰动了 4 次**。

### 4.4 HashMap 的容量必须是 2 的 N 次方，这是为什么？

计算索引位置的公式为：`(n - 1) & hash`，当 n 为 2 的 N 次方时，n - 1 为低位全是 1 的值，此时任何值跟 n - 1 进行 & 运算的结果为该值的低 N 位，达到了和取模同样的效果，实现了均匀分布。实际上，这个设计就是基于公式：`x mod 2^n = x & (2^n - 1)`，因为 & 运算比 mod 具有更高的效率。

## 5. 初始化容量和负载因子

散列数组需要一个2的倍数的长度，因为只有2的倍数在减1的时候，才会出现`01111`这样的值。

那么这里就有一个问题，我们在初始化HashMap的时候，如果传一个17个的值`new HashMap<>(17);`，它会怎么处理呢？

### 5.1 寻找2的倍数的最小值

在HashMap的初始化中，有这样一段方法；

```Java
public HashMap(int initialCapacity, float loadFactor) {
    ...
    this.loadFactor = loadFactor;
    this.threshold = tableSizeFor(initialCapacity);
}
```

- 阀值`threshold`，通过方法`tableSizeFor`进行计算，是根据初始化来计算的。
- 这个方法也就是要寻找比初始值大的，最小的那个2进制数值。比如传了17，我应该找到的是32。

计算阀值大小的方法；

```java
static final int tableSizeFor(int cap) {
    int n = cap - 1;
    n |= n >>> 1;
    n |= n >>> 2;
    n |= n >>> 4;
    n |= n >>> 8;
    n |= n >>> 16;
    return (n < 0) ? 1 : (n >= MAXIMUM_CAPACITY) ? MAXIMUM_CAPACITY : n + 1;
}
```

- MAXIMUM_CAPACITY = 1 « 30，这个是临界范围，也就是最大的Map集合。
- 乍一看可能有点晕😵怎么都在向右移位1、2、4、8、16，这主要是为了把二进制的各个位置都填上1，当二进制的各个位置都是1以后，就是一个标准的2的倍数减1了，最后把结果加1再返回即可。

图示过程如下：

<img src="images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703212959.png" alt="初始化容量为2的倍数最小值的过程" style="zoom:80%;" />

### 5.2 负载因子

```java
static final float DEFAULT_LOAD_FACTOR = 0.75f;
```

**负载因子是做什么的？**

在HashMap中，**负载因子决定了数据量多少了以后进行扩容**。*这里要提到上面做的HashMap例子，我们准备了7个元素，但是最后还有3个位置空余，2个位置存放了2个元素。* 所以可能即使你**数据比数组容量大时也是不一定能正正好好的把数组占满的，而是在某些小标位置出现了大量的碰撞，只能在同一个位置用链表存放，那么这样就失去了Map数组的性能**。

所以，要选择一个合理的大小下进行扩容，**默认值0.75就是说当阀值容量占了3/4时赶紧扩容，减少Hash碰撞**。

同时0.75是一个默认构造值，在创建HashMap也可以调整，比如你希望用更多的空间换取时间，可以把负载因子调的更小一些，减少碰撞。

### 5.3 扩容元素拆分

为什么扩容？因为数组长度不足了。那**扩容最直接的问题，就是需要把元素拆分到新的数组中**。拆分元素的过程中，原jdk1.7中会需要重新计算哈希值，但是到jdk1.8中已经进行优化，不在需要重新计算，提升了拆分的性能。

#### 5.3.1 测试数据，得出Java8的元素拆分规律

```java
@Test
public void test_hashMap() {
    List<String> list = new ArrayList<>();
    list.add("jlkk");
    list.add("lopi");
    list.add("jmdw");
    list.add("e4we");
    list.add("io98");
    list.add("nmhg");
    list.add("vfg6");
    list.add("gfrt");
    list.add("alpo");
    list.add("vfbh");
    list.add("bnhj");
    list.add("zuio");
    list.add("iu8e");
    list.add("yhjk");
    list.add("plop");
    list.add("dd0p");
    for (String key : list) {
        int hash = key.hashCode() ^ (key.hashCode() >>> 16);
        System.out.println("字符串：" + key + " \tIdx(16)：" + ((16 - 1) & hash) + " \tBit值：" + Integer.toBinaryString(hash) + " - " + Integer.toBinaryString(hash & 16) + " \t\tIdx(32)：" + ((
        System.out.println(Integer.toBinaryString(key.hashCode()) +" "+ Integer.toBinaryString(hash) + " " + Integer.toBinaryString((32 - 1) & hash));
    }
}
```

**测试结果**

```java
字符串：jlkk 	Idx(16)：3 	Bit值：1100011101001000010011 - 10000 		Idx(32)：19
1100011101001000100010 1100011101001000010011 10011
字符串：lopi 	Idx(16)：14 	Bit值：1100101100011010001110 - 0 		Idx(32)：14
1100101100011010111100 1100101100011010001110 1110
字符串：jmdw 	Idx(16)：7 	Bit值：1100011101010100100111 - 0 		Idx(32)：7
1100011101010100010110 1100011101010100100111 111
字符串：e4we 	Idx(16)：3 	Bit值：1011101011101101010011 - 10000 		Idx(32)：19
1011101011101101111101 1011101011101101010011 10011
字符串：io98 	Idx(16)：4 	Bit值：1100010110001011110100 - 10000 		Idx(32)：20
1100010110001011000101 1100010110001011110100 10100
字符串：nmhg 	Idx(16)：13 	Bit值：1100111010011011001101 - 0 		Idx(32)：13
1100111010011011111110 1100111010011011001101 1101
字符串：vfg6 	Idx(16)：8 	Bit值：1101110010111101101000 - 0 		Idx(32)：8
1101110010111101011111 1101110010111101101000 1000
字符串：gfrt 	Idx(16)：1 	Bit值：1100000101111101010001 - 10000 		Idx(32)：17
1100000101111101100001 1100000101111101010001 10001
字符串：alpo 	Idx(16)：7 	Bit值：1011011011101101000111 - 0 		Idx(32)：7
1011011011101101101010 1011011011101101000111 111
字符串：vfbh 	Idx(16)：1 	Bit值：1101110010111011000001 - 0 		Idx(32)：1
1101110010111011110110 1101110010111011000001 1
字符串：bnhj 	Idx(16)：0 	Bit值：1011100011011001100000 - 0 		Idx(32)：0
1011100011011001001110 1011100011011001100000 0
字符串：zuio 	Idx(16)：8 	Bit值：1110010011100110011000 - 10000 		Idx(32)：24
1110010011100110100001 1110010011100110011000 11000
字符串：iu8e 	Idx(16)：8 	Bit值：1100010111100101101000 - 0 		Idx(32)：8
1100010111100101011001 1100010111100101101000 1000
字符串：yhjk 	Idx(16)：8 	Bit值：1110001001010010101000 - 0 		Idx(32)：8
1110001001010010010000 1110001001010010101000 1000
字符串：plop 	Idx(16)：9 	Bit值：1101001000110011101001 - 0 		Idx(32)：9
1101001000110011011101 1101001000110011101001 1001
字符串：dd0p 	Idx(16)：14 	Bit值：1011101111001011101110 - 0 		Idx(32)：14
1011101111001011000000 1011101111001011101110 1110
```

**分析**：

- 这里随机使用一些字符串计算他们分别在16位长度和32位长度数组下的索引分配情况，看哪些数据被重新路由到了新的地址。
- 观察出一个非常重要的信息，**原哈希值与扩容新增出来的长度16，进行&运算，如果值等于0，则下标位置不变。如果不为0，那么新的位置则是原来位置上加16**。（这个规律很重要）
- 这样一来，就不需要在重新计算每一个数组中元素的哈希值了。

#### 5.3.2 数据迁移过程

![数据迁移过程](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703214025.png)

上图表示原16位长度数组元素转移的过程，其中黄色区域元素`zuio`因计算结果 `hash & oldCap` 不为1，则被迁移到下标位置24（24由`8+16`得出）。同时还是用重新计算哈希值的方式验证了，确实分配到24的位置，因为这是在二进制计算中补1的过程，所以可以通过上面简化的方式确定哈希值的位置。

## 6. 插入操作分析

### 6.1 HashMap插入流程分析

![HashMap插入流程分析](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703214620.png)

以上就是HashMap中一个数据插入的整体流程，包括了**计算下标、何时扩容、何时链表转红黑树**等问题，具体流程分析如下：

1. 根据key值，通过扰动函数`(key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);`获取新的哈希值。

2. 判断tab是否位空或者长度为0，如果是则进行**初始化（扩容）**操作。

   ```java
   if ((tab = table) == null || (n = tab.length) == 0)
       n = (tab = resize()).length;
   ```

3. 如果哈希值计算的数组下标没有数据，直接插入；如果有数据并且key相等，那么覆盖数据。下标：`tab[i = (n - 1) & hash`。

4. 如果key不相等（hash冲突），判断tab[i]是否为树节点，否则向链表中插入数据，是则向树中插入节点。

5. 如果链表中插入节点的时候，链表长度是否大于等于8。否插入链表;是则执行`treeifyBin(tab, hash);`。

   `treeifyBin`,是一个链表转树的方法，但不是所有的链表长度为8后都会转成树，还需要判断存放key值的数组桶长度是否小于64 `MIN_TREEIFY_CAPACITY`。如果小于则需要扩容，扩容后链表上的数据会被拆分散列的相应的桶节点上，也就把链表长度缩短了。反之则进行链表转红黑树。

6. 最后所有元素处理完成后，判断是否超过阈值`threshold`；超过则扩容。

### 6.2 `put`方法源码分析

```java
public V put(K key, V value) {
    return putVal(hash(key), key, value, false, true);
}

final V putVal(int hash, K key, V value, boolean onlyIfAbsent,
               boolean evict) {
    Node<K,V>[] tab; Node<K,V> p; int n, i;
    // 初始化桶数组 table，table 被延迟到插入新数据时再进行初始化
    if ((tab = table) == null || (n = tab.length) == 0)
        n = (tab = resize()).length;
    // 如果桶中不包含键值对节点引用，则将新键值对节点的引用存入桶中即可
    if ((p = tab[i = (n - 1) & hash]) == null)
        tab[i] = newNode(hash, key, value, null);
    else {
        Node<K,V> e; K k;
        // 如果键的值以及节点 hash 等于链表中的第一个键值对节点时，则将 e 指向该键值对
        if (p.hash == hash &&
            ((k = p.key) == key || (key != null && key.equals(k))))
            e = p;
            
        // 如果桶中的引用类型为 TreeNode，则调用红黑树的插入方法
        else if (p instanceof TreeNode)  
            e = ((TreeNode<K,V>)p).putTreeVal(this, tab, hash, key, value);
        else {
            // 对链表进行遍历，并统计链表长度
            for (int binCount = 0; ; ++binCount) {
                // 链表中不包含要插入的键值对节点时，则将该节点接在链表的最后
                if ((e = p.next) == null) {
                    p.next = newNode(hash, key, value, null);
                    // 如果链表长度大于或等于树化阈值，则进行树化操作
                    if (binCount >= TREEIFY_THRESHOLD - 1) // -1 for 1st
                        treeifyBin(tab, hash);
                    break;
                }
                
                // 条件为 true，表示当前链表包含要插入的键值对，终止遍历
                if (e.hash == hash &&
                    ((k = e.key) == key || (key != null && key.equals(k))))
                    break;
                p = e;
            }
        }
        
        // 判断要插入的键值对是否存在 HashMap 中
        if (e != null) { // existing mapping for key
            V oldValue = e.value;
            // onlyIfAbsent 表示是否仅在 oldValue 为 null 的情况下更新键值对的值
            if (!onlyIfAbsent || oldValue == null)
                e.value = value;
            afterNodeAccess(e);
            return oldValue;
        }
    }
    ++modCount;
    // 键值对数量超过阈值时，则进行扩容
    if (++size > threshold)
        resize();
    afterNodeInsertion(evict);
    return null;
}
```

### 6.3 扩容机制

HashMap是基于数组+链表和红黑树实现的，但用于存放key值得的数组桶的长度是固定的，由初始化决定。

随着数据的插入数量增加以及负载因子的作用下，就需要扩容来存放更多的数据。而扩容中有一个非常重要的点，就是jdk1.8中的优化操作，可以不需要再重新计算每一个元素的哈希值。这一点可参看上文的[扩容元素拆分](#5.3 扩容元素拆分)。

**扩容的代码**：

```java
final Node<K,V>[] resize() {
    Node<K,V>[] oldTab = table;
    int oldCap = (oldTab == null) ? 0 : oldTab.length;
    int oldThr = threshold;
    int newCap, newThr = 0;
    // Cap 是 capacity 的缩写，容量。如果容量不为空，则说明已经初始化。
    if (oldCap > 0) {
        // 如果容量达到最大1 << 30则不再扩容
        if (oldCap >= MAXIMUM_CAPACITY) {
            threshold = Integer.MAX_VALUE;
            return oldTab;
        }
        
        // 按旧容量和阀值的2倍计算新容量和阀值
        else if ((newCap = oldCap << 1) < MAXIMUM_CAPACITY &&
                 oldCap >= DEFAULT_INITIAL_CAPACITY)
            newThr = oldThr << 1; // double threshold
    }
    else if (oldThr > 0) // initial capacity was placed in threshold
    
        // initial capacity was placed in threshold 翻译过来的意思，如下；
        // 初始化时，将 threshold 的值赋值给 newCap，
        // HashMap 使用 threshold 变量暂时保存 initialCapacity 参数的值
        newCap = oldThr;
    else {               // zero initial threshold signifies using defaults
        // 这一部分也是，源代码中也有相应的英文注释
        // 调用无参构造方法时，数组桶数组容量为默认容量 1 << 4; aka 16
        // 阀值；是默认容量与负载因子的乘积，0.75
        newCap = DEFAULT_INITIAL_CAPACITY;
        newThr = (int)(DEFAULT_LOAD_FACTOR * DEFAULT_INITIAL_CAPACITY);
    }
    
    // newThr为0，则使用阀值公式计算容量
    if (newThr == 0) {
        float ft = (float)newCap * loadFactor;
        newThr = (newCap < MAXIMUM_CAPACITY && ft < (float)MAXIMUM_CAPACITY
                  (int)ft : Integer.MAX_VALUE);
    }
    threshold = newThr;
    
    @SuppressWarnings({"rawtypes","unchecked"})
        // 初始化数组桶，用于存放key
        Node<K,V>[] newTab = (Node<K,V>[])new Node[newCap];
    table = newTab;
    if (oldTab != null) {
        // 如果旧数组桶，oldCap有值，则遍历将键值映射到新数组桶中
        for (int j = 0; j < oldCap; ++j) {
            Node<K,V> e;
            if ((e = oldTab[j]) != null) {
                oldTab[j] = null;
                if (e.next == null)
                    newTab[e.hash & (newCap - 1)] = e;
                else if (e instanceof TreeNode)
                    // 这里split，是红黑树拆分操作。在重新映射时操作的。
                    ((TreeNode<K,V>)e).split(this, newTab, j, oldCap);
                else { // preserve order
                    Node<K,V> loHead = null, loTail = null;
                    Node<K,V> hiHead = null, hiTail = null;
                    Node<K,V> next;
                    // 这里是链表，如果当前是按照链表存放的，则将链表节点按原顺序进行分组{这里有专门的文章介绍，如何不需要重新计算哈希值进行拆分《HashMap核心知识，扰动函数、负载因子、扩容链表拆分，深度学习》}
                    do {
                        next = e.next;
                        if ((e.hash & oldCap) == 0) {
                            if (loTail == null)
                                loHead = e;
                            else
                                loTail.next = e;
                            loTail = e;
                        }
                        else {
                            if (hiTail == null)
                                hiHead = e;
                            else
                                hiTail.next = e;
                            hiTail = e;
                        }
                    } while ((e = next) != null);
                    
                    // 将分组后的链表映射到桶中
                    if (loTail != null) {
                        loTail.next = null;
                        newTab[j] = loHead;
                    }
                    if (hiTail != null) {
                        hiTail.next = null;
                        newTab[j + oldCap] = hiHead;
                    }
                }
            }
        }
    }
    return newTab;
}
```

**分析**：

1. 扩容时计算出新的newCap、newThr，这是两个单词的缩写，一个是Capacity ，另一个是阀Threshold
2. newCap用于创新的数组桶 `new Node[newCap];`
3. 随着扩容后，原来那些因为哈希碰撞，存放成链表和红黑树的元素，都需要进行拆分存放到新的位置中。

### 6.4 链表转红黑树

#### 6.4.1 为什么使用8为链表转红黑树的阈值？

HashMap这种散列表的数据结构，最大的性能在于可以O(1)时间复杂度定位到元素，但因为哈希碰撞不得已在一个下标里存放多组数据，那么jdk1.8之前的设计只是采用链表的方式进行存放，如果需要从链表中定位到数据时间复杂度就是O(n)，链表越长性能越差。

因为在jdk1.8中把过长的链表也就是8个，优化为自平衡的红黑树结构，以此让定位元素的时间复杂度优化近似于O(logn)，这样来提升元素查找的效率。但也不是完全抛弃链表，因为在元素相对不多的情况下，链表的插入速度更快，所以综合考虑下设定阈值为8才进行红黑树转换操作。

#### 6.4.2 链表转红黑树的过程

![链表转红黑树的过程](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703221222.png)

链表到底怎么转换成红黑树，以及具体代码的实现分析，在后续的文章中更新。

#### 6.4.3 HashMap链表树化源码

```java
final void treeifyBin(Node<K,V>[] tab, int hash) {
    int n, index; Node<K,V> e;
    // 这块就是我们上面提到的，不一定树化还可能只是扩容。主要桶数组容量是否小于64 MIN_TREEIFY_CAPACITY 
    if (tab == null || (n = tab.length) < MIN_TREEIFY_CAPACITY)
        resize();
    else if ((e = tab[index = (n - 1) & hash]) != null) {
    	// 又是单词缩写；hd = head (头部)，tl = tile (结尾)
        TreeNode<K,V> hd = null, tl = null;
        do {
            // 将普通节点转换为树节点，但此时还不是红黑树，也就是说还不一定平衡
            TreeNode<K,V> p = replacementTreeNode(e, null);
            if (tl == null)
                hd = p;
            else {
                p.prev = tl;
                tl.next = p;
            }
            tl = p;
        } while ((e = e.next) != null);
        if ((tab[index] = hd) != null)
            // 转红黑树操作，这里需要循环比较，染色、旋转。关于红黑树，在下一章节详细讲解
            hd.treeify(tab);
    }
}
```

这一部分链表树化的操作因为封装的原因并不复杂，复杂点在于下一层的红黑树转换上。

**分析**：

1. 链表树化的条件有两点；链表长度大于等于8、桶容量大于64，否则只是扩容，不会树化。
2. 链表树化的过程中是先由链表转换为树节点，此时的树可能不是一颗平衡树。同时在树转换过程中会记录链表的顺序，`tl.next = p`，这主要方便后续树转链表和拆分更方便。
3. 链表转换成树完成后，在进行红黑树的转换。

### 6.5 红黑树转链表

在链表转换树的过程中，记录了原有链表的顺序。那么，在红黑树转链表时候，直接把TreeNode转换为Node即可，源码如下：

```java
final Node<K,V> untreeify(HashMap<K,V> map) {
    Node<K,V> hd = null, tl = null;
    // 遍历TreeNode
    for (Node<K,V> q = this; q != null; q = q.next) {
    	// TreeNode替换Node
        Node<K,V> p = map.replacementNode(q, null);
        if (tl == null)
            hd = p;
        else
            tl.next = p;
        tl = p;
    }
    return hd;
}

// 替换方法
Node<K,V> replacementNode(Node<K,V> p, Node<K,V> next) {
    return new Node<>(p.hash, p.key, p.value, next);
}
```

因为记录了链表关系，所以替换过程很容易。所以好的数据结构可以让操作变得更加容易。

## 7. 查找操作分析

### 7.1 查找操作流程

<img src="images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703221824.png" alt="查找操作流程图" style="zoom:80%;" />

### 7.2 代码分析

```java
public V get(Object key) {
    Node<K,V> e;
    // 同样需要经过扰动函数计算哈希值
    return (e = getNode(hash(key), key)) == null ? null : e.value;
}

final Node<K,V> getNode(int hash, Object key) {
    Node<K,V>[] tab; Node<K,V> first, e; int n; K k;
    // 判断桶数组的是否为空和长度值
    if ((tab = table) != null && (n = tab.length) > 0 &&
        // 计算下标，哈希值与数组长度-1
        (first = tab[(n - 1) & hash]) != null) {
        if (first.hash == hash && // always check first node
            ((k = first.key) == key || (key != null && key.equals(k))))
            return first;
        if ((e = first.next) != null) {
            // TreeNode 节点直接调用红黑树的查找方法，时间复杂度O(logn)
            if (first instanceof TreeNode)
                return ((TreeNode<K,V>)first).getTreeNode(hash, key);
            // 如果是链表就依次遍历查找
            do {
                if (e.hash == hash &&
                    ((k = e.key) == key || (key != null && key.equals(k))))
                    return e;
            } while ((e = e.next) != null);
        }
    }
    return null;
}
```

**分析**：

1. 扰动函数的使用，获取新的哈希值，这在上一章节已经讲过
2. 下标的计算，同样也介绍过 `tab[(n - 1) & hash]) `
3. 确定了桶数组下标位置，接下来就是对红黑树和链表进行查找和遍历操作了

## 8. 删除操作分析

```java
 public V remove(Object key) {
     Node<K,V> e;
     return (e = removeNode(hash(key), key, null, false, true)) == null ?
         null : e.value;
 }
 
final Node<K,V> removeNode(int hash, Object key, Object value,
                           boolean matchValue, boolean movable) {
    Node<K,V>[] tab; Node<K,V> p; int n, index;
    // 定位桶数组中的下标位置，index = (n - 1) & hash
    if ((tab = table) != null && (n = tab.length) > 0 &&
        (p = tab[index = (n - 1) & hash]) != null) {
        Node<K,V> node = null, e; K k; V v;
        // 如果键的值与链表第一个节点相等，则将 node 指向该节点
        if (p.hash == hash &&
            ((k = p.key) == key || (key != null && key.equals(k))))
            node = p;
        else if ((e = p.next) != null) {
            // 树节点，调用红黑树的查找方法，定位节点。
            if (p instanceof TreeNode)
                node = ((TreeNode<K,V>)p).getTreeNode(hash, key);
            else {
                // 遍历链表，找到待删除节点
                do {
                    if (e.hash == hash &&
                        ((k = e.key) == key ||
                         (key != null && key.equals(k)))) {
                        node = e;
                        break;
                    }
                    p = e;
                } while ((e = e.next) != null);
            }
        }
        
        // 删除节点，以及红黑树需要修复，因为删除后会破坏平衡性。链表的删除更加简单。
        if (node != null && (!matchValue || (v = node.value) == value ||
                             (value != null && value.equals(v)))) {
            if (node instanceof TreeNode)
                ((TreeNode<K,V>)node).removeTreeNode(this, tab, movable);
            else if (node == p)
                tab[index] = node.next;
            else
                p.next = node.next;
            ++modCount;
            --size;
            afterNodeRemoval(node);
            return node;
        }
    }
    return null;
} 
```

**分析**：

- 删除的操作比较简单，没有太多的复杂的逻辑。
- 红黑树的操作因为被包装了，使用上也是很容易。

## 9. 遍历操作分析

### 9.1 遍历操作的无序性

HashMap中的遍历也是非常常用的API方法，包括；

**KeySet**

```java
 for (String key : map.keySet()) {
     System.out.print(key + " ");
 }
```

**EntrySet**

```java
 for (HashMap.Entry entry : map.entrySet()) {
     System.out.print(entry + " ");
 }
```

从方法上以及日常使用都知道，KeySet是遍历是无序的，但每次使用不同方式遍历包括`keys.iterator()`，它们遍历的结果是固定的。

那么从实现的角度来看，这些种遍历都是从散列表中的链表和红黑树获取集合值，那么他们有一个什么固定的规律吗？

### 9.2 代码测试

测试的场景和前提；

1. 这里我们要设定一个既有红黑树又有链表结构的数据场景
2. 为了可以有这样的数据结构，我们最好把HashMap的初始长度设定为64，避免在链表超过8位后扩容，而是直接让其转换为红黑树。
3. 找到18个元素，分别放在不同节点(这些数据通过程序计算得来)；
   1. 桶数组02节点：24、46、68
   2. 桶数组07节点：29
   3. 桶数组12节点：150、172、194、271、293、370、392、491、590

**代码测试**

```java
@Test
public void test_Iterator() {
    Map<String, String> map = new HashMap<String, String>(64);
    map.put("24", "Idx：2");
    map.put("46", "Idx：2");
    map.put("68", "Idx：2");
    map.put("29", "Idx：7");
    map.put("150", "Idx：12");
    map.put("172", "Idx：12");
    map.put("194", "Idx：12");
    map.put("271", "Idx：12");
    System.out.println("排序01：");
    for (String key : map.keySet()) {
        System.out.print(key + " ");
    }
    
    map.put("293", "Idx：12");
    map.put("370", "Idx：12");
    map.put("392", "Idx：12");
    map.put("491", "Idx：12");
    map.put("590", "Idx：12");
    System.out.println("\n\n排序02：");
    for (String key : map.keySet()) {
        System.out.print(key + " ");
    }    
    
    map.remove("293");
    map.remove("370");
    map.remove("392");
    map.remove("491");
    map.remove("590");
    System.out.println("\n\n排序03：");
    for (String key : map.keySet()) {
        System.out.print(key + " ");
    }
    
}
```

这段代码分别测试了三种场景，如下；

1. 添加元素，在HashMap还是只链表结构时，输出测试结果01
2. 添加元素，在HashMap转换为红黑树时候，输出测试结果02
3. 删除元素，在HashMap转换为链表结构时，输出测试结果03

```java
排序01：
24 46 68 29 150 172 194 271 

排序02：
24 46 68 29 271 150 172 194 293 370 392 491 590 

排序03：
24 46 68 29 172 271 150 194 
```

从map.keySet()测试结果可以看到，如下信息：

**01情况下，排序定位哈希值下标和链表信息**

![只是链表结构时的遍历信息](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703225247.png)

**02情况下，因为链表转换为红黑树，树根会移动到数组头部。`moveRootToFront()方法`**

![链表转红黑树的遍历信息](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703225254.png)

**03情况下，因为删除了部分元素，红黑树退化成链表**

![红黑树转链表后的遍历信息](images/HashMap%E4%B8%8EConcurrentHashMap%E5%BA%95%E5%B1%82%E5%8E%9F%E7%90%86/20210703225307.png)


