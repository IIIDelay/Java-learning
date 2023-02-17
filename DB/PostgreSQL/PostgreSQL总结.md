# SQL优化

## sql优化概述

#### 1. 度量指标和依赖因素

> 常用度量指标：
>
> * RT(相应时间)
> * QPS(吞吐量)
> * TPS(吞吐量)
>
> 常见依赖因素
>
> * 环境
>   * 机器配置
>   * 网络带宽和时延
>   * HA架构(同步|异步复制)
>   * 数据库参数(刷盘参数等)
> * 业务场景
>   * 表定义
>   * 数据量
>   * SQL

#### 2. 耗时

> 客户端：
>
> * 连接|断连接
> * SQL发送
> * 结果集接受和处理
>
> 数据库
>
> * 连接|断连接
> * SQL执行
> * 结果集数据
>
> 其他：
>
> * 网络延迟

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211141756812.png" alt="image-20221211141756812" style="zoom:50%;" />

> 性能优化提示：
>
> * 连接池
> * 批更新
> * 对大结果集的查询，设置合适的FetchSize，防止JVM内存溢出

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/%E6%96%87%E6%A1%A3%E7%BB%98%E5%9B%BE-%E7%AC%AC%2018%20%E9%A1%B5.drawio.pngsddsd.png" alt="文档绘图-第 18 页.drawio.pngsddsd" style="zoom: 50%;" />

## sql执行计划

#### 1. sql执行顺序

* SQL语句

```sql
select distinct
    查询列表（要查的字段）
from
    左边的表们s
连接类型(left|inner) join 
    右边的表们s
on 
    连接条件
where
    筛选条件
group by
    分组的列表(按什么字段分组)
having
    having_condition
order by
    排序的字段
limit
    limit number;
```

* SQL语句执行顺序

```sql
1. from 左边的表们s
2. on 连接条件
3. 连接类型(left|inner) join 右边的表们s
4. where 筛选条件
5. group by 分组列表(按什么字段分组)
6. having having_condition
7. select
8. distinct 查询列表(要查询的字段)
9. order by 排序的字段等
10 limit limit_number
```

#### 2. 不同执行计划的选择

> * 如何扫描表
> * 如何join
> * 如何排序
> * 如何处理子查询
> * 有没有其他更快的等价执行计划

> Tip: 同一个SQL可以有N种执行方法，哪一种更快.

##### 2.1 表扫描

> Sequential Scan: 全表扫描
>
> Index Scan: 索引扫描
>
> Bitmap Index Scan： Bitmap扫描

* **Sequential Scan: 全表扫描**

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211145727067.png" alt="image-20221211145727067" style="zoom:67%;" />

![image-20221211145919318](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211145919318.png)



* **索引扫描**

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211150048294.png" alt="image-20221211150048294" style="zoom:67%;" />



<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211150429036.png" alt="image-20221211150429036" style="zoom:67%;" />





* **Bitmap索引扫描**

![image-20221211151225084](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211151225084.png)

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211151956908.png" alt="image-20221211151956908" style="zoom:67%;" />



##### 2.2 影响执行计划选择的相关因素

> 有无索引
>
> 索引字段的选择性
>
> 多字段索引的顺序

![image-20221211153116220](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211153116220.png)





* SQL

```sql
create table public.tb1
(
    id int
        primary key,
    c1 int,
    c2 int
);
create index tb1_c1_c2_index
    on public.tb1 (c1, c2);


insert into tb1
select id, (random() * 1000)::int, (random() * 1000)::int
from generate_series(1, 10000) id;
```

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211171532572.png" alt="image-20221211171532572" style="zoom: 50%;" />

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211171650527.png" alt="image-20221211171650527" style="zoom:50%;" />

```sql
-- Bitmap Heap Scan on tb1  (cost=4.38..29.59 rows=9 width=12) (actual time=0.021..0.028 rows=7 loops=1)
select * from tb1 where  c1 =1 and c2 > 1 ;
-- Seq Scan on tb1  (cost=0.00..205.00 rows=9 width=12) (actual time=0.058..0.484 rows=12 loops=1)
select * from tb1 where  c1 > 1 and c2 = 1 ;
```

> Tip: 
>
> * 单字段条件查询（含前导字段）：bitMap索引
> * 单字段条件查询（不含前导字段）：全表扫描
>
> BTree多字段索引，索引按多字段组合排序，前导字段非常重要



##### 2.3 Nested loop join

![image-20221211212734584](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211212734584.png)

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211212758073.png" alt="image-20221211212758073" style="zoom:67%;" />

##### 2.4 Hash join



![image-20221211212924024](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211212924024.png)

![image-20221211212935302](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211212935302.png)



##### 2.5 Merge join

![image-20221211213118443](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211213118443.png)



![image-20221211213128370](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211213128370.png)

##### 2.6 多表Join顺序

> 一般原则
>
> * Nested loop ：小表作为驱动表
> * Hash： 小表用于构造hash桶
> * Merge：小表作为驱动表

![image-20221211213426392](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211213426392.png)

#### 3. 不同执行计划的选择

> 影响执行计划选择的相关因素：
>
> * 是否等值条件
> * 表（结果集）大小
>   * 小结果集更倾向nestlopp join
>   * 大结果集更倾向hash join， merge join
> * 有无索引

##### 3.1 不同执行计划的选择（排序）

<img src="images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211213933248.png" alt="image-20221211213933248" style="zoom:67%;" />

##### 不同执行计划的选择（子查询）

![image-20221211214125639](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211214125639.png)

#### 4. 优化器如何选择执行计划

> RBO: 基于规则的优化器，动态适应性差
>
> CBO: 基于代价的优化器，目前关系数据库的主流技术
>
> ![image-20221211214523527](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211214523527.png)

##### 4.1 优化器生成的执行计划不"最优"怎么办

> 加索引
>
> * 索引会影响过滤，join，排序
>
> 更新统计信息
>
> * 大量导入或更新数据后，后台进程可能不能及时更新统计信息，必须时手动更新
>   * `analyze tb1；`

> 方案：改写成业务含义等价的SQL

* 优化器虽然有SQL重写的功能，但不理解业务含义，也没有人智能

![image-20221211215351802](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211215351802.png)



> 等价方式： 三种SQL写法

![image-20221211215627101](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211215627101.png)



## sql优化案例

![image-20221211215841397](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211215841397.png)



#### 如何估算行数

![image-20221211220056587](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211220056587.png)



![image-20221211220226960](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211220226960.png)



#### 如何估算cost

![image-20221211220534557](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211220534557.png)

#### 问题SQL的根因

![image-20221211220722157](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211220722157.png)

![image-20221211220947685](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211220947685.png)







## sql优化建议

## 选择合适的索引

![image-20221211221112820](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211221112820.png)

> Tip:
>
> * 避免在过低基数的列上建立索引，例如：性别
> * 尽量避免在更新频繁的字段上建立索引，特别是：gin索引

#### Gin（btree_gin） vs Btree

![image-20221211221501909](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211221501909.png)



#### Gin索引内部构造

![image-20221211221627852](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211221627852.png)

#### Gin（btree_gin）和Btree性能对比

![image-20221211222031692](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211222031692.png)



## 使用合适的数据类型和插件

![image-20221211222221732](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211222221732.png)

#### 历史SQL执行时间

![image-20221211222440933](images/PostgreSQL%E6%80%BB%E7%BB%93/image-20221211222440933.png)



