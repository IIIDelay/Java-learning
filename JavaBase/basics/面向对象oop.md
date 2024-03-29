# 面向对象简介

### 何为"面向对象"的编程思想？

#### 1.何为"思想"和"编程思想"？

先问你个问题：你想做个怎样的人？
可能你会回答：我想做个好人， 孝敬父母， 尊重长辈， 关爱亲朋……你看， 这就是思想。 这是你做人的思想， 或者说， 是你做人的原则。做人有做人的原则， 编程也有编程的原则。 这些编程的原则呢， 就是编程思想。

#### 2.面向过程(POP) 与 面向对象(OOP)

二者都是一种思想，面向对象是相对于面向过程而言的。

> 面向过程， 强调的是功能行为，以函数为最小单位，考虑怎么做。

> 面向对象，将功能封装进对象， 强调具备了功能的对象，以类/对象为最小单位，考虑谁来做。面向对象更加强调运用人类在日常的思维逻辑中采用的思想方法与原则，如抽象、分类、继承、聚合、多态等。

*面向对象： Object Oriented Programming*
*面向过程： Procedure Oriented Programming*

#### 3.面向对象与面向过程的实例

##### 面向过程

```
1.打开冰箱
2.把大象装进冰箱
3.把冰箱门关住
```

##### 面向对象

```java
人{
    打开(冰箱) {
    	冰箱.开门();
    }
    操作(大象){
    	大象.进入(冰箱);
    }
    关闭(冰箱){
    	冰箱.关门();
    }
}
冰箱{
    开门(){ }
    关门(){ }
}
大象{
	进入(冰箱){ }
}
```

#### 面向对象的思想概述

- 程序员从面向过程的执行者转化成了面向对象的指挥者
- 面向对象分析方法分析问题的思路和步骤：
  - 根据问题需要，选择问题所针对的现实世界中的实体。
  - 从实体中寻找解决问题相关的属性和功能，这些属性和功能就形成了概念世界中的类。
  - 把抽象的实体用计算机语言进行描述， 形成计算机世界中类的定义。即借助某种程序语言，把类构造成计算机能够识别和处理的数据结构。
  - 将类实例化成计算机世界中的对象。对象是计算机世界中解决问题的最终工具。

### 面向对象的两个要素

1. 面向对象程序设计的重点是类的设计
2. 设计类，就是设计类的成员。

# Java语言基本元素

## 类和对象

### 概念

1. 类(Class)和对象(Object)是面向对象的核心概念。

   >  类是对一类事物的描述，是抽象的、概念上的定义

   > 对象是实际存在的该类事物的每个个体，因而也称为实例(instance)。

2. "万事万物皆对象"

***Field = 属性 = 成员变量***

**Method = (成员)方法 = 函数**

**创建类的对象 = 类的实例化 = 实例化类**

### 类

现实世界的生物体，大到鲸鱼，小到蚂蚁，都是由最基本的细胞构成的。同理， Java代码世界是由诸多个不同功能的类构成的。
现实生物世界中的细胞又是由什么构成的呢？细胞核、细胞质、 … 那么，Java中用类class来描述事物也是如此。常见的类的成员有：

- 属 性：对应类中的成员变量
- 行 为：对应类中的成员方法 

####  图示属性和行为



![image-20200530090218610](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214351.png)

<img src="images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214358.png" alt="image-20200530090311379" style="zoom: 80%;" />

#### 图示类成员的构成(完成版)

<img src="images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214401.png" alt="image-20200530090359501" style="zoom:80%;" />

#### 类的语法格式

```java
修饰符 class 类名 {
    属性声明;
    方法声明;
}
```

说明： 修饰符public：类可以被任意访问
类的正文要用{ }括起来

举例：

```java
public class Person{
	private int age ; //声明私有变量 age
	public void showAge(int i) { //声明方法showAge( )
		age = i;
	}
}
```

##### 如何创建Java自定义类

1. 定义类(考虑修饰符、类名)

2. 编写类的属性(考虑修饰符、属性类型、属性名、 初始化值)
3. 编写类的方法(考虑修饰符、返回值类型、方法名、形参等)

### 对象

#### 对象的创建和使用

###### 创建

`类名 对象名 = new 类名();`

###### 使用

访问对象成员(包括属性和方法)

`对象名.对象成员`

###### 注意

**如果创建了一个类的多个对象，则每个对象都独立的拥有一套类的属性。(非static的)**

 *   **意味着：如果我们修改一个对象的属性a，则不影响另外一个对象属性a的值。**

#### 对象的内存解析

##### 对象的产生

`Person p1=new Person();`

![image-20200530092828063](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214405.png)

##### 对象的生命周期

类对象的赋值相当于赋值的是引用(保存对象的地址) 

`Person p1=new Person(); Person p2=p1;`

![image-20200530092608439](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214407.png)

![image-20200530092627491](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214410.png)

![image-20200530092647654](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214412.png)



##### 内存解析

![image-20200530093107826](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214415.png)

###### 内存解析相关概念

> 堆(Heap) ， 此内存区域的唯一目的就是存放对象实例， 几乎所有的对象实例都在这里分配内存。 这一点在Java虚拟机规范中的描述是：所有的对象实例以及数组都要在堆上分配。

> 通常所说的栈(Stack) ， 是指虚拟机栈。 虚拟机栈用于存储局部变量等。局部变量表存放了编译期可知长度的各种基本数据类型(boolean、 byte、char 、 short 、 int 、 float 、 long 、double) 、 对象引用(reference类型，它不等同于对象本身， 是对象在堆内存的首地址) 。 方法执行完， 自动释放。

> 方法区(Method Area) ， 用于存储已被虚拟机加载的类信息、 常量、 静态变量、 即时编译器编译后的代码等数据。

###### 内存解析实例

<img src="images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214419.png" alt="image-20200530093413762" style="zoom: 67%;" />

#### 匿名对象

> 不定义对象的句柄，而直接调用这个对象的方法。这样的对象叫做匿名对象。

例如:

`new Person().shout();`

##### 什么情况下使用匿名对象?

1. 如果对一个对象只需要进行一次方法调用，那么就可以使用匿名对象。
2. 我们经常将匿名对象作为实参传递给一个方法调用。

## 类的成员

### 属性(变量)

#### 语法格式

`修饰符 数据类型 属性名 = 初始化值 ;`

##### 说明1:修饰符

1. 常用的权限修饰符有： private、缺省、 protected、 public

2. 其他修饰符： static、 final (暂不考虑)

##### 说明2：数据类型

 任何基本数据类型(如int、 Boolean) 或 任何引用数据类型。

##### 说明3：属性名

 属于标识符，符合命名规则和规范即可

#### 变量的分类

> 成员变量:在方法体外，类体内声明的变量称为成员变量。

> 局部变量:在方法体内部声明的变量称为局部变量。

##### 图示变量的分类

![image-20200530094530421](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214422.png)

#### 成员变量(属性)和局部变量的区别？

|              | 成员变量                            | 局部变量                                 |
| ------------ | ----------------------------------- | ---------------------------------------- |
| 声明的位置   | 直接声明在类中                      | 方法形参或内部、代码块内、构造器内等     |
| 修饰符       | private、 public、 static、 final等 | 不能用权限修饰符修饰，可以用final修饰    |
| 初始化值     | 有默认初始化值                      | 没有默认初始化值，必须显式赋值，方可使用 |
| 内存加载位置 | 堆空间 或 静态域内 栈               | 栈空间                                   |

###### 解析

1.相同点：

​	1.1  定义变量的格式：`数据类型  变量名 = 变量值`

​	1.2 先声明，后使用

​	1.3 变量都有其对应的作用域 

2.不同点：

