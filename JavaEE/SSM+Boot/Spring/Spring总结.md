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
> <img src="images/Spring%E6%80%BB%E7%BB%93/image-20230213215259132.png" alt="image-20230213215259132" style="zoom:67%;" />
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

## 核心IoC

> IoC(Inverse of Control:控制反转)是一种**设计思想**，就是 **将原本在程序中手动创建对象的控制权，交由Spring框架来管理。** IoC 在其他语言中也有应用，并非 Spring 特有。 **IoC 容器是 Spring 用来实现 IoC 的载体， IoC 容器实际上就是个Map(key，value),Map 中存放的是各种对象。**

#### 为什么叫控制反转?

> **控制** ：指的是对象创建(实例化、管理)的权力
>
> **反转** ：控制权交给外部环境(Spring 框架、IoC 容器)

> 如何理解好IoC呢？理解好IoC的关键是要明确“谁控制谁，控制什么，为何是反转(有反转就应该有正转了)，哪些方面反转了”，那我们来深入分析一下：
>
> - **谁控制谁，控制什么：**传统Java SE程序设计，我们直接在对象内部通过new进行创建对象，是程序主动去创建依赖对象；而IoC是有专门一个容器来创建这些对象，即由IoC容器来控制对 象的创建；**谁控制谁？当然是IoC 容器控制了对象；控制什么？那就是主要控制了外部资源获取(不只是对象包括比如文件等)。**
>- **为何是反转，哪些方面反转了：**有反转就有正转，传统应用程序是由我们自己在对象中主动控制去直接获取依赖对象，也就是正转；而反转则是由容器来帮忙创建及注入依赖对象；
>   - 为何是反转？**因为由容器帮我们查找及注入依赖对象，对象只是被动的接受依赖对象，所以是反转；哪些方面反转了？依赖对象的获取被反转了。**

* 对比图

![image-20230213214818244](images/Spring%E6%80%BB%E7%BB%93/image-20230213214818244.png)

* 传统程序设计都是主动去创建相关对象然后再组合起来：

![image-20230213214840222](images/Spring%E6%80%BB%E7%BB%93/image-20230213214840222.png)

* 有了IoC/DI的容器后，在客户端类中不再主动去创建这些对象了，如图所示:

![image-20230213214929073](images/Spring%E6%80%BB%E7%BB%93/image-20230213214929073.png)

> **IoC对编程带来的最大改变不是从代码上，而是从思想上，发生了“主从换位”的变化。应用程序原本是老大，要获取什么资源都是主动出击，但是在IoC/DI思想中，应用程序就变成被动的了，被动的等待IoC容器来创建并注入它所需要的资源了。**

#### IOC的优点

> IoC的思想最核心的地方在于，<u>资源不由使用资源的双方管理，而由不使用资源的第三方管理</u>，这可以带来很多好处。
>
> **第一： 资源集中管理，实现资源的可配置和易管理。**
>
> **第二： 降低了使用资源双方的依赖程度，也就是我们说的耦合度**。

> 参考： 依赖倒置、控制反转、依赖注入思想上分析



## Spring核心AOP

> OOP(Object-Oriented Programming)面向对象编程，允许开发者定义纵向的关系，导致了大量代码的重复，而不利于各个模块的重用。
>
> AOP(Aspect-Oriented Programming:面向切面编程)能够将那些与业务无关，**却为业务模块所共同调用的逻辑或责任(例如事务处理、日志管理、权限控制等)封装起来**，便于**减少系统的重复代码**，**降低模块间的耦合度**，并**有利于未来的可拓展性和可维护性**。

AOP 是一种编程思想，是面向对象编程(OOP)的一种补充。面向对象编程将程序抽象成各个层次的对象，而面向切面编程是将程序抽象成各个切面。

![AOP实例](images/Spring%E6%80%BB%E7%BB%93/202109071538296.png)

AOP 要实现的是在我们原来写的代码的基础上，进行一定的包装，如在方法执行前、方法返回后、方法抛出异常后等地方进行一定的拦截处理或者叫增强处理。

AOP 的实现并不是因为 Java 提供了什么神奇的钩子，可以把方法的几个生命周期告诉我们，而是我们要实现一个代理，实际运行的实例其实是生成的代理类的实例。

### 为什么需要 AOP？

想象下面的场景，开发中在多个模块间有某段重复的代码，我们通常是怎么处理的？显然，没有人会靠“复制粘贴”吧。**在传统的面向过程编程中，我们也会将这段代码，抽象成一个方法，然后在需要的地方分别调用这个方法，这样当这段代码需要修改时，我们只需要改变这个方法就可以了。然而需求总是变化的，有一天，新增了一个需求，需要再多出做修改，我们需要再抽象出一个方法，然后再在需要的地方分别调用这个方法，又或者我们不需要这个方法了，我们还是得删除掉每一处调用该方法的地方**。实际上涉及到多个地方具有相同的修改的问题我们都可以通过 AOP 来解决。

### AOP 术语

AOP 领域中的特性术语：

- 通知(Advice): AOP 框架中的增强处理。通知描述了切面何时执行以及如何执行增强处理。
- 连接点(join point): 连接点表示应用执行过程中能够插入切面的一个点，这个点可以是方法的调用、异常的抛出。在 Spring AOP 中，连接点总是方法的调用。
- 切点(PointCut):切点的定义会匹配通知所要织入的一个或多个连接点。我们通常使用明确的类和方法名称，或是利用正则表达式定义所匹配的类和方法名称来指定这些切点。
- 切面(Aspect): 切面是通知和切点的结合。
- 引入(Introduction)：引入允许我们向现有的类添加新的方法或者属性。
- 织入(Weaving): 将增强处理添加到目标对象中，并创建一个被增强的对象，这个过程就是织入。
- 目标对象(Target Object)： 被一个或者多个切面(aspect)所通知(advise)的对象。它通常是一个代理对象。也有人把它叫做 被通知(adviced) 对象。 既然Spring AOP是通过运行时代理实现的，这个对象永远是一个 被代理(proxied) 对象。

![AOP术语](images/Spring%E6%80%BB%E7%BB%93/202109071556064.png)

### AOP 实现分类

AOP 要达到的效果是，保证开发者不修改源代码的前提下，去为系统中的业务组件添加某种通用功能。AOP 的本质是由 AOP 框架修改业务组件的多个方法的源代码，看到这其实应该明白了，AOP 其实就是代理模式的典型应用。
按照 AOP 框架修改源代码的时机，可以将其分为两类：

- 静态 AOP 实现， AOP 框架在编译阶段对程序源代码进行修改，生成了静态的 AOP 代理类(生成的 *.class 文件已经被改掉了，需要使用特定的编译器)，比如 AspectJ。
- 动态 AOP 实现， AOP 框架在运行阶段对动态生成代理对象(在内存中以 JDK 动态代理，或 CGlib 动态地生成 AOP 代理类)，如 SpringAOP。

