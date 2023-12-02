import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
	id(Plugins.kotlinJvm) version Versions.kotlinJvm
	id(Plugins.springPlugin) version Versions.springPlugin apply false
	id(Plugins.springBoot) version Versions.springBoot apply false
	id(Plugins.dependencyManagement) version Versions.dependencyManagement apply false
}

allprojects {
	repositories {
		mavenCentral()
	}
}

subprojects {
	apply(plugin = Plugins.kotlinJvm)
	apply(plugin = Plugins.springPlugin)
	apply(plugin = Plugins.springBoot)
	apply(plugin = Plugins.dependencyManagement)

	group = Groups.s02Project
	version = Versions.s02Project

	java {
		sourceCompatibility = JavaVersion.VERSION_17
	}

	tasks.withType<KotlinCompile> {
		kotlinOptions {
			freeCompilerArgs += "-Xjsr305=strict"
			jvmTarget = "17"
		}
	}

	tasks.withType<Test> {
		useJUnitPlatform()
	}

	dependencies {
		implementation(Dependencies.jacksonModuleKotlin)
		implementation(Dependencies.Kotlin.reflect)
		testImplementation(Dependencies.SpringBootStarter.test)
		testImplementation(Dependencies.KotlinTest.mockk)
		testImplementation(Dependencies.KotlinTest.kotestRunner)
		testImplementation(Dependencies.KotlinTest.kotestAssertion)
		testImplementation(Dependencies.KotlinTest.kotestProperty)
		testImplementation(Dependencies.KotlinTest.kotestSpringExtention)
		testImplementation(Dependencies.KotlinTest.fixtureMonkey)
		implementation(Dependencies.uuid)
		implementation(Dependencies.springdoc)
	}
}
