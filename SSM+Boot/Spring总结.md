## Spring介绍

> Spring是**一个轻量级Java开发框架**，最根本的使命是**解决企业级应用开发的复杂性，即简化Java开发**。即为了解决企业级应用开发的业务逻辑层和其他各层的耦合问题。
>
> Spring负责基础架构，因此Java开发者可以专注于应用程序的开发。

> **设计目标**：Spring为开发者提供一个一站式轻量级应用开发平台
>
> 
>
> **设计理念**：在JavaEE开发中，支持POJO和JavaBean开发方式，使应用面向接口开发，充分支持OO(面向对象)设计方法；Spring通过IoC容器实现对象耦合关系的管理，并实现依赖反转，将对象之间的依赖关系交给IoC容器，实现解耦；

> **核心**：IoC容器和AOP模块。通过IoC容器管理POJO对象以及他们之间的耦合关系；通过AOP以动态非侵入的方式增强服务。IoC让相互协作的组件保持松散的耦合，而AOP编程允许你把遍布于应用各层的功能分离出来形成可重用的功能组件

#### 宏观介绍

> Spring 框架可以说是Java 世界最为成功的框架，在企业实际应用中，大部分的企业架构都基于Spring 框架。它的成功来自于理念，而不是技术，它最为核心的理念是IoC (控制反转)和AOP (面向切面编程)，其中IoC 是Spring的基础，而AOP 则是其重要的功能，最为典型的当属数据库事务的使用。
>
> Spring最根本的使命是解决企业级应用开发的复杂性，即简化Java开发

## Spring的优缺点

> **优点：**
>
> - 方便解耦，简化开发
>
>   Spring就是一个大工厂，可以将所有对象的创建和依赖关系的维护，交给Spring管理。
>
> - AOP编程的支持
>
>   Spring提供面向切面编程，可以方便的实现对程序进行权限拦截、运行监控等功能。
>
> - 声明式事务的支持
>
>   只需要通过配置就可以完成对事务的管理，而无需手动编程。
>
> - 方便程序的测试
>
>   Spring对Junit4支持，可以通过注解方便的测试Spring程序。
>
> - 方便集成各种优秀框架
>
>   Spring不排斥各种优秀的开源框架，其内部提供了对各种优秀框架的直接支持(如：Struts、Hibernate、MyBatis等)。
>
> - 降低JavaEE API的使用难度
>
>   Spring对JavaEE开发中非常难用的一些API(JDBC、JavaMail、远程调用等)，都提供了封装，使这些API应用难度大大降低。

> **缺点：**
>
> - Spring明明一个很轻量级的框架，却给人感觉大而全
> - Spring依赖反射，反射影响性能
> - 使用门槛升高，入门Spring需要较长时间

## Spring的组成

> Spring 总共大约有 20 个模块， 由 1300 多个不同的文件构成。 
>
> * 这些组件被分别整合在`核心容器(Core Container)`、`AOP(Aspect Oriented Programming)和设备支持(Instrmentation)`、`数据访问与集成(Data Access/Integeration)`、`Web`、`消息(Messaging)`、`Test`等 6 个模块中

> 以下是 Spring 4.x 的模块结构图：
>
> <img src="Spring%E6%80%BB%E7%BB%93.assets/image-20230213213531444.png" alt="image-20230213213531444" style="zoom:80%;" />
>
> `Tip`: 目前最新的 5.x 版本中 Web 模块的 Portlet 组件已经被废弃掉，同时增加了用于异步响应式处理的 WebFlux 组件。

#### 组成介绍

> - spring core：提供了框架的基本组成部分，包括控制反转(Inversion of Control，IOC)和依赖注入(Dependency Injection，DI)功能。
>   - spring beans：提供了BeanFactory，是工厂模式的一个经典实现，Spring将管理对象称为Bean。
>   - spring context：构建于 core 封装包基础上的 context 封装包，提供了一种框架式的对象访问方法。
> - Spring Data Access/Integration
>   - spring jdbc：提供了对数据库访问的抽象 JDBC。不同的数据库都有自己独立的 API 用于操作数据库，而 Java 程序只需要和 JDBC API 交互，这样就屏蔽了数据库的影响。
>   - spring-tx:   提供对事务的支持。
>   - spring-orm:  提供对 Hibernate 等 ORM 框架的支持。
>   - spring-oxm:  提供对 Castor 等 OXM 框架的支持。
>   - spring-jms:  Java 消息服务。
> - spring aop：提供了面向切面的编程实现，让你可以自定义拦截器、切点等。
> - spring Web：提供了针对 Web 开发的集成特性，例如文件上传，利用 servlet listeners 进行 ioc 容器初始化和针对 Web 的 ApplicationContext。
>   - spring-web: 对 Web 功能的实现提供一些最基础的支持。
>   - spring-webmvc:  提供对 Spring MVC 的实现。
>   - spring-websocket:  提供了对 WebSocket 的支持，WebSocket 可以让客户端和服务端进行双向通信。
>   - spring-webflux: 提供对 WebFlux 的支持。WebFlux 是 Spring Framework 5.0 中引入的新的响应式框架。与 Spring MVC 不同，它不需要 Servlet API，是完全异步.
> - spring test：主要为测试提供支持的，支持使用JUnit或TestNG对Spring组件进行单元测试和集成测试。Spring 团队提倡测试驱动开发(TDD)。
>   * 有了控制反转 (IoC)的帮助，单元测试和集成测试变得更简单。