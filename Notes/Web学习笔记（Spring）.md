# Spring

## Spring Boot
- 部署与打包
- 集成 Maven / Gradle
  - Gradle 也是用 Maven 下载包，书写格式更简洁
- 修改文件自动刷新

## Spring IoC
- 接口与实现分离，依赖于接口，注入的是实现
- 可用 Java 代码（AppConfig 类）和 Annotation 定义 IoC 配置，而不用写 `applicationContext.xml`
- Scope 定义

## Spring Data
- Declarative Transaction（XML / Annotation）
- 调用 Hibernate ORM
- Repository
  - 不显式使用 `getHibernateTemplate()`，简化 CRUD 操作的编码
  - 定义接口，继承 Repository
  - 函数名遵守一定格式
  - 用 `@Query` 自定义 Query

## Spring MVC

- 类的 Annotation 定义基地址，方法的 Annotation 定义各个 API 的剩余地址和请求方法
- 用 `@RequestParam` 获取 URLEncoded 输入参数（自动进行类型转换）
- 用 `@PathVariable` 获取路径中的参数
- 用 `consumes = "application/json"`，`@RequestBody` 读取 JSON 请求体
- RESTful API 应使用 `@RestController`，返回的对象自动转换为 JSON
- 用 `HttpEntity` 设置响应状态码
- 如何返回 View？（第一次迭代不用，下次再看）