​	2.1 在类中声明的位置的不同

- 成员变量：直接定义在类的一对{}内

- 局部变量：声明在方法内、方法形参、代码块内、构造器形参、构造器内部的变量

​	2.2 关于权限修饰符的不同

- 成员变量：可以在声明属性时，指明其权限，使用权限修饰符。

- 常用的权限修饰符：private、public、缺省、protected  --->封装性

- 目前，大家声明属性时，都使用缺省就可以了。

- 局部变量：不可以使用权限修饰符。

​	2.3 默认初始化值的情况：

- 成员变量：类的属性，根据其类型，都有默认初始化值。\- [默认初始化赋值表](#变量的默认初始化赋值)

- 局部变量：没有默认初始化值。意味着，我们在调用局部变量之前，一定要显式赋值。

- 特别地：形参在调用时，我们赋值即可。

2.4 在内存中加载的位置：

- 成员变量：加载到堆空间中   (非static)

- 局部变量：加载到栈空间

#### 变量的默认初始化赋值

当一个对象被创建时，会对其中各种类型的成员变量自动进行初始化赋值。除了
基本数据类型之外的变量类型都是引用类型，如上面的Person及前面讲过的数组。

| 成员变量类型 | 初始值                      |
| ------------ | --------------------------- |
| byte         | 0                           |
| short        | 0                           |
| int          | 0                           |
| long         | 0L                          |
| float        | 0.0F                        |
| double       | 0.0                         |
| char         | 0 或写为:’\u0000’(表现为空) |
| boolean      | false                       |
| 引用类型     | null                        |

#### 属性赋值的先后顺序

① 默认初始化

② 显式初始化

③ 构造器中初始化

④ 通过"对象.方法" 或 "对象.属性"的方式，赋值

⑤在代码块中赋值

**以上操作的先后顺序：① - ②/⑤(根据先后顺序判断) - ③ - ④**

###  方法

#### 什么是方法(method、函数)

1. 方法是类或对象行为特征的抽象，用来完成某个功能操作(**描述类应该具有的功能**)。在某些语言中也称为函数或过程。
2. 将功能封装为方法的目的是，可以实现代码重用，简化代码
3. Java里的方法不能独立存在，所有的方法必须定义在类里。 

#### 方法的声明格式

```
修饰符 返回值类型 方法名(参数类型 形参1, 参数类型 形参2, ….)｛
	方法体程序代码
	return 返回值;
｝
```

###### 注意:

1. 修饰符： public,缺省,private, protected等
2. 返回值类型：

- 没有返回值： void。
- 有返回值，声明出返回值的类型。与方法体中"return 返回值" 搭配使用

3. 方法名：属于标识符，命名时遵循标识符命名规则和规范，"见名知意"
   形参列表：可以包含零个，一个或多个参数。多个参数时，中间用","隔开
   返回值：方法在执行完毕后返还给调用它的程序的数据。

4. 方法中，不可以定义方法。

5. 特殊的：方法A中又调用了方法A:递归方法。

   

##### return关键字的使用：

使用范围：使用在方法体中

作用：① 结束方法

② 针对于有返回值类型的方法，使用"return 数据"方法返回所要的数据。

注意点：return关键字后面不可以声明执行语句。



##### 如何理解方法返回值类型为void的情况 ?

返回值类型： 有返回值  vs 没有返回值

 * 如果方法有返回值，则必须在方法声明时，指定返回值的类型。同时，方法中，需要使用return关键字来返回指定类型的变量或常量："return 数据"。

 * 如果方法没有返回值，则方法声明时，使用void来表示。通常，没有返回值的方法中，就不需要使用return.但是，如果使用的话，只能"return;"表示结束此方法的意思。

   

#### 方法的分类

| 分类   | 有返回值                       | 无返回值                        |
| ------ | ------------------------------ | ------------------------------- |
| 无形参 | void 方法名(){}                | 返回值的类型 方法名(){}         |
| 有形参 | 有形参 void 方法名(形参列表){} | 返回值的类型 方法名(形参列表){} |



#### 方法的调用

 方法通过方法名被调用，且只有被调用才会执行。

#####  方法调用的过程分析

![image-20200530102622482](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214429.png)

##### 注意事项

1. 方法被调用一次，就会执行一次
2. 没有具体返回值的情况，返回值类型用关键字void表示，那么方法体中可以不必使用return语句。如果使用，仅用来结束方法。
3. 定义方法时，方法的结果应该返回给调用者，交由调用者处理。
4. 方法中只能调用方法或属性， 不可以在方法内部定义方法。



#### 方法的重载

##### 概念

> 重载:在同一个类中，允许存在一个以上的同名方法，只要它们的参数个数或者参数类型不同即可。

##### 特点

与返回值类型无关，只看参数列表，且参数列表必须不同。 (参数个数或参数类型)。调用时，根据方法参数列表的不同来区别。

###### "两同一不同":

- 同一个类、相同方法名

 *            参数列表不同：参数个数不同，参数类型不同

##### 示例

```java
//返回两个整数的和
int add(int x,int y){return x+y;}
//返回三个整数的和
int add(int x,int y,int z){return x+y+z;}
//返回两个小数的和
double add(double x,double y){return x+y;}
```

##### 判断是否为重载

跟方法的权限修饰符、返回值类型、形参变量名、方法体都没有关系！



#### 方法的重写

主要用于继承。[继承](#继承性)

> 在子类中可以根据需要对从父类中继承来的方法进行改造， 也称为方法的重置、覆盖。在程序执行时，子类的方法将覆盖父类的方法。

##### 要求：

1. 子类重写的方法必须和父类被重写的方法具有相同的方法名称、 参数列表

2. 返回值类型：

   - 父类被重写的方法的返回值类型是void，则子类重写的方法的返回值类型只能是void

   - 父类被重写的方法的返回值类型是A类型，则子类重写的方法的返回值类型可以是A类或A类的子类

   - 父类被重写的方法的返回值类型是基本数据类型(比如：double)，则子类重写的方法的返回值类型必须是相同的基本数据类型(必须也是double)
3. 子类重写的方法使用的访问权限不能小于父类被重写的方法的访问权限

  - 子类不能重写父类中声明为private权限的方法

4. 子类方法抛出的异常不能大于父类被重写方法的异常

#####  注意：

子类与父类中同名同参数的方法必须同时声明为`非static`的(即为重写)，或者同时声明为`static`的(不是重写) 。因为static方法是属于类的，子类无法覆盖父类的方法。

##### 示例

```java
public class Person { 
    public String name; 
    public int age;
    
    public String getInfo() {
    	return "Name: "+ name + "\n" +"age: "+ age;
    }
}

public class Student extends Person {
	public String school;
    
    public String getInfo() { //重写方法
        return "Name: "+ name + "\nage: "+ age + "\nschool: "+ school;
    }
    public static void main(String args[]){
        Student s1=new Student();
        s1.name="Bob";
        s1.age=20;
        s1.school="school2";
        System.out.println(s1.getInfo()); //Name:Bob age:20 school:school2
    }
}
```

###### 分析

```java
Person p1=new Person();
//调用Person类的getInfo()方法
p1.getInfo();
Student s1=new Student();
//调用Student类的getInfo()方法
s1.getInfo();
```

**这是一种"多态性"：同名的方法，用不同的对象来区分调用的是哪一个方法。**



#### 再谈方法的重载与重写

详情见多态性的方法的重载与重写  [方法的重载与重写与多态性(方法的重载是多态性的一种体现？NO)](#方法的重载与重写与多态性(方法的重载是多态性的一种体现？NO))

#### 方法中可变个数的形参

JavaSE 5.0 中提供了Varargs(variable number of arguments)机制，允许直接定义能和多个实参相匹配的形参。从而，可以用一种更简单的方式，来传递个数可变的实参。

```java
//JDK 5.0以前： 采用数组形参来定义方法，传入多个同一类型变量
public static void test(int a ,String[] books);

//JDK 5.0开始： 采用可变个数形参来定义方法，传入多个同一类型变量
public static void test(int a ,String…books);
```

##### 注意事项

1.  声明格式： **方法名(参数的类型名 ...参数名)**

2.  可变参数：方法参数部分指定类型的参数个数是可变多个： 0个， 1个或多个

3.  可变个数形参的方法与同名的方法之间，彼此构成重载

4.  可变参数方法的使用与方法参数部分使用数组是一致的

5.  方法的参数部分有可变形参，需要放在形参声明的最后

6.  在一个方法的形参位置，最多只能声明一个可变个数形参

   

#### 方法参数的值传递机制

> 形参：方法定义时，声明的小括号内的参数

> 实参： 方法调用时，实际传递给形参的数据

##### Java的实参值如何传入方法呢？

Java里方法的参数传递方式只有一种： 值传递。 即将实际参数值的副本(复制品)传入方法内，而参数本身不受影响。

- 形参是基本数据类型：将实参基本数据类型变量的"数据值"传递给形参
- 形参是引用数据类型：将实参引用数据类型变量的"地址值"传递给形参

##### 参数传递解析

###### 基本数据类型的参数传递

**形参不会修改堆空间实参的具体值,因为形参此时存储的是实参的数据值**

```java
public static void main(String[] args) {
    int x = 5;
    System.out.println("修改之前x = " + x);// 5
    // x是实参
    change(x);
    System.out.println("修改之后x = " + x);// 5
}

public static void change(int x) {
    System.out.println("change:修改之前x = " + x);//5
    x = 3;
    System.out.println("change:修改之后x = " + x);//3
}
```

![image-20200530105739133](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214435.png)

###### 引用数据类型的参数传递

**形参会修改堆空间实参的具体值,因为形参此时存储的是实参的地址引用.**

```java
public static void main(String[] args) {
    Person obj = new Person();
    obj.age = 5;
    System.out.println("修改之前age = " + obj.age);// 5
    // x是实参
    change(obj);
    System.out.println("修改之后age = " + obj.age);// 3
}

public static void change(Person obj) {
    System.out.println("change:修改之前age = " + obj.age);//5
    obj.age = 3;
    System.out.println("change:修改之后age = " + obj.age);//3
}

//其中Person类定义为：
class Person{
	int age;
}
```

##### 递归方法

>  递归方法：一个方法体内调用它自身。

- 方法递归包含了一种隐式的循环，它会重复执行某段代码，但这种重复执行无须循环控制。
- 递归一定要向已知方向递归，否则这种递归就变成了无穷递归，类似于死循环。

```java
//计算1-100之间所有自然数的和
public int sum(int num){
    if(num == 1){
    	return 1;
    }else{
    	return num + sum(num - 1);
    }
}
```

#### main方法

##### main方法的特点

1. main()方法作为程序的入口

2. main()方法也是一个普通的静态方法

3. main()方法可以作为我们与控制台交互的方式。(之前：使用Scanner)

   ###### 命令行参数用法举例

   ```java
   public class CommandPara {
       public static void main(String[] args) {
           for (int i = 0; i < args.length; i++) {
           	System.out.println("args[" + i + "] = " + args[i]);
           }
       }
   }
   ```

   //运行程序CommandPara.java
   `java CommandPara "Tom" "Jerry" "Shkstart"`

   输出结果：

   输出结果：

   ```
   args[0] = Tom
   args[1] = Jerry
   args[2] = Shkstart
   ```

   

##### 理解main方法的语法

1. **由于Java虚拟机需要调用类的main()方法，所以该方法的访问权限必须是public。又因为Java虚拟机在执行main()方法时不必创建对象，所以该方法必须是static的，该方法接收一个String类型的数组参数，该数组中保存执行Java命令时传递给所运行的类的参数。**
2. 因为main() 方法是静态的，我们不能直接访问该类中的非静态成员，必须创建该类的一个实例对象后，才能通过这个对象去访问类中的非静态成员。



### 构造器(构造方法)

##### 构造器的特征

1. 它具有与类相同的名称
2. 它不声明返回值类型。(与声明为void不同)
3. 不能被static、 final、 synchronized、 abstract、 native修饰，不能有return语句返回值

##### 构造器的作用

**1. 创建对象；**

**2. 初始化对象的信息**

如： `Order o = new Order(); Person p = new Person("Peter",15);`
如同我们规定每个"人"一出生就必须先洗澡，我们就可以在"人" 的构造器中加入完成"洗澡"的程序代码，于是每个"人"一出生就会自动完成"洗澡"，程序就不必再在每个人刚出生时一个一个地告诉他们要"洗澡"了。

##### 语法格式

```java
修饰符 类名 (参数列表) {
	初始化语句；
}
```

##### 构造器的分类

根据参数不同，构造器可以分为如下两类：

- 隐式无参构造器(系统默认提供)
- 显式定义一个或多个构造器(无参、有参)

##### 构造器的注意事项

1. Java语言中，每个类都至少有一个构造器
2. 默认构造器的修饰符与所属类的修饰符一致
3. 一旦显式定义了构造器， 则系统不再提供默认构造器
4. 一个类可以创建多个重载的构造器
5. 父类的构造器不可被子类继承
6. 一个类中，至少会有一个构造器。

##### 构造器重载

构造器重载，参数列表必须不同

构造器重载使得对象的创建更加灵活，方便创建各种不同的对象

构造器重载举例：

```java
public class Person{
    public Person(String name, int age, Date d) {this(name,age);…}
    public Person(String name, int age) {…}
    public Person(String name, Date d) {…}
    public Person(){…}
}
```



### 代码块

##### 代码块的作用

用来初始化类、对象

##### 代码块的分类

**代码块如果有修饰的话，只能使用static.**

>  一个类中代码块若有修饰符， 则只能被static修饰， 称为静态代码块(static block)， 没有使用static修饰的， 为非静态代码块。

##### 静态代码块  vs 非静态代码块

###### 静态代码块：用static 修饰的代码块

1. 内部可以有输出语句。
2. 可以对类的属性、类的声明进行初始化操作。
3. 不可以对非静态的属性初始化。即：**不可以调用非静态的属性和方法**。
4. 若有多个静态的代码块，那么按照**从上到下的顺序依次执行**。
5. **静态代码块的执行要先于非静态代码块**。
6. 静态代码块**随着类的加载而加载，且只执行一次**。
7. 作用：初始化类的信息

######  非静态代码块：没有static修饰的代码块

1. 内部可以有输出语句。
2. 可以对类的属性、 类的声明进行初始化操作。
3. 非静态代码块内可以调用静态的属性、静态的方法，或非静态的属性、非静态的方法
4. 若有多个非静态的代码块， 那么按照**从上到下的顺序依次执行**。
5. 每次创建对象的时候， 都会执行一次(**随着对象的创建而执行**)。 且**先于构造器执行**。
6. 作用：可以在创建对象时，对对象的属性等进行初始化



#### 使用示例

```java
public class BlockTest {
   public static void main(String[] args) {
      
      String desc = Person.desc;
      System.out.println(desc);
      
      Person p1 = new Person();
      Person p2 = new Person();
      System.out.println(p1.age);
      
      Person.info();
   }
}


class Person{
   //属性
   String name;
   
   int age;

   static String desc = "我是一个人";
   
   //构造器
   public Person(){}
    
   public Person(String name,int age){
      this.name = name;
      this.age = age;
   }
   
   //非static的代码块
   {
      System.out.println("hello, block - 2");
   }
   {
      System.out.println("hello, block - 1");
      //调用非静态结构
      age = 1;
      eat();
      //调用静态结构
      desc = "我是一个爱学习的人1";
      info();
   }
   //static的代码块
   static{
      System.out.println("hello,static block-2");
   }
   static{
      System.out.println("hello,static block-1");
      //调用静态结构
      desc = "我是一个爱学习的人";
      info();
      //不可以调用非静态结构
//    eat();
//    name = "Tom";
   }
   
   //方法
   public void eat(){
      System.out.println("吃饭");
   }
   @Override
   public String toString() {
      return "Person [name=" + name + ", age=" + age + "]";
   }
   public static void info(){
      System.out.println("我是一个快乐的人！");
   }
   
}
```



### 内部类

> 在Java中，允许一个类的定义位于另一个类的内部，前者称为内部类，后者称为外部类。

#### 什么情况下使用内部类？

当一个事物的内部，还有一个部分需要一个完整的结构进行描述，而这个内部的完整的结构又只为外部事物提供服务，那么整个内部的完整结构最好使用内部类。

#### 内部类分类

##### 成员内部类(静态、非静态)  

一方面，作为外部类的成员：

 * 			调用外部类的结构
 * 			可以被static修饰， 但此时就不能再使用外层类的非static的成员变量
 * 			可以被4种不同的权限修饰

另一方面，作为一个类：

 * 			类内可以定义属性、方法、构造器等
 * 			可以被final修饰，表示此类不能被继承。言外之意，不使用final，就可以被继承
* 			可以被abstract修饰，因此可以被其它的内部类继承

- 编译以后生成OuterClass$InnerClass.class字节码文件(也适用于局部内部类)

##### 局部内部类(方法内、代码块内、构造器内)

###### 如何声明内部类？

```java
class 外部类{
    //方法中使用局部内部类
    方法(){
        class 局部内部类{
        }
    } 
    //代码块中使用局部内部类
    {
        class 局部内部类{
        }
    }
}
```

###### 如何使用局部内部类

1. 只能在声明它的方法或代码块中使用，而且是先声明后使用。除此之外的任何地方都不能使用该类

2. 但是它的对象可以通过外部方法的返回值返回使用，返回值类型只能是局部内部类的父类或父接口类型、

   ```java
   public class InnerClassTest {
   	
   	//开发中很少见
   	public void method(){
   		//局部内部类
   		class AA{
   			
   		}
   	}
   	
   	//返回一个实现了Comparable接口的类的对象
   	public Comparable getComparable(){
   		
   		//创建一个实现了Comparable接口的类:局部内部类
   		//方式一：
   //		class MyComparable implements Comparable{
   //
   //			@Override
   //			public int compareTo(Object o) {
   //				return 0;
   //			}
   //			
   //		}
   //		
   //		return new MyComparable();
   		
   		//方式二：
   		return new Comparable(){
   
   			@Override
   			public int compareTo(Object o) {
   				return 0;
   			}
   			
   		};
   		
   	}
   	
   }
   ```

   

###### 局部内部类的特点

1. 内部类仍然是一个独立的类，在编译之后内部类会被编译成独立的.class文件，但是前面冠以外部类的类名和$符号，以及数字编号。
2. 只能在声明它的方法或代码块中使用，而且是先声明后使用。除此之外的任何地方都不能使用该类。
3. 局部内部类可以使用外部类的成员，包括**私有的**。
4. 局部内部类**可以使用外部方法的局部变量，但是必须是final的**。 由局部内部类和局部变量的声明周期不同所致。
5. 局部内部类和局部变量地位类似，不能使用public,protected,缺省,private
6. 局部内部类不能使用static修饰，因此也不能包含静态成员

##### 匿名内部类

> 匿名内部类不能定义任何静态成员、方法和类，只能创建匿名内部类的一个实例。一个匿名内部类一定是在new的后面，用其隐含实现一个接口或实现一个类。

###### 格式：

```
new 父类构造器(实参列表) |实现接口(){
//匿名内部类的类体部分
}
```

###### 匿名内部类的特点

1. 匿名内部类必须继承父类或实现接口
2. 匿名内部类只能有一个对象
3. 匿名内部类对象只能使用多态形式引用


#### 注意事项

1. 非static的成员内部类中的成员不能声明为static的， 只有在外部类或static的成员内部类中才可声明static成员。
2. 外部类访问成员内部类的成员， 需要"内部类.成员"或"内部类对象.成员"的方式
3. 成员内部类可以直接使用外部类的所有成员， 包括私有的数据
4. 当想要在外部类的静态成员部分使用内部类时， 可以考虑内部类声明为静态的



#### 使用示例

```java
public class InnerClassTest {
	public static void main(String[] args) {
		
		//创建Dog实例(静态的成员内部类):
		Person.Dog dog = new Person.Dog();
		dog.show();
		//创建Bird实例(非静态的成员内部类):
//		Person.Bird bird = new Person.Bird();//错误的
		Person p = new Person();
		Person.Bird bird = p.new Bird();
		bird.sing();
		
		System.out.println();
		
		bird.display("黄鹂");
		
	}
}


class Person{
	
	String name = "小明";
	int age;
	
	public void eat(){
		System.out.println("人：吃饭");
	}
	
	//静态成员内部类
	static class Dog{
		String name;
		int age;
		
		public void show(){
			System.out.println("卡拉是条狗");
		}
		
	}
    
	//非静态成员内部类
	class Bird{
		String name = "杜鹃";
		
		public Bird(){
			
		}
		
		public void sing(){
			System.out.println("我是一只小小鸟");
			Person.this.eat();//调用外部类的非静态属性
			eat();
			System.out.println(age);
		}
		
		public void display(String name){
			System.out.println(name);//方法的形参
			System.out.println(this.name);//内部类的属性
			System.out.println(Person.this.name);//外部类的属性
		}
	}
	
	
	public void method(){
		//局部内部类
		class AA{}
	}
	
	{
		//局部内部类
		class BB{}
	}
	
	public Person(){
		//局部内部类
		class CC{}
	}
			
}
```



# 面向对象的三大特征

## 封装性

### 问题引入

当我们创建一个类的对象以后，我们可以通过"对象.属性"的方式，对对象的属性进行赋值。这里，赋值操作要受到属性的数据类型和存储范围的制约。除此之外，没有其他制约条件。但是，在实际问题中，我们往往需要给属性赋值加入额外的限制条件。这个条件就不能在属性声明时体现，我们只能通过方法进行限制条件的添加。(比如：setLegs())同时，我们需要避免用户再使用"对象.属性"的方式对属性进行赋值。则需要将属性声明为私有的(private).

-->此时，针对于属性就体现了封装性。

### 封装性的思想

#### 为什么需要封装？封装的作用和含义？

我要用洗衣机，只需要按一下开关和洗涤模式就可以了。有必要了解洗衣机内部的结构吗？有必要碰电动机吗？
我要开车， …

**使用者对类内部定义的属性(对象的成员变量)的直接操作会导致数据的错误、混乱或安全性问题。所以应该使用封装,将信息隐藏.**



#### 我们程序设计追求"高内聚，低耦合"。

> 高内聚 ：类的内部数据操作细节自己完成，不允许外部干涉；

> 低耦合 ： 仅对外暴露少量的方法用于使用。



#### 封装性的设计思想

隐藏对象内部的复杂性，只对外公开简单的接口。便于外界调用，从而提高系统的可扩展性、可维护性。通俗的说， 把该隐藏的隐藏起来，该暴露的暴露出来。 这就是封装性的设计思想。



### 封装性的体现

Java中通过将数据声明为私有的(`private`)， 再提供公共的(public)方法:`getXxx()`和`setXxx()`实现对该属性的操作， 以实现下述目的：

1. 隐藏一个类中不需要对外提供的实现细节；
2. 使用者只能通过事先定制好的方法来访问数据， 可以方便地加入控制逻辑，限制对属性的不合理操作；
3. 便于修改， 增强代码的可维护性；



*封装性的体现，需要权限修饰符来配合。*

#### 四种访问权限修饰符

> Java权限修饰符public、 protected、 (缺省)、 private置于类的成员定义前，用来限定对象对该类成员的访问权限。

1. Java规定的4种权限(从小到大排列)：private、缺省、protected 、public 

2. 4种权限可以用来修饰类及类的内部结构：属性、方法、构造器、内部类

3. 具体的，4种权限都可以用来修饰类的内部结构：属性、方法、构造器、内部类

4. 修饰类的话，只能使用：缺省、public



| 修饰符        | 类内部 | 同一个包 | 不同包的子类 | 同一个工程 |
| ------------- | ------ | -------- | ------------ | ---------- |
| private       | yes    |          |              |            |
| default(缺省) | yes    | yes      |              |            |
| protected     | yes    | yes      | yes          |            |
| public        | yes    | yes      | yes          | yes        |

##### 注意:

对于class的权限修饰只可以用public和default(缺省)。

- public类可以在任意地方被访问。
- default类只可以被同一个包内部的类访问。  

#### 总结封装性

Java提供了4种权限修饰符来修饰类及类的内部结构，体现类及类的内部结构在被调用时的可见性的大小。



## 继承性

### 为什么要有继承？

> 多个类中存在相同属性和行为时，将这些内容抽取到单独一个类中，那么多个类无需再定义这些属性和行为，只要继承那个类即可。

此处的多个类称为子类(派生类)， 单独的这个类称为父类(基类或超类)。 可以理解为:"子类 is a 父类"

### 语法规则

`class Subclass extends SuperClass{ }`



### 作用

1. 继承的出现减少了代码冗余，提高了代码的复用性。

2. 继承的出现，更有利于功能的扩展。

3. 继承的出现让类与类之间产生了关系，提供了多态的前提。

   

### 继承的体现

1. 一旦子类A继承父类B以后，子类A中就获取了父类B中声明的所有的属性和方法。特别的，父类中声明为private的属性或方法，子类继承父类以后，仍然认为获取了父类中私有的结构。只有因为封装性的影响，使得子类不能直接调用父类的结构而已。

2. 子类继承父类以后，还可以声明自己特有的属性或方法：实现功能的拓展。子类和父类的关系，不同于子集和集合的关系。



### 继承的规则

1. 一个类可以被多个子类继承。

2. Java中类的单继承性：一个类只能有一个父类

3. 子父类是相对的概念。

4. 子类直接继承的父类，称为：直接父类。间接继承的父类称为：间接父类

5. 子类继承父类以后，就获取了直接父类以及所有间接父类中声明的属性和方法

6. 子类不能直接访问父类中私有的(private)的成员变量和方法。

7. Java只支持单继承和多层继承， 不允许多重继承

   - 一个子类只能有一个父类

   - 一个父类可以派生出多个子类

     ```java
     class SubDemo extends Demo{ } //ok
     class SubDemo extends Demo1,Demo2...//error
     ```



##### 示例

****

<img src="images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214505.png" alt="image-20200530203541927" style="zoom:67%;" />

<img src="images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214507.png" alt="image-20200530215756048" style="zoom: 50%;" />

### 注意事项

1. 不 要仅为了获取其他类中某个功能而去继承

2. 在Java 中，继承的关键字用的是"extends"，即子类不是父类的子集，而是对父类的"扩展" 。
3. 如果我们没有显式的声明一个类的父类的话，则此类继承于java.lang.Object类

4. 所有的java类(除java.lang.Object类之外)都直接或间接的继承于java.lang.Object类。意味着，所有的java类具有java.lang.Object类声明的功能。



### 子类对象实例化的全过程

1.  从结果上来看：(继承性)

- 子类继承父类以后，就获取了父类中声明的属性或方法。

- 创建子类的对象，在堆空间中，就会加载所有父类中声明的属性。

2. 从过程上来看：

- 当我们通过子类的构造器创建子类对象时，我们一定会直接或间接的调用其父类的构造器，进而调用父类的父类的构造器，....

- 直到调用了java.lang.Object类中空参的构造器为止。
- 正因为加载过所有的父类的结构，所以才可以看到内存中有父类中的结构，子类对象才可以考虑进行调用。

###### 注意：

**虽然创建子类对象时，调用了父类的构造器，但是自始至终就创建过一个对象，即为new的子类对象。**

#### 执行过程图示

![image-20200530215521479](https://gitee.com/koala010/typora/raw/master/img/image-20200530215521479.png)

##### 代码

```java
class Creature {
    public Creature() {
    	System.out.println("Creature无参数的构造器");
    }
}

class Animal extends Creature {
    public Animal(String name) {
    	System.out.println("Animal带一个参数的构造器，该动物的name为" + name);
    }
    
    public Animal(String name, int age) {
        this(name);
        System.out.println("Animal带两个参数的构造器，其age为" + age);
    }
}

public class Wolf extends Animal {
    public Wolf() {
        super("灰太狼", 3);
        System.out.println("Wolf无参数的构造器");
    }
    
    public static void main(String[] args) {
    	new Wolf();
    }
}
```



#### 思考

##### 1.为什么super(…)和this(…)调用语句不能同时在一个构造器中出现？

##### 2.为什么super(…)或this(…)调用语句只能作为构造器中的第一句出现？



### 继承成员变量和继承方法的区别

子类继承父类：

- 若子类重写了父类方法，就意味着子类里定义的方法彻底覆盖了父类里的同名方法，系统将不可能把父类里的方法转移到子类中。
- 对于实例变量则不存在这样的现象，即使子类里定义了与父类完全相同的实例变量，这个实例变量依然不可能覆盖父类中定义的实例变量



## 多态性

### 如何理解多态性？

可以理解为一个事物的多种形态。

### 何为多态性？

对象的多态性：父类的引用指向子类的对象(或子类的对象赋给父类的引用)

- 可以直接应用在抽象类和接口上

### 多态性的作用

提高了代码的通用性，常称作接口重用

### 多态性的使用

**虚拟方法调用**

有了对象的多态性以后，我们在编译期，只能调用父类中声明的方法，但在运行期，我们实际执行的是子类重写父类的方法。

总结：**编译，看左边；运行，看右边。**

### 多态性的注意事项

Java引用变量有两个类型： 编译时类型和运行时类型。 编译时类型由声明该变量时使用的类型决定， 运行时类型由实际赋给该变量的对象决定。 简称： 编译时， 看左边；运行时， 看右边。

- 若编译时类型和运行时类型不一致， 就出现了对象的多态性(Polymorphism)

- 多态情况下， "看左边" ： 看的是父类的引用(父类中不具备子类特有的方法)；"看右边" ： 看的是子类的对象(实际运行的是子类重写父类的方法)

- 对象的多态 —在Java中,子类的对象可以替代父类的对象使用

  - 一个变量只能有一种确定的数据类型

  - 一个引用类型变量可能指向(引用)多种不同类型的对象

    ```java
    Person p = new Student();
    Object o = new Person();//Object类型的变量o， 指向Person类型的对象
    o = new Student(); //Object类型的变量o， 指向Student类型的对象
    ```

- 子类可看做是特殊的父类， 所以父类类型的引用可以指向子类的对象：向上转型(upcasting)。

- 一个引用类型变量如果声明为父类的类型，但实际引用的是子类对象，那么该变量就不能再访问子类中添加的属性和方法

  ```java
  Student m = new Student();
  m.school = "pku"; //合法,Student类有school成员变量
  Person e = new Student();
  e.school = "pku"; //非法,Person类没有school成员变量
  ```

  属性是在编译时确定的，编译时e为Person类型，没有school成员变量，因而编译错误。

- 对象的多态性，只适用于方法，不适用于属性(编译和运行都看左边)

  

### 多态性的使用前提

 ① 类的继承或者实现关系  ② 方法的重写 ③向上转型



### 多态性示例

方法声明的形参类型为父类类型，可以使用子类的对象作为实参调用该方法

```java
public class Test {
    public void method(Person e) {
        // ……
        e.getInfo();
    }
    public static void main(Stirng args[]) {
        Test t = new Test();
        Student m = new Student();
        t.method(m); // 子类的对象m传送给父类类型的参数e
    }
}
```



### 虚拟方法调用(Virtual Method Invocation)

#### 正常的方法调用

```java
Person e = new Person();
e.getInfo();
Student e = new Student();
e.getInfo();
```

#### 虚拟方法调用(多态情况下)

子类中定义了与父类同名同参数的方法，在多态情况下，将此时父类的方法称为虚拟方法，父类根据赋给它的不同子类对象，动态调用属于子类的该方法。这样的方法调用在编译期是无法确定的。

```java
Person e = new Student();
e.getInfo(); //调用Student类的getInfo()方法
```

#### 编译时类型和运行时类型

编译时e为Person类型，而方法的调用是在运行时确定的，所以调用的是Student类的getInfo()方法。 ——动态绑定



#### 图示



##### 前提

Person类中定义了welcome()方法，各个子类重写了welcome()。

##### 执行：

多态的情况下，调用对象的welcome()方法，实际执行的是子类重写的方法。



### 方法的重载与重写与多态性(方法的重载是多态性的一种体现？NO)*

从编译和运行的角度看：
重载，是指允许存在多个同名方法，而这些方法的参数不同。 编译器根据方法不同的参数表， 对同名方法的名称做修饰。对于编译器而言，这些`同名方法就成了不同的方法`。 它们的`调用地址在编译期就绑定了`。 Java的重载是可以包括父类和子类的，即`子类可以重载父类的同名不同参数的方法`。

所以： 对于重载而言，`在方法调用之前，编译器就已经确定了所要调用的方法`，这称为"早绑定"或"静态绑定" ；

而`对于多态，只有等到方法调用的那一刻， 解释运行器才会确定所要调用的具体方法，这称为"晚绑定"或"动态绑定"` 。

引用一句Bruce Eckel的话： "`不要犯傻，如果它不是晚绑定， 它就不是多态。`"

所以说，`方法的重载并不是多态性的一种体现`。



### 成员变量、成员方法与多态性

#### 成员方法：

- 编译时：要查看引用变量所声明的类中是否有所调用的方法。
- 运行时： 调用实际new的对象所属的类中的重写方法。

#### 成员变量：

- 不具备多态性，只看引用变量所声明的类。



### 多态是编译时行为还是运行时行为？

多态是`运行时行为`。



证明：

```java
class Animal  {
 
	protected void eat() {
		System.out.println("animal eat food");
	}
}

class Cat  extends Animal  {
 
	protected void eat() {
		System.out.println("cat eat fish");
	}
}

class Dog  extends Animal  {
 
	public void eat() {
		System.out.println("Dog eat bone");

	}

}

class Sheep  extends Animal  {
	
	public void eat() {
		System.out.println("Sheep eat grass");
	}
 
}

public class InterviewTest {

	public static Animal  getInstance(int key) {
		switch (key) {
		case 0:
			return new Cat ();
		case 1:
			return new Dog ();
		default:
			return new Sheep ();
		}

	}

	public static void main(String[] args) {
		int key = new Random().nextInt(3);
		System.out.println(key);
		Animal  animal = getInstance(key);
		animal.eat();
	}

}

```

### 多态性常遇见的问题

##### 编译时通过，运行时不通过

1. p3的引用类型是子类`Woman`，不能强制转换为`Man`

```java
Person p3 = new Woman();
Man m3 = (Man)p3;
```

2. p4的引用类型是Person，不能强制转换为`Man`

```
Person p4 = new Person();
Man m4 = (Man)p4;
```

#### 编译不通过

不能将父类的引用赋给子类，否则编译不能通过

```java
Man m5 = new Woman();
```

#### 编译通过，运行时也通过

可以将子类的引用赋给更高层次的父类，在强制向下转型，则可以成功

```java
Object obj = new Woman();
Person p = (Person)obj;
```



# 关键字

## this

### this是什么?

在Java中， this关键字比较难理解，它的作用和其词义很接近。

- 它在方法内部使用，即这个方法所属对象的引用；
- 它在构造器内部使用，表示该构造器正在初始化的对象。

this理解为：当前对象  或 当前正在创建的对象

### this关键字的使用

**this 可以调用类的属性、方法和构造器**

#### this修饰属性和方法：

1. 在类的方法中，我们可以使用"this.属性"或"this.方法"的方式，调用当前对象属性或方法。但是，通常情况下，我们都选择省略"this."。特殊情况下，如果方法的形参和类的属性同名时，我们必须显式的使用"this.变量"的方式，表明此变量是属性，而非形参。

2. 在类的构造器中，我们可以使用"this.属性"或"this.方法"的方式，调用当前正在创建的对象属性或方法。但是，通常情况下，我们都选择省略"this."。特殊情况下，如果构造器的形参和类的属性同名时，我们必须显式的使用"this.变量"的方式，表明此变量是属性，而非形参。

#### this调用构造器

① 我们在类的构造器中，可以显式的使用"this(形参列表)"方式，调用本类中指定的其他构造器

② 构造器中不能通过"this(形参列表)"方式调用自己

③ 如果一个类中有n个构造器，则最多有 n - 1构造器中使用了"this(形参列表)"

④ 规定："this(形参列表)"必须声明在当前构造器的首行

⑤ 构造器内部，最多只能声明一个"this(形参列表)"，用来调用其他的构造器



### 什么时候使用this关键字呢？

1. 在任意方法或构造器内，如果使用当前类的成员变量或成员方法可以在其前面添加this，增强程序的阅读性。不过，通常我们都习惯省略this。
2. 当形参与成员变量同名时，如果在方法内或构造器内需要使用成员变量，必须添加this来表明该变量是类的成员变量
3. 使用this访问属性和方法时，如果在本类中未找到，会从父类中查找

4. this可以作为一个类中构造器相互调用的特殊格式

### this的注意事项

1. 可以在类的构造器中使用"this(形参列表)"的方式，调用本类中重载的其他的构造器！
2. 明确：构造器中不能通过"this(形参列表)"的方式调用自身构造器
3. 如果一个类中声明了n个构造器，则最多有 n - 1个构造器中使用了"this(形参列表)"
4. "this(形参列表)"必须声明在类的构造器的首行！
5. 在类的一个构造器中，最多只能声明一个"this(形参列表)"  



## super

### 使用

在Java类中使用super来调用父类中的指定操作：

1.  我们可以在子类的方法或构造器中。通过使用"`super.属性`"或"`super.方法`"的方式，显式的调用父类中声明的属性或方法。但是，通常情况下，我们习惯省略"super."
2.  特殊情况：**当子类和父类中定义了同名的属性时**，我们要想在子类中调用父类中声明的属性，则必须显式的使用"super.属性"的方式，表明调用的是父类中声明的属性。
3.  特殊情况：**当子类重写了父类中的方法以后**，我们想在子类的方法中调用父类中被重写的方法时，则必须显式的使用"super.方法"的方式，表明调用的是父类中被重写的方法。

### 注意

1. 尤其当子父类出现同名成员时， 可以用super表明调用的是父类中的成员
2. **super的追溯不仅限于直接父类**，如果没有找到，会追溯间接父类
3. super和this的用法相像， this代表本类对象的引用， super代表父类的内存空间的标识

### 使用示例

```java
class protected Person {String name = "张三"; 关键字super举例
	protected int age;
                        
    public String getInfo() {
    	return "Name: " + name + "\nage: " + age;
    }
}
class Student extends Person {
    protected String name = "李四";
    private String school = "New Oriental";
    
    public String getSchool() {
    	return school;
    }
    
    public String getInfo() {
    	return super.getInfo() + "\nschool: " + school;
    }
}

public class StudentTest {
    public static void main(String[] args) {
        Student st = new Student();
        System.out.println(st.getInfo());
    }
}
```

### super调用父类构造器

1. 我们可以在子类的构造器中显式的使用"super(形参列表)"的方式，调用父类中声明的指定的构造器

2. 我们在类的构造器中，针对于"this(形参列表)"或"super(形参列表)"只能二选一，不能同时出现，必须声明在子类构造器的首行！

3. 在构造器的首行，没有显式的声明"this(形参列表)"或"super(形参列表)"，则**默认调用的是父类中空参的构造器**：super()

4. 在类的多个构造器中，至少有一个类的构造器中使用了"super(形参列表)"，调用父类中的构造器；如果子类构造器中既未显式调用父类或本类的构造器， 且父类中又没有无参的构造器， 则**编译出错**。**必须通过this(参数列表)或者super(参数列表)语 句指定调用本类或者父类中相应的构造器**。 同时， **只能"二选一"， 且必须放在构造器的首行**

   

##### 编译出错示例

###### 父类

```java
public class Person { 
    private String name; 
    private int age;
    private Date birthDate;
    
    public Person(String name, int age, Date d) {
        this.name = name;
        this.age = age;
        this.birthDate = d;
    }
    
    public Person(String name, int age) {
    	this(name, age, null);
    }
    
    public Person(String name, Date d) {
    	this(name, 30, d);
    }
    
    public Person(String name) {
    	this(name, 30);
    }
}
```

子类编译出错，父类无空参构造器，**子类没有显示的通过this(参数列表)或者super(参数列表)语 句指定调用本类或者父类中相应的构造器**

```java
public class Student extends Person {
	private String school;
    
    public Student(String name, int age, String s) {
        super(name, age);
        school = s;
    }
    
    public Student(String name, String s) {
        super(name);
        school = s;
    }
    
    // 编译出错: no super(),系统将调用父类无参数的构造器。
    public Student(String s) {
    	school = s;
    }
    
}
```

### this和super的区别

| 区别点     | this                                                   | super                                    |
| ---------- | ------------------------------------------------------ | ---------------------------------------- |
| 访问属性   | 访问本类中的属性，如果本类没有此属性则从父类中继续查找 | 直接访问父类中的属性                     |
| 调用方法   | 访问本类中的方法，如果本类没有此方法则从父类中继续查找 | 直接访问父类中的方法                     |
| 调用构造器 | 调用本类构造器，必须放在构造器的首行                   | 调用父类构造器，必须放在子类构造器的首行 |

###### 注意：

使用`this`会首先在本类找，然后去父类找；使用`super`会直接去父类找。





## package

> package语句作为Java源文件的第一条语句，指明该文件中定义的类所在的包。 (若缺省该语句，则指定为无名包)。

### 语法格式

`package 顶层包名.子包名 ;`

### 举例：

文件夹结构：pack1\pack2\PackageTest.java

```java
package pack1.pack2; //指定类PackageTest属于包pack1.pack2
public class PackageTest{
    public void display(){
   		System.out.println("in method display()");
    }
}
```

### 注意事项

1. 包对应于文件系统的目录， package语句中，用 "." 来指明包(目录)的层次；
2. 包通常用小写单词标识。通常使用所在公司域名的倒置： com.atguigu.xxx

### 作用

1. 包帮助管理大型软件系统： 将功能相近的类划分到同一个包中。 比如： MVC的设计模式
2. 包可以包含类和子包， 划分项目层次， 便于管理
3. 解决类命名冲突的问题
4. 控制访问权限

#### 使用

1. 为了更好的实现项目中类的管理，提供包的概念

2. 使用package声明类或接口所属的包，声明在源文件的首行

3. 包，属于标识符，遵循标识符的命名规则、规范(xxxyyyzzz)、"见名知意"

4. 每"."一次，就代表一层文件目录。

#### 补充

- 同一个包下，不能命名同名的接口、类。

 *     不同的包下，可以命名同名的接口、类。

### JDK中主要的包介绍

1. `java.lang`----包含一些Java语言的核心类， 如String、 Math、 Integer、 System和
   Thread， 提供常用功能
2. `java.net`----包含执行与网络相关的操作的类和接口。
3. `java.io` ----包含能提供多种输入/输出功能的类。
4. `java.util`----包含一些实用工具类， 如定义系统特性、 接口的集合框架类、 使用与日
   期日历相关的函数。
5. `java.text`----包含了一些java格式化相关的类
6. `java.sql`----包含了java进行JDBC数据库编程的相关类/接口
7. `java.awt`---包含了构成抽象窗口工具集(abstract window toolkits) 的多个类， 这
   些类被用来构建和管理应用程序的图形用户界面(GUI)。 B/S C/S



## import

> 为使用定义在不同包中的Java类，需用import语句来引入指定包层次下所需要的类或全部类(.*)。 import语句告诉编译器到哪里去寻找类。

### 语法格式

`import 包名. 类名;`

### 示例

```java
import pack1.pack2.Test; //import pack1.pack2.*;表示引入pack1.pack2包中的所有结构
public class PackTest{
    public static void main(String args[]){
        Test t = new Test(); //Test类在pack1.pack2包中定义
        t.display();
    }
}
```

### 注意事项

1.  在源文件中使用import显式的导入指定包下的类或接口
2.  声明在包的声明和类的声明之间。
3.  如果需要导入多个类或接口，那么就并列显式多个import语句即可
4.  可以使用"xxx.*"的方式，表示可以导入xxx包下的所有结构
5.  如果导入的类或接口是java.lang包下的，或者是当前包下的，则可以省略此import语句。
6.  如果使用的类或接口是本包下定义的，则可以省略import结构
7.  如果在代码中使用不同包下的同名的类。那么就需要使用类的全类名的方式指明调用的
    是哪个类。
8.  使用"xxx.*"方式表明可以调用xxx包下的所有结构。但是如果使用的是xxx子包下的结构，则仍需要显式导入
9.  import static组合的使用：调用指定类或接口下的静态的属性或方法



## instanceof 操作符

> `x instanceof A`：检验x是否为类A的对象，返回值为`boolean`型。

- 要求x所属的类与类A必须是子类和父类的关系，否则编译错误。
- 如果x属于类A的子类B， x instanceof A值也为true。 

### 使用情景

使用情境：为了避免在向下转型时出现`ClassCastException`的异常，我们在向下转型之前，先进行`instanceof`的判断，一旦返回true，就进行向下转型。如果返回false，不进行向下转型。

### 使用示例

```java
public class Person extends Object {…}

public class Student extends Person {…}

public class Graduate extends Person {…}

public void method1(Person e) {
    if (e instanceof Person)
    	// 处理Person类及其子类对象
    if (e instanceof Student)
    	//处理Student类及其子类对象
    if (e instanceof Graduate)
    	//处理Graduate类及其子类对象
}
```

### 对象类型转换 (Casting )

基本数据类型的Casting：

- 自动类型转换：小的数据类型可以自动转换成大的数据类型如`long g=20; double d=12.0f`
- 强制类型转换： 可以把大的数据类型强制转换(casting)成小的数据类型，如 float f=(float)12.0; int a=(int)1200L

对Java对象的强制类型转换称为造型

- 从子类到父类的类型转换可以自动进行
- 从父类到子类的类型转换必须通过造型(强制类型转换)实现
- **无继承关系的引用类型间的转换是非法的**
- 在造型前可以使用instanceof操作符测试一个对象的类型

#### 示例

```java
public class Test {
    public void method(Person e) { // 设Person类中没有getschool() 方法
        // System.out.pritnln(e.getschool()); //非法,编译时错误
        if (e instanceof Student) {
            Student me = (Student) e; // 将e强制转换为Student类型
            System.out.pritnln(me.getschool());
    	}
    }
    public static void main(String[] args){
        Test t = new Test();
        Student m = new Student();
        t.method(m);
    }
}
```



## static

### 背景

**当我们编写一个类时，其实就是在描述其对象的属性和行为，而并没有产生实质上的对象，只有通过new关键字才会产生出对象，这时系统才会分配内存空间给对象，其方法才可以供外部调用**。我们有时候希望**无论是否产生了对象或无论产生了多少对象的情况下， 某些特定的数据在内存空间里只有一份**。

例如所有的中国人都有个国家名称，每一个中国人都共享这个国家名称，不必在每一个中国人的实例对象中都单独分配一个用于代表国家名称的变量。



### 修饰对象

static可以用来修饰：属性、方法、代码块、内部类

#### 使用static修饰属性：静态变量(或类变量)

##### 静态属性  vs 非静态属性(实例变量)

​	属性，按是否使用static修饰，又分为：静态属性  vs 非静态属性(实例变量)

实例变量：我们创建了类的多个对象，每个对象都独立的拥有一套类中的非静态属性。当修改其中一个对象中的非静态属性时，不会导致其他对象中同样的属性值的修改。

静态变量：我们创建了类的多个对象，多个对象共享同一个静态变量。当通过某一个对象修改静态变量时，会导致其他对象调用此静态变量时，是修改过了的。

##### static修饰属性的其他说明：

1. 静态变量随着类的加载而加载。可以通过"类.静态变量"的方式进行调用

2. 静态变量的加载要早于对象的创建。

3. 由于类只会加载一次，则静态变量在内存中也只会存在一份：存在方法区的静态域中。

4. 类变量与实例变量的使用情况

|      | 类变量 | 实例变量 |
| ---- | ------ | -------- |
| 类   | yes    | no       |
| 对象 | yes    | yes      |

​				

##### 静态属性举例：

`System.out`;` Math.PI`;

#### 使用static修饰方法：静态方法

> 没有对象的实例时，可以用`类名.方法名()`的形式访问由static修饰的类方法。

1. 随着类的加载而加载，可以通过"类.静态方法"的方式进行调用

2. 静态方法中，只能调用静态的方法或属性非静态方法中，既可以调用非静态的方法或属性，也可以调用静态的方法或属性

3. 在静态的方法内，不能使用this关键字、super关键字

4. static修饰的方法不能被重写

5. 静态方法与非静态方法的使用情况

|      | 静态方法 | 非静态方法 |
| ---- | -------- | ---------- |
| 类   | yes      | no         |
| 对象 | yes      | yes        |



**关于静态属性和静态方法的使用，可以从生命周期的角度去理解。**

### 类属性、类方法的设计思想

1. 类属性作为该类各个对象之间共享的变量。 在设计类时,分析哪些属性不因对象的不同而改变，将这些属性设置为类属性。相应的方法设置为类方法。
2. 如果方法与调用者无关，则这样的方法通常被声明为类方法，由于不需要创建对象就可以调用类方法，从而简化了方法的调用。 

#### 开发中，如何确定一个属性是否要声明为static的？

1. 属性是可以被多个对象所共享的，不会随着对象的不同而不同的。

2. 类中的常量也常常声明为static

*如果想让一个类的所有实例共享数据，就用类变量！*

####  开发中，如何确定一个方法是否要声明为static的？

1. 操作静态属性的方法，通常设置为static的

2. 工具类中的方法，习惯上声明为static的。 比如：Math、Arrays、Collections

### 被static修饰后的成员的特点

1. 随着类的加载而加载
2. 优先于对象存在
3. 修饰的成员，被所有对象所共享
4. 访问权限允许时，可不创建对象，直接被类调用	

### 类变量 vs 实例变量内存解析





## final

> 在Java中声明类、 变量和方法时， 可使用关键字final来修饰,表示"最终的" 。

### final修饰对象

final可以用来修饰的结构：类、方法、变量

#### final 修饰类

**final 修饰的类不能被其他类所继承。** 提高安全性， 提高程序的可读性。

比如：String类、System类、StringBuffer类

###### 示例

```java
final class A{
}

class B extends A{ //错误，不能被继承。
}
```



#### final 修饰方法

**final 修饰的方法不可以被重写**

比如：Object类中getClass();

###### 示例

```java
class A {
    public final void print() {
   	 System.out.println("A");
    }
}

class B extends A {
    public void print() { // 错误，不能被重写。
    	System.out.println("尚硅谷");
    }
}
```



#### final 修饰变量

**final 修饰的变量，称为常量。**名称大写， 且只能被赋值一次。

1. final修饰成员变量：可以考虑赋值的位置有：显式初始化、代码块中初始化、构造器中初始化(每个构造器都需要赋值，否则报错)

2. final修饰局部变量：

 *          尤其是使用final修饰形参时，表明此形参是一个常量。当我们调用此方法时，给常量形参赋一个实参。一旦赋值以后，就只能在方法体内使用此形参，但不能进行重新赋值。

### static final的使用

**static final 用来修饰成员变量：意味着是全局常量**



### 思考题

1.final定义的变量不可以再次赋值，但返回时进行运算，相当于是新的变量

```java
public class Something {
    public int addOne(final int x) {
    	return ++x;//不可以
    // return x + 1;//可以
    }
}
```

2.虽然Other是常量，但Other的属性和方法并不是常量

```java
public class Something {
    public static void main(String[] args) {
        Other o = new Other();
        new Something().addOne(o);
    }
    public void addOne(final Other o) {
        // o = new Other();
        o.i++;
    }
}

class Other {
	public int i;
}
```





# 扩展

## JavaBean

> JavaBean是一种Java语言写成的可重用组件。

### JavaBean的标准

所谓JavaBean，是指符合如下标准的Java类：

  		1. 类是公共的
  		2. 有一个无参的公共的构造器
  		3. 有属性，且有对应的get、set方法

### JavaBean的作用

用户可以使用JavaBean将功能、处理、值、数据库访问和其他任何可以用Java代码创造的对象进行打包，并且其他的开发者可以通过内部的JSP页面、 Servlet、其他JavaBean、 applet程序或者应用来使用这些对象。用户可以认为JavaBean提供了一种随时随地的复制和粘贴的功能，而不用关心任何改变。



## MVC设计模式

>MVC是常用的设计模式之一，将整个程序分为三个层次：`视图模型层`，`控制器层`，与`数据模型层`。 这种将程序输入输出、数据处理，以及数据的展示分离开来的设计模式使程序结构变的灵活而且清晰，同时也描述了程序各个对象间的通信方式，降低了程序的耦合性。

### 百度百科对MVC的图解

![image-20200530161734591](images/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1oop/20200726214535.png)

对于百度百科这个对MVC的图解，我觉得有一定的`片面性`。