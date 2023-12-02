object Dependencies {
    object SpringBootStarter {
        const val test = "org.springframework.boot:spring-boot-starter-test"
    }

    object Kotlin {
        const val reflect = "org.jetbrains.kotlin:kotlin-reflect"
    }

    object KotlinTest {
        const val mockk = "io.mockk:mockk:${Versions.mockk}"
        const val kotestRunner = "io.kotest:kotest-runner-junit5:${Versions.kotest}"
        const val kotestAssertion = "io.kotest:kotest-assertions-core:${Versions.kotest}"
        const val kotestProperty = "io.kotest:kotest-property:${Versions.kotest}"
        const val kotestSpringExtention = "io.kotest.extensions:kotest-extensions-spring:${Versions.kotestSpringExtention}"
        const val fixtureMonkey = "com.navercorp.fixturemonkey:fixture-monkey-starter-kotlin:${Versions.fixtureMonkey}"
    }

    const val jacksonModuleKotlin = "com.fasterxml.jackson.module:jackson-module-kotlin"
    const val springdoc = "org.springdoc:springdoc-openapi-starter-webmvc-ui:${Versions.springdoc}"
    const val uuid = "com.github.f4b6a3:uuid-creator:${Versions.uuid}"

}