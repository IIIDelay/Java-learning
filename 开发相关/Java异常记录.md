## Json解析问题

#### 1. fastJson解析为Map

* properties

```properties
thread-dataBase-pool={maxPoolSize:20,corePoolSize:10,queueCapacity:1000}
```

* 解析实现

```java
// 1. 使用TypeReference必须明确字符串类型, 报错: maxPoolSize,corePoolSize等不能明确是String，是Object
JSONObject.parseObject(str, new TypeReference<Map<String, Integer>>(){});

// 2. 使用 Map.class 正确解析
JSONObject.parseObject(str, Map.class);
```

* 解决

```properties
thread-dataBase-pool={'maxPoolSize':20,'corePoolSize':10,'queueCapacity':1000}
```

> 明确JSON字符串kv类型，则TypeReference通过解析

## Mybatis

#### 1. mybatis与postgresql异常

> 错误描述

```
Cause: org.postgresql.util.PSQLException: ��������: �û� "postgers" Password ��֤ʧ��
```

![image-20230119214459385](images/Java%E5%BC%82%E5%B8%B8%E8%AE%B0%E5%BD%95/image-20230119214459385.png)



> 解决：
>
> * 数据的username，名称书写错误，非编码问题

## Maven

#### 1. maven工程输入OUT文件夹

> 子模块工程: 打包不能有 pom



## SpringCloud

#### 1. bootstrap.yaml异常

* 异常描述

```
Add a spring.config.import=nacos: property to your configuration
```

* 解决

```
maven引入 bootstrap 依赖
```