下面给出常用 AOP 实现比较：
![image-20210216155841260](images/Spring%E6%80%BB%E7%BB%93/image-20210216155841260.png)

关于动态代理可参考我的另一篇博客：[实例理解JDK动态代理和Cglib动态代理及其区别](https://blog.csdn.net/qq_42937522/article/details/107160411)

### Spring AOP

**Spring AOP就是基于动态代理的**，如果要代理的对象，实现了某个接口，那么Spring AOP会使用**JDK Proxy**，去创建代理对象，而对于没有实现接口的对象，就无法使用 JDK Proxy 去进行代理了，这时候Spring AOP会使用**Cglib** ，这时候Spring AOP会使用 **Cglib** 生成一个被代理对象的子类来作为代理，如下图所示：

![image-20210216152837816](images/Spring%E6%80%BB%E7%BB%93/image-20210216152837816.png)

当然也可以使用 AspectJ ,Spring AOP 已经集成了AspectJ ，AspectJ 应该算的上是 Java 生态系统中最完整的 AOP 框架了。

使用 AOP 之后我们可以把一些通用功能抽象出来，在需要用到的地方直接使用即可，这样大大简化了代码量。我们需要增加新功能时也方便，这样也提高了系统扩展性。日志功能、事务管理等等场景都用到了 AOP 。

Spring AOP的使用，可参考：[Spring AOP——Spring 中面向切面编程](https://www.cnblogs.com/joy99/p/10941543.html)

### Spring AOP 和 AspectJ AOP 有什么区别？

**Spring AOP 属于运行时增强，而 AspectJ 是编译时增强。** Spring AOP 基于代理(Proxying)，而 AspectJ 基于字节码操作(Bytecode Manipulation)。

Spring AOP 已经集成了 AspectJ ，AspectJ 应该算的上是 Java 生态系统中最完整的 AOP 框架了。AspectJ 相比于 Spring AOP 功能更加强大，但是 Spring AOP 相对来说更简单，

如果我们的切面比较少，那么两者性能差异不大。但是，当切面太多的话，最好选择 AspectJ ，它比Spring AOP 快很多。

关于AspectJ的使用，可参考：[AspectJ 使用介绍](https://www.javadoop.com/post/aspectj)

## Spring的Bean

### 什么是Bean？

简单来说，bean 代指的就是那些**被 IoC 容器所管理的对象**。

由 Spring IoC 容器管理的对象称为 Bean，Bean 根据 Spring 配置文件中的信息创建。可以把 Spring IoC 容器看作是一个大工厂，Bean 相当于工厂的产品，如果希望这个大工厂生产和管理 Bean，则需要告诉容器需要哪些 Bean，以及需要哪种方式装配 Bean，这个是通过配置元数据来定义的。配置元数据可以是 XML 文件、注解或者 Java 配置类。

### Bean的作用域

Spring 容器在初始化一个 Bean 实例时，同时会指定该实例的作用域。Spring 5 支持以下 6 种作用域。

**singleton**

默认值，单例模式，表示在 Spring 容器中只有一个 Bean 实例，Bean 以单例的方式存在。

**prototype**

原型模式，表示每次通过 Spring 容器获取 Bean 时，容器都会创建一个 Bean 实例。

**request**

每次 HTTP 请求，容器都会创建一个 Bean 实例。该作用域只在当前 HTTP Request 内有效。

**session**

同一个 HTTP Session 共享一个 Bean 实例，不同的 Session 使用不同的 Bean 实例。该作用域仅在当前 HTTP Session 内有效。

**application**

同一个 Web 应用共享一个 Bean 实例，该作用域在当前 ServletContext 内有效。
类似于 singleton，不同的是，singleton 表示每个 IoC 容器中仅有一个 Bean 实例，而同一个 Web 应用中可能会有多个 IoC 容器，但一个 Web 应用只会有一个 ServletContext，也可以说 application 才是 Web 应用中货真价实的单例模式。

**websocket**

websocket 的作用域是 WebSocket ，即在整个 WebSocket 中有效

request、session、application、websocket 和 global Session 作用域只能在 Web 环境下使用，如果使用 ClassPathXmlApplicationContext 加载这些作用域中的任意一个的 Bean，就会抛出异常。

### 如何配置 bean 的作用域呢？

xml 方式：

```xml
<bean id="..." class="..." scope="singleton"></bean>
```

注解方式：

```java
@Bean
@Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public Person personPrototype() {
    return new Person();
}
```



### Bean的生命周期

> Spring IOC 中Bean的生命周期大致分为四个阶段：**实例化**(Instantiation)、**属性赋值**(Populate)、**初始化**(Initialization)、**销毁**(Destruction)

> Bean的初始化、Bean 的生存期和Bean的销毁4个部分。其中Bean定义过程大致如下。
>
> * Spring通过我们的配置， 如@ComponentScan定义的扫描路径去找到带有@Component的类，
>   这个过程就是一个资源定位的过程。
> * 一旦找到了资源，那么它就开始解析，并且将定义的信息保存起来。注意，此时还没有初始
>   化Bean,也就没有Bean的实例，它有的仅仅是Bean的定义。
> * 然后就会把Bean定义发布到Spring IoC容器中。此时，IoC 容器也只有Bean的定义，还是
>   没有Bean的实例生成。
>
> 完成了这3步只是一个资源定位并将Bean的定义发布到IoC容器的过程，还没有Bean实例的生成，更没有完成依赖注入。在默认的情况下，Spring 会继续去完成Bean的实例化和依赖注入，这样从IoC容器中就可以得到一个依赖注入完成的Bean。但是，有些Bean会受到变化因素的影响，这时我们倒希望是取出Bean的时候完成初始化和依赖注入，换句话说就是让那些Bean只是将定义发布到IoC容器而不做实例化和依赖注入，当我们取出来的时候才做初始化和依赖注入等操作。

* Spring Bean的初始化流程

![image-20230305153157317](images/Spring%E6%80%BB%E7%BB%93/image-20230305153157317.png)

* Spring bean生命周期

![image-20230305153252288](images/Spring%E6%80%BB%E7%BB%93/image-20230305153252288.png)

![2w字搞懂Spring Bean的一生_spring_12](images/Spring%E6%80%BB%E7%BB%93/resize,m_fixed,w_1184.webp)



> Bean 生命周期的整个执行过程描述如下。
>
> 1. 根据配置情况调用 Bean 构造方法或工厂方法实例化 Bean。
> 2. 利用依赖注入完成 Bean 中所有属性值的配置注入。
> 3. 如果 Bean 实现了 BeanNameAware 接口，则 Spring 调用 Bean 的 setBeanName() 方法传入当前 Bean 的 id 值。
> 4. 如果 Bean 实现了 BeanFactoryAware 接口，则 Spring 调用 setBeanFactory() 方法传入当前工厂实例的引用。
> 5. 如果 Bean 实现了 ApplicationContextAware 接口，则 Spring 调用 setApplicationContext() 方法传入当前 ApplicationContext 实例的引用。
> 6. 如果 BeanPostProcessor 和 Bean 关联，则 Spring 将调用该接口的预初始化方法 postProcessBeforeInitialzation() 对 Bean 进行加工操作，此处非常重要，Spring 的 AOP 就是利用它实现的。
> 7. 如果 Bean 实现了 InitializingBean 接口，则 Spring 将调用 afterPropertiesSet() 方法。
> 8. 如果在配置文件中通过 init-method 属性指定了初始化方法，则调用该初始化方法。
> 9. 如果 BeanPostProcessor 和 Bean 关联，则 Spring 将调用该接口的初始化方法 postProcessAfterInitialization()。此时，Bean 已经可以被应用系统使用了。
> 10. 如果在 <bean> 中指定了该 Bean 的作用范围为 scope="singleton"，则将该 Bean 放入 Spring IoC 的缓存池中，将触发 Spring 对该 Bean 的生命周期管理；如果在 <bean> 中指定了该 Bean 的作用范围为 scope="prototype"，则将该 Bean 交给调用者，调用者管理该 Bean 的生命周期，Spring 不再管理该 Bean。
> 11. 如果 Bean 实现了 DisposableBean 接口，则 Spring 会调用 destory() 方法将 Spring 中的 Bean 销毁；如果在配置文件中通过 destory-method 属性指定了 Bean 的销毁方法，则 Spring 将调用该方法对 Bean 进行销毁。

### 单例bean的线程安全问题

单例 bean 存在线程安全问题，主要是因为当多个线程操作同一个对象的时候是存在资源竞争的。

常见的有两种解决办法：

1. 在 bean 中尽量避免定义可变的成员变量。
2. 在类中定义一个 `ThreadLocal` 成员变量，将需要的可变成员变量保存在 `ThreadLocal` 中(推荐的一种方式)。

不过，大部分 bean 实际都是无状态(没有实例变量)的(比如 Dao、Service)，这种情况下， bean 是线程安全的。

### @Component 和 @Bean 的区别是什么？

1. `@Component` 注解作用于类，而`@Bean`注解作用于方法。
2. `@Component`通常是通过类路径扫描来自动侦测以及自动装配到 Spring 容器中(我们可以使用 `@ComponentScan` 注解定义要扫描的路径从中找出标识了需要装配的类自动装配到 Spring 的 bean 容器中)。`@Bean` 注解通常是我们在标有该注解的方法中定义产生这个 bean,`@Bean`告诉了 Spring 这是某个类的实例，当我需要用它的时候还给我。
3. `@Bean` 注解比 `@Component` 注解的自定义性更强，而且很多地方我们只能通过 `@Bean` 注解来注册 bean。比如当我们引用第三方库中的类需要装配到 `Spring`容器时，则只能通过 `@Bean`来实现。

`@Bean`注解使用示例：

```java
@Configuration
public class AppConfig {
    @Bean
    public TransferService transferService() {
        return new TransferServiceImpl();
    }

}
```

上面的代码相当于下面的 xml 配置

```xml
<beans>
    <bean id="transferService" class="com.acme.TransferServiceImpl"/>
</beans>
```

下面这个例子是通过 `@Component` 无法实现的。

```java
@Bean
public OneService getService(status) {
    case (status)  {
        when 1:
                return new serviceImpl1();
        when 2:
                return new serviceImpl2();
        when 3:
                return new serviceImpl3();
    }
}
```

### 将一个类声明为 bean 的注解有哪些?

我们一般使用 `@Autowired` 注解自动装配 bean，要想把类标识成可用于 `@Autowired` 注解自动装配的 bean 的类,采用以下注解可实现：

- `@Component` ：通用的注解，可标注任意类为 `Spring` 组件。如果一个 Bean 不知道属于哪个层，可以使用`@Component` 注解标注。
- `@Repository` : 对应持久层即 Dao 层，主要用于数据库相关操作。
- `@Service` : 对应服务层，主要涉及一些复杂的逻辑，需要用到 Dao 层。
- `@Controller` : 对应 Spring MVC 控制层，主要用户接受用户请求并调用 Service 层返回数据给前端页面。



## Spring的依赖注入

### 什么是Spring的依赖注入？

所谓依赖注入(Dependency Injection)，即组件之间的依赖关系由容器在应用系统运行期来决定，也就是由容器动态地将某种依赖关系的目标对象实例注入到应用系统中的各个关联的组件之中。

在解耦的过程中，我们将对象的创建交给Spring容器管理，当我们需要用其他类的对象，由Spring提供，我们只需在配置文件里声明即可。A类使用B类，就产生依赖关系，Spring给我们解决依赖关系就是依赖注入(DI)

### 依赖注入有什么优势

依赖注入之所以更流行是因为它是一种更可取的方式：让容器全权负责依赖查询，受管组件只需要暴露JavaBean的setter方法或者带参数的构造器或者接口，使容器可以在初始化时组装对象的依赖关系。其与依赖查找方式相比，主要优势为：

- 查找定位操作与应用代码完全无关。
- 不依赖于容器的API，可以很容易地在任何容器以外使用应用对象。
- 不需要特殊的接口，绝大多数对象可以做到完全不必依赖容器。

### 有哪些不同类型的依赖注入实现方式？

依赖注入是时下最流行的IoC实现方式，依赖注入分为接口注入(Interface Injection)，Setter方法注入(Setter Injection)和构造器注入(Constructor Injection)三种方式。其中接口注入由于在灵活性和易用性比较差，现在从Spring4开始已被废弃。

**构造器依赖注入**：构造器依赖注入通过容器触发一个类的构造器来实现的，该类有一系列参数，每个参数代表一个对其他类的依赖。

**Setter方法注入**：Setter方法注入是容器通过调用无参构造器或无参static工厂 方法实例化bean之后，调用该bean的setter方法，即实现了基于setter的依赖注入。

### 构造器依赖注入和 Setter方法注入的区别

















## Spring事务

Spring事务的本质其实就是数据库对事务的支持，没有数据库的事务支持，spring是无法提供事务功能的。

### Spring 支持两种方式的事务管理

#### 1)编程式事务管理

通过 `TransactionTemplate`或者`TransactionManager`手动管理事务，实际应用中很少使用，但是对于你理解 Spring 事务管理原理有帮助。

使用`TransactionTemplate` 进行编程式事务管理的示例代码如下：

```java
@Autowired
private TransactionTemplate transactionTemplate;

public void testTransaction() {

        transactionTemplate.execute(new TransactionCallbackWithoutResult() {
            @Override
            protected void doInTransactionWithoutResult(TransactionStatus transactionStatus) {

                try {

                    // ....  业务代码
                } catch (Exception e){
                    //回滚
                    transactionStatus.setRollbackOnly();
                }

            }
        });
}
```

使用 `TransactionManager` 进行编程式事务管理的示例代码如下：

```java
@Autowired
private PlatformTransactionManager transactionManager;

public void testTransaction() {

  TransactionStatus status = transactionManager.getTransaction(new DefaultTransactionDefinition());
          try {
               // ....  业务代码
              transactionManager.commit(status);
          } catch (Exception e) {
              transactionManager.rollback(status);
          }
}
```

#### 2)声明式事务管理

推荐使用(代码侵入性最小)，实际是通过 AOP 实现(基于`@Transactional` 的全注解方式使用最多)。

使用 `@Transactional`注解进行事务管理的示例代码如下：

```java
@Transactional(propagation=propagation.PROPAGATION_REQUIRED)
public void aMethod {
  //do something
  B b = new B();
  C c = new C();
  b.bMethod();
  c.cMethod();
}
```

### Spring 事务管理接口介绍

Spring 框架中，事务管理相关最重要的 3 个接口如下：

- **`PlatformTransactionManager`**： (平台)事务管理器，Spring 事务策略的核心。
- **`TransactionDefinition`**： 事务定义信息(事务隔离级别、传播行为、超时、只读、回滚规则)。
- **`TransactionStatus`**： 事务运行状态。

**`PlatformTransactionManager`** 会根据 **`TransactionDefinition`** 的定义比如事务超时时间、隔离级别、传播行为等来进行事务管理 ，而 **`TransactionStatus`** 接口则提供了一些方法来获取事务相应的状态比如是否新事务、是否可以回滚等等。

#### PlatformTransactionManager：事务管理接口

**Spring 并不直接管理事务，而是提供了多种事务管理器** 。Spring 事务管理器的接口是： **`PlatformTransactionManager`** 。

通过这个接口，Spring 为各个平台如 JDBC(`DataSourceTransactionManager`)、Hibernate(`HibernateTransactionManager`)、JPA(`JpaTransactionManager`)等都提供了对应的事务管理器，但是具体的实现就是各个平台自己的事情了。

`PlatformTransactionManager`接口中定义了三个方法：

```java
package org.springframework.transaction;

import org.springframework.lang.Nullable;

public interface PlatformTransactionManager {
    //获得事务
    TransactionStatus getTransaction(@Nullable TransactionDefinition var1) throws TransactionException;
    //提交事务
    void commit(TransactionStatus var1) throws TransactionException;
    //回滚事务
    void rollback(TransactionStatus var1) throws TransactionException;
}
```

**为什么要定义或者说抽象出来`PlatformTransactionManager`这个接口呢？**

主要是因为要将事务管理行为抽象出来，然后不同的平台去实现它，这样我们可以保证提供给外部的行为不变，方便我们扩展。

#### TransactionDefinition:事务属性

事务管理器接口 **`PlatformTransactionManager`** 通过 **`getTransaction(TransactionDefinition definition)`** 方法来得到一个事务，这个方法里面的参数是 **`TransactionDefinition`** 类 ，这个类就定义了一些基本的事务属性。

那么什么是 **事务属性** 呢？

事务属性可以理解成事务的一些基本配置，描述了事务策略如何应用到方法上。

事务属性包含了 5 个方面：

- 隔离级别
- 传播行为
- 回滚规则
- 是否只读
- 事务超时

#### TransactionStatus:事务状态

`TransactionStatus`接口用来记录事务的状态 该接口定义了一组方法,用来获取或判断事务的相应状态信息。

`PlatformTransactionManager.getTransaction(…)`方法返回一个 `TransactionStatus` 对象。

**TransactionStatus 接口接口内容如下：**

```java
public interface TransactionStatus{
    boolean isNewTransaction(); // 是否是新的事务
    boolean hasSavepoint(); // 是否有恢复点
    void setRollbackOnly();  // 设置为只回滚
    boolean isRollbackOnly(); // 是否为只回滚
    boolean isCompleted; // 是否已完成
}
```

### 事务属性详解

#### 事务传播行为

**事务传播行为是为了解决业务层方法之间互相调用的事务问题**。

当事务方法被另一个事务方法调用时，必须指定事务应该如何传播。例如：方法可能继续在现有事务中运行，也可能开启一个新事务，并在自己的事务中运行。

**举个例子！**

我们在 A 类的`aMethod()`方法中调用了 B 类的 `bMethod()` 方法。这个时候就涉及到业务层方法之间互相调用的事务问题。如果我们的 `bMethod()`如果发生异常需要回滚，如何配置事务传播行为才能让 `aMethod()`也跟着回滚呢？

```java
Class A {
    @Transactional(propagation=propagation.xxx)
    public void aMethod {
        //do something
        B b = new B();
        b.bMethod();
    }
}

Class B {
    @Transactional(propagation=propagation.xxx)
    public void bMethod {
       //do something
    }
}
```

在`TransactionDefinition`定义中包括了如下几个表示传播行为的常量：

```java
public interface TransactionDefinition {
    int PROPAGATION_REQUIRED = 0;
    int PROPAGATION_SUPPORTS = 1;
    int PROPAGATION_MANDATORY = 2;
    int PROPAGATION_REQUIRES_NEW = 3;
    int PROPAGATION_NOT_SUPPORTED = 4;
    int PROPAGATION_NEVER = 5;
    int PROPAGATION_NESTED = 6;
    ......
}
```

不过如此，为了方便使用，Spring 会相应地定义了一个枚举类：`Propagation`

```java
package org.springframework.transaction.annotation;

import org.springframework.transaction.TransactionDefinition;

public enum Propagation {

    // (默认值)如果当前存在事务，就加入该事务，如果当前没有事务，就创建一个新事务，(该设置是最常用的设置)。
    REQUIRED(TransactionDefinition.PROPAGATION_REQUIRED),
	
    // 支持当前事务，如果当前存在事务，就加入该事务，如果当前不存在事务，就以非事务执行。
    SUPPORTS(TransactionDefinition.PROPAGATION_SUPPORTS),

    // 支持当前事务，如果当前存在事务，就加入该事务，如果当前不存在事务，就抛出异常。
    MANDATORY(TransactionDefinition.PROPAGATION_MANDATORY),

    // 创建新事务，无论当前存不存在事务，都创建新事务。
    REQUIRES_NEW(TransactionDefinition.PROPAGATION_REQUIRES_NEW),

    // 以非事务方式执行操作，如果当前存在事务，就把当前事务挂起。
    NOT_SUPPORTED(TransactionDefinition.PROPAGATION_NOT_SUPPORTED),

    // 以非事务方式执行，如果当前存在事务，则抛出异常。
    NEVER(TransactionDefinition.PROPAGATION_NEVER),

    // 如果当前存在事务，则在嵌套事务内执行。如果当前没有事务，则按REQUIRED属性执行。
    NESTED(TransactionDefinition.PROPAGATION_NESTED);


    private final int value;

    Propagation(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

}
```

##### **`1.TransactionDefinition.PROPAGATION_REQUIRED`**

使用的最多的一个事务传播行为，我们平时经常使用的`@Transactional`注解默认使用就是这个事务传播行为。如果当前存在事务，则加入该事务；如果当前没有事务，则创建一个新的事务。也就是说：

1. 如果外部方法没有开启事务的话，`Propagation.REQUIRED`修饰的内部方法会新开启自己的事务，且开启的事务相互独立，互不干扰。
2. 如果外部方法开启事务并且被`Propagation.REQUIRED`的话，所有`Propagation.REQUIRED`修饰的内部方法和外部方法均属于同一事务 ，只要一个方法回滚，整个事务均回滚。

举个例子：如果我们上面的`aMethod()`和`bMethod()`使用的都是`PROPAGATION_REQUIRED`传播行为的话，两者使用的就是同一个事务，只要其中一个方法回滚，整个事务均回滚。

```java
Class A {
    @Transactional(propagation=propagation.PROPAGATION_REQUIRED)
    public void aMethod {
        //do something
        B b = new B();
        b.bMethod();
    }
}

Class B {
    @Transactional(propagation=propagation.PROPAGATION_REQUIRED)
    public void bMethod {
       //do something
    }
}
```

##### **`2.TransactionDefinition.PROPAGATION_REQUIRES_NEW`**

创建一个新的事务，如果当前存在事务，则把当前事务挂起。也就是说不管外部方法是否开启事务，`Propagation.REQUIRES_NEW`修饰的内部方法会新开启自己的事务，且开启的事务相互独立，互不干扰。

举个例子：如果我们上面的`bMethod()`使用`PROPAGATION_REQUIRES_NEW`事务传播行为修饰，`aMethod`还是用`PROPAGATION_REQUIRED`修饰的话。如果`aMethod()`发生异常回滚，`bMethod()`不会跟着回滚，因为 `bMethod()`开启了独立的事务。但是，如果 `bMethod()`抛出了未被捕获的异常并且这个异常满足事务回滚规则的话,`aMethod()`同样也会回滚，因为这个异常被 `aMethod()`的事务管理机制检测到了。

```java
Class A {
    @Transactional(propagation=propagation.PROPAGATION_REQUIRED)
    public void aMethod {
        //do something
        B b = new B();
        b.bMethod();
    }
}

Class B {
    @Transactional(propagation=propagation.REQUIRES_NEW)
    public void bMethod {
       //do something
    }
}
```

##### **3.`TransactionDefinition.PROPAGATION_NESTED`**:

如果当前存在事务，则创建一个事务作为当前事务的嵌套事务来运行；如果当前没有事务，则该取值等价于`TransactionDefinition.PROPAGATION_REQUIRED`。也就是说：

1. 在外部方法未开启事务的情况下`Propagation.NESTED`和`Propagation.REQUIRED`作用相同，修饰的内部方法都会新开启自己的事务，且开启的事务相互独立，互不干扰。
2. 如果外部方法开启事务的话，`Propagation.NESTED`修饰的内部方法属于外部事务的子事务，外部主事务回滚的话，子事务也会回滚，而内部子事务可以单独回滚而不影响外部主事务和其他子事务。

这里还是简单举个例子：

如果 `aMethod()` 回滚的话，`bMethod()`和`bMethod2()`都要回滚，而`bMethod()`回滚的话，并不会造成 `aMethod()` 和`bMethod()2`回滚。

```java
Class A {
    @Transactional(propagation=propagation.PROPAGATION_REQUIRED)
    public void aMethod {
        //do something
        B b = new B();
        b.bMethod();
        b.bMethod2();
    }
}

Class B {
    @Transactional(propagation=propagation.PROPAGATION_NESTED)
    public void bMethod {
       //do something
    }
    @Transactional(propagation=propagation.PROPAGATION_NESTED)
    public void bMethod2 {
       //do something
    }
}
```

##### **`TransactionDefinition.PROPAGATION_MANDATORY`**

如果当前存在事务，则加入该事务；如果当前没有事务，则抛出异常。(mandatory：强制性)

这个使用的很少，就不举例子来说了。

**若是错误的配置以下 3 种事务传播行为，事务将不会发生回滚，这里不对照案例讲解了，使用的很少。**

- **`TransactionDefinition.PROPAGATION_SUPPORTS`**: 如果当前存在事务，则加入该事务；如果当前没有事务，则以非事务的方式继续运行。
- **`TransactionDefinition.PROPAGATION_NOT_SUPPORTED`**: 以非事务方式运行，如果当前存在事务，则把当前事务挂起。
- **`TransactionDefinition.PROPAGATION_NEVER`**: 以非事务方式运行，如果当前存在事务，则抛出异常。

更多关于事务传播行为的内容请看这篇文章：[《太难了~面试官让我结合案例讲讲自己对 Spring 事务传播行为的理解。》](https://mp.weixin.qq.com/s?__biz=Mzg2OTA0Njk0OA==&mid=2247486668&idx=2&sn=0381e8c836442f46bdc5367170234abb&chksm=cea24307f9d5ca11c96943b3ccfa1fc70dc97dd87d9c540388581f8fe6d805ff548dff5f6b5b&token=1776990505&lang=zh_CN#rd)

#### 事务的隔离级别

`TransactionDefinition` 接口中定义了五个表示隔离级别的常量：

```java
public interface TransactionDefinition {
    ......
    int ISOLATION_DEFAULT = -1;
    int ISOLATION_READ_UNCOMMITTED = 1;
    int ISOLATION_READ_COMMITTED = 2;
    int ISOLATION_REPEATABLE_READ = 4;
    int ISOLATION_SERIALIZABLE = 8;
    ......
}
```

和事务传播行为这块一样，为了方便使用，Spring 也相应地定义了一个枚举类：`Isolation`

```java
public enum Isolation {

    DEFAULT(TransactionDefinition.ISOLATION_DEFAULT),

    READ_UNCOMMITTED(TransactionDefinition.ISOLATION_READ_UNCOMMITTED),

    READ_COMMITTED(TransactionDefinition.ISOLATION_READ_COMMITTED),

    REPEATABLE_READ(TransactionDefinition.ISOLATION_REPEATABLE_READ),

    SERIALIZABLE(TransactionDefinition.ISOLATION_SERIALIZABLE);

    private final int value;

    Isolation(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

}
```

下面我依次对每一种事务隔离级别进行介绍：

- **`TransactionDefinition.ISOLATION_DEFAULT`** :使用后端数据库默认的隔离级别，MySQL 默认采用的 `REPEATABLE_READ` 隔离级别 Oracle 默认采用的 `READ_COMMITTED` 隔离级别.
- **`TransactionDefinition.ISOLATION_READ_UNCOMMITTED`** :最低的隔离级别，使用这个隔离级别很少，因为它允许读取尚未提交的数据变更，**可能会导致脏读、幻读或不可重复读**
- **`TransactionDefinition.ISOLATION_READ_COMMITTED`** : 允许读取并发事务已经提交的数据，**可以阻止脏读，但是幻读或不可重复读仍有可能发生**
- **`TransactionDefinition.ISOLATION_REPEATABLE_READ`** : 对同一字段的多次读取结果都是一致的，除非数据是被本身事务自己所修改，**可以阻止脏读和不可重复读，但幻读仍有可能发生。**
- **`TransactionDefinition.ISOLATION_SERIALIZABLE`** : 最高的隔离级别，完全服从 ACID 的隔离级别。所有的事务依次逐个执行，这样事务之间就完全不可能产生干扰，也就是说，**该级别可以防止脏读、不可重复读以及幻读**。但是这将严重影响程序的性能。通常情况下也不会用到该级别。

#### 事务的超时属性

所谓事务超时，就是指一个事务所允许执行的最长时间，如果超过该时间限制但事务还没有完成，则自动回滚事务。在 `TransactionDefinition` 中以 int 的值来表示超时时间，其单位是秒，默认值为-1。

#### 事务的只读属性

```java
package org.springframework.transaction;

import org.springframework.lang.Nullable;

public interface TransactionDefinition {
    ......
    // 返回是否为只读事务，默认值为 false
    boolean isReadOnly();

}
```

对于只有读取数据查询的事务，可以指定事务类型为 readonly，即只读事务。只读事务不涉及数据的修改，数据库会提供一些优化手段，适合用在有多条数据库查询操作的方法中。

拿 MySQL 的 innodb 举例子，根据官网 https://dev.mysql.com/doc/refman/5.7/en/innodb-autocommit-commit-rollback.html 描述：

> MySQL 默认对每一个新建立的连接都启用了`autocommit`模式。在该模式下，每一个发送到 MySQL 服务器的`sql`语句都会在一个单独的事务中进行处理，执行结束后会自动提交事务，并开启一个新的事务。

但是，如果你给方法加上了`Transactional`注解的话，这个方法执行的所有`sql`会被放在一个事务中。如果声明了只读事务的话，数据库就会去优化它的执行，并不会带来其他的什么收益。

如果不加`Transactional`，每条`sql`会开启一个单独的事务，中间被其它事务改了数据，都会实时读取到最新值。

分享一下关于事务只读属性，其他人的解答：

1. 如果你一次执行单条查询语句，则没有必要启用事务支持，数据库默认支持 SQL 执行期间的读一致性；
2. 如果你一次执行多条查询语句，例如统计查询，报表查询，在这种场景下，多条查询 SQL 必须保证整体的读一致性，否则，在前条 SQL 查询之后，后条 SQL 查询之前，数据被其他用户改变，则该次整体的统计查询将会出现读数据不一致的状态，此时，应该启用事务支持

#### 事务回滚规则

这些规则定义了哪些异常会导致事务回滚而哪些不会。默认情况下，事务只有遇到运行期异常(RuntimeException 的子类)时才会回滚，Error 也会导致事务回滚，但是，在遇到检查型(Checked)异常时不会回滚。

如果你想要回滚你定义的特定的异常类型的话，可以这样：

```java
@Transactional(rollbackFor= MyException.class)
```

### @Transactional 注解使用详解

#### @Transactional 的作用范围

1. **方法** ：推荐将注解使用于方法上，不过需要注意的是：**该注解只能应用到 public 方法上，否则不生效。**
2. **类** ：如果这个注解使用在类上的话，表明该注解对该类中所有的 public 方法都生效。
3. **接口** ：不推荐在接口上使用。

#### @Transactional 的常用配置参数

**`@Transactional` 的常用配置参数总结(只列巨额 5 个平时比较常用的)：**

| 属性名      | 说明                                                         |
| ----------- | ------------------------------------------------------------ |
| propagation | 事务的传播行为，默认值为 REQUIRED，可选的值在上面介绍过      |
| isolation   | 事务的隔离级别，默认值采用 DEFAULT，可选的值在上面介绍过     |
| timeout     | 事务的超时时间，默认值为-1(不会超时)。如果超过该时间限制但事务还没有完成，则自动回滚事务。 |
| readOnly    | 指定事务是否为只读事务，默认值为 false。                     |
| rollbackFor | 用于指定能够触发事务回滚的异常类型，并且可以指定多个异常类型。 |

#### @Transactional 事务注解原理

**`@Transactional` 的工作机制是基于 AOP 实现的，AOP 又是使用动态代理实现的。如果目标对象实现了接口，默认情况下会采用 JDK 的动态代理，如果目标对象没有实现了接口,会使用 CGLIB 动态代理。**

如果一个类或者一个类中的 public 方法上被标注`@Transactional` 注解的话，Spring 容器就会在启动的时候为其创建一个代理类，在调用被`@Transactional` 注解的 public 方法的时候，实际调用的是，`TransactionInterceptor` 类中的 `invoke()`方法。这个方法的作用就是在目标方法之前开启事务，方法执行过程中如果遇到异常的时候回滚事务，方法调用完成之后提交事务。

#### **Spring AOP 自调用问题**

**若同一类中的其他没有 `@Transactional` 注解的方法内部调用有 `@Transactional` 注解的方法，有`@Transactional` 注解的方法的事务会失效。**

这是由于`Spring AOP`代理的原因造成的，因为只有当 `@Transactional` 注解的方法在类以外被调用的时候，Spring 事务管理才生效。

`MyService` 类中的`method1()`调用`method2()`就会导致`method2()`的事务失效。

```java
@Service
public class MyService {

private void method1() {
     method2();
     //......
}
@Transactional
 public void method2() {
     //......
  }
}
```

解决办法就是避免同一类中自调用或者使用 AspectJ 取代 Spring AOP 代理。

#### `@Transactional` 的使用注意事项总结

1. `@Transactional` 注解只有作用到 public 方法上事务才生效，不推荐在接口上使用；
2. 避免同一个类中调用 `@Transactional` 注解的方法，这样会导致事务失效；
3. 正确的设置 `@Transactional` 的 rollbackFor 和 `propagation` 属性，否则事务可能会回滚失败

### @Transactional(rollbackFor = Exception.class)注解了解吗？

`Exception` 分为运行时异常 `RuntimeException` 和非运行时异常。事务管理对于企业应用来说是至关重要的，即使出现异常情况，它也可以保证数据的一致性。

当 `@Transactional` 注解作用于类上时，该类的所有 public 方法将都具有该类型的事务属性，同时，我们也可以在方法级别使用该标注来覆盖类级别的定义。如果类或者方法加了这个注解，那么这个类里面的方法抛出异常，就会回滚，数据库里面的数据也会回滚。

在 `@Transactional` 注解中如果不配置`rollbackFor`属性,那么事务只会在遇到`RuntimeException`的时候才会回滚，加上 `rollbackFor=Exception.class`,可以让事务在遇到非运行时异常时也回滚。

## Spring 框架中用到了哪些设计模式？

- **工厂模式** : Spring 使用工厂模式通过 `BeanFactory`、`ApplicationContext` 创建 bean 对象。
- **代理模式** : Spring AOP 功能的实现。
- **单例模式** : Spring 中的 Bean 默认都是单例的。
- **模板模式** : Spring 中 `jdbcTemplate`、`hibernateTemplate` 等以 Template 结尾的对数据库操作的类，它们就使用到了模板模式。
- **包装器模式** : 我们的项目需要连接多个数据库，而且不同的客户在每次访问中根据需要会去访问不同的数据库。这种模式让我们可以根据客户的需求能够动态切换不同的数据源。
- **观察者模式:** Spring 事件驱动模型就是观察者模式很经典的一个应用。
- **适配器模式** : Spring AOP 的增强或通知(Advice)使用到了适配器模式、spring MVC 中也是用到了适配器模式适配`Controller`。

## IOC与DI区别

> DI：Dependancy Injection(依赖注⼊)
> 怎么理解：
> IOC和DI描述的是同⼀件事情，只不过⻆度不⼀样罢了

<img src="images/Spring%E6%80%BB%E7%BB%93/image-20230304162621310.png" alt="image-20230304162621310" style="zoom: 67%;" />

## Spring 的循环依赖问题

## 什么是循环依赖

什么是循环依赖呢？可以把它拆分成循环和依赖两个部分来看，**循环**是指计算机领域中的循环，执行流程形成闭合回路；**依赖**就是完成这个动作的前提准备条件，和我们平常说的依赖大体上含义一致。放到 Spring 中来看就一个或多个 Bean 实例之间存在直接或间接的依赖关系，构成循环调用，循环依赖可以分为直接循环依赖和间接循环依赖，直接循环依赖的简单依赖场景：Bean A 依赖于 Bean B，然后 Bean B 又反过来依赖于 Bean A（Bean A -> Bean B -> Bean A），间接循环依赖的一个依赖场景：Bean A 依赖于 Bean B，Bean B 依赖于 Bean C，Bean C 依赖于 Bean A，中间多了一层，但是最终还是形成循环（Bean A -> Bean B -> Bean C -> Bean A）。

## 循环依赖的类型

第一种是**自依赖**，自己依赖自己从而形成循环依赖，一般情况下不会发生这种循环依赖，因为它很容易被我们发现。

![1.png](images/Spring%E6%80%BB%E7%BB%93/LGgVfXmPKU3EwcS.png)

第二种是**直接依赖**，发生在两个对象之间，比如：Bean A 依赖于 Bean B，然后 Bean B 又反过来依赖于 Bean A，如果比较细心的话肉眼也不难发现。

![2.png](images/Spring%E6%80%BB%E7%BB%93/yNlpDUtmQT2RXnu.png)

第三种是**间接依赖**，这种依赖类型发生在 3 个或者以上的对象依赖的场景，间接依赖最简单的场景：Bean A 依赖于 Bean B，Bean B 依赖于 Bean C，Bean C 依赖于 Bean A，可以想象当中间依赖的对象很多时，是很难发现这种循环依赖的，一般都是借助一些工具排查。

![3.png](images/Spring%E6%80%BB%E7%BB%93/OH3JobWDSPqrYZE.png)

## Spring 对几种循环依赖场景支持情况

在介绍 Spring 对几种循环依赖场景的处理方式之前，先来看看在 Spring 中循环依赖会有哪些场景，大部分常见的场景总结如下图所示：

![4.png](images/Spring%E6%80%BB%E7%BB%93/qu4Y6s8nBi1NvRa.png)

有句话说得好，源码之下无秘密，下面就通过源码探究这些场景 Spring 是否支持，以及支持的原因或者不支持的原因，话不多说，下面进入正题。

### 第 ① 种场景——单例 Bean 的 setter 注入

这种使用方式也是最常用的方式之一，假设有两个 Service 分别为 OrderService（订单相关业务逻辑）和 TradeService（交易相关业务逻辑），代码如下：

```Java

@Service
public class OrderService {

  @Autowired
  private TradeService tradeService;

  public void testCreateOrder() {
    // omit business logic ...
  }

}

@Service
public class TradeService {

  @Autowired
  private OrderService orderService;

  public void testCreateTrade() { 
    // omit business logic ...
   }

}
```

这种循环依赖场景，程序是可以正常运行的，从代码上看确实是有循环依赖了，也就是说 Spring 是支持这种循环依赖场景的，这里我们察觉不到循环依赖的原因是 Spring 已经默默地解决了。

假设没有做任何处理，按照正常的创建逻辑来执行的话，流程是这样的：容器先创建 OrderService，发现依赖于 TradeService，再创建 OrderService，又发现依赖于 TradeService ... ，发生无限死循环，最后发生栈溢出错误，程序停止。为了支持这种常见的循环依赖场景，Spring 将创建对象分为如下几个步骤：

1. 实例化一个新对象（在堆中），但此时尚未给对象属性赋值
2. 给对象赋值
3. 调用 BeanPostProcessor 的一些实现类的方法，在这个阶段，Bean 已经创建并赋值属性完成。这时候容器中所有实现 BeanPostProcessor 接口的类都会被调用（e.g. AOP）
4. 初始化（如果实现了 InitializingBean，就会调用这个类的方法来完成类的初始化）
5. 返回创建出来的实例

为此，Spring 引入了三级缓存来处理这个问题（三级缓存定义在 org.springframework.beans.factory.support.DefaultSingletonBeanRegistry 中），第一级缓存 singletonObjects 用于存放完全初始化好的 Bean，从该缓存中取出的 Bean 可以直接使用，第二级缓存 earlySingletonObjects 用于存放提前暴露的单例对象的缓存，存放原始的 Bean 对象（属性尚未赋值），用于解决循环依赖，第三级缓存 singletonFactories 用于存放单例对象工厂的缓存，存放 Bean 工厂对象，用于解决循环依赖。上述实例使用三级缓存的处理流程如下所示：

![5.png](images/Spring%E6%80%BB%E7%BB%93/jPUQ6Sfs8mpBtLg.png)

如果你看过三级缓存的定义源码的话，可能也有这样的疑问：为什么第三级的缓存的要定义成 Map<String, ObjectFactory<?>>，不能直接缓存对象吗？这里不能直接保存对象实例，因为这样就无法对其做增强处理了。详情可见类 org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory#doCreateBean 方法部分源码如下：

![6.png](https://i.loli.net/2021/07/17/ribwoNKSgs7L3Jn.png)

### 第 ② 种场景——多例 Bean 的 setter 注入

这种方式平常使用得相对较少，还是使用前文的两个 Service 作为示例，唯一不同的地方是现在都声明为多例了，示例代码如下：

```Java
/**
 * @author mghio
 * @since 2021-07-17
 */
@Service
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class OrderService {

  @Autowired
  private TradeService tradeService;

  public void testCreateOrder() {
    // omit business logic ...
  }

}
/**
 * @author mghio
 * @since 2021-07-17
 */
@Service
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class TradeService {

  @Autowired
  private OrderService orderService;

  public void testCreateTrade() { 
    // omit business logic ...
   }

}
```

如果你在 Spring 中运行以上代码，是可以正常启动成功的，原因是在类 org.springframework.beans.factory.support.DefaultListableBeanFactory 的 preInstantiateSingletons() 方法预实例化处理时，过滤掉了多例类型的 Bean，方法部分代码如下：

![7.png](https://i.loli.net/2021/07/17/jO3nk4vrZ9yhXSi.png)

但是如果此时有其它单例类型的 Bean 依赖到这些多例类型的 Bean 的时候，就会报如下所示的循环依赖错误了。

![8.png](images/Spring%E6%80%BB%E7%BB%93/MDVst5Er2UXCRzm.png)

### 第 ③ 种场景——代理对象的 setter 注入

这种场景也会经常碰到，有时候为了实现异步调用会在 XXXXService 类的方法上添加 @Async 注解，让方法对外部变成异步调用（前提要是要在启用类上添加启用注解哦 @EnableAsync），示例代码如下：

```Java
@EnableAsync
@SpringBootApplication
public class BlogMghioCodeApplication {

  public static void main(String[] args) {
    SpringApplication.run(BlogMghioCodeApplication.class, args);
  }

}

@Service
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class OrderService {

  @Autowired
  private TradeService tradeService;

  @Async
  public void testCreateOrder() {
    // omit business logic ...
  }

}

@Service
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class TradeService {

  @Autowired
  private OrderService orderService;

  public void testCreateTrade() { 
    // omit business logic ...
   }

}
```

在标有 @Async 注解的场景下，在添加启用异步注解（@EnableAsync）后，代理对象会通过 AOP 自动生成。以上代码运行会抛出 BeanCurrentlyInCreationException 异常。运行的大致流程如下图所示：

![9.png](https://i.loli.net/2021/07/17/UMEi1GCOo3FDmKB.png)

源码在 org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory 类的方法 doCreateBean 中，会判断第二级缓存 earlySingletonObjects 中的对象是否等于原始对象，方法判断部分的源码如下：

![10.png](https://i.loli.net/2021/07/17/685tnVsEjD7aqWh.png)

二级缓存存放的对象是 AOP 生成出来的代理对象，和原始对象不相等，所以抛出了循环依赖错误。如果细看源码的话，会发现如果二级缓存是空的话会直接返回（因为比较的对象都没有，根本无法校验了），就不会报循环依赖的错误了，默认情况下，Spring 是按照文件全路径递归搜索，按路径 + 文件名 排序，排序靠前先加载，所以我们只要调整这两个类名称，让方法标有 @Async 注解的类排序在后面即可。

### 第 ④ 种场景——构造器注入

构造器注入的场景很少，到目前为止我所接触过的公司项目和开源项目中还没遇到使用构造器注入的，虽然用得不多，但是需要知道 Spring 为什么不支持这种场景的循环依赖，构造器注入的示例代码如下：

```Java
@Service
public class OrderService {

  private TradeService tradeService;

  public OrderService(TradeService tradeService) {
    this.tradeService = tradeService;
  }

  public void testCreateOrder() {
    // omit business logic ...
  }

}

@Service
public class TradeService {

  private OrderService orderService;

  public TradeService(OrderService orderService) {
    this.orderService = orderService;
  }

  public void testCreateTrade() {
    // omit business logic ...
  }

}
```

构造器注入无法加入到第三级缓存当中，Spring 框架中的三级缓存在此场景下无用武之地，所以只能抛出异常，整体流程如下（虚线表示无法执行，为了直观也把下一步画出来了）:

![11.png](https://i.loli.net/2021/07/17/k3f7VgNIyQjnUwG.png)

### 第 ⑤ 种场景——DependsOn 循环依赖

这种 DependsOn 循环依赖场景很少，一般情况下不怎么使用，了解一下会导致循环依赖的问题即可，@DependsOn 注解主要是用来指定实例化顺序的，示例代码如下：

```Java

@Service
@DependsOn("tradeService")
public class OrderService {

  @Autowired
  private TradeService tradeService;

  public void testCreateOrder() {
    // omit business logic ...
  }

}

@Service
@DependsOn("orderService")
public class TradeService {

  @Autowired
  private OrderService orderService;

  public void testCreateTrade() {
    // omit business logic ...
  }

}
```

通过上文，我们知道，如果这里的类没有标注 @DependsOn 注解的话是可以正常运行的，因为 Spring 支持单例 setter 注入，但是加了示例代码的 @DependsOn 注解后会报循环依赖错误，原因是在类 org.springframework.beans.factory.support.AbstractBeanFactory 的方法 doGetBean() 中检查了 dependsOn 的实例是否有循环依赖，如果有循环依赖则抛出循环依赖异常，方法判断部分代码如下：

![12.png](images/Spring%E6%80%BB%E7%BB%93/DdnyNJAe15rpkjZ.png)

### 总结

本文主要介绍了什么是循环依赖以及 Spring 对各种循环依赖场景的处理，文中只列出了部分涉及到的源码，都标了所在源码中的位置，感兴趣的朋友可以去看看完整源码，最后 Spring 对各种循环依赖场景的支持情况如下图所示（P.S. Spring 版本：5.1.9.RELEASE）：
![13.png](https://i.loli.net/2021/07/17/KTIwXJSUYdNMOuW.png)