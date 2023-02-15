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