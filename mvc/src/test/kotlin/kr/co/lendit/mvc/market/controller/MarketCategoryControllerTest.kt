package kr.co.lendit.mvc.market.controller

import com.navercorp.fixturemonkey.FixtureMonkey
import com.navercorp.fixturemonkey.kotlin.KotlinPlugin
import io.kotest.core.spec.style.DescribeSpec
import io.mockk.every
import io.mockk.junit5.MockKExtension
import io.mockk.mockk
import org.junit.jupiter.api.extension.ExtendWith
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.boot.test.context.TestConfiguration
import org.springframework.context.annotation.Bean
import org.springframework.http.MediaType
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.get
import org.springframework.test.web.servlet.result.MockMvcResultMatchers

//@WebMvcTest(controllers = [MarketCategoryController::class])
//@ExtendWith(MockKExtension::class)
//class MarketCategoryControllerTest(
//    mockMvc: MockMvc,
//    private val marketCategoryService: MarketCategoryService
//) : DescribeSpec({
//
//    describe("카테고리 조회") {
//        it("저장된 모든 카테고리를 반환한다.") {
//            val sut = FixtureMonkey.builder()
//                .plugin(KotlinPlugin())
//                .build()
//
//            every { marketCategoryService.getAllCategories() } returns sut.giveMe(MarketCategory::class.java, 3)
//
//            mockMvc.get("/market/categories").andExpect {
//                status { MockMvcResultMatchers.status().isOk }
//                content { contentType(MediaType.APPLICATION_JSON) }
//                jsonPath("$") { isNotEmpty() }
//                jsonPath("$[*].id") { isNotEmpty() }
//                jsonPath("$[*].name") { isNotEmpty() }
//            }
//        }
//    }
//}) {
//
//    @TestConfiguration
//    class MarketCategoryControllerTestConfiguration {
//         @Bean
//         fun marketCategoryService() = mockk<MarketCategoryService>()
//    }
//}
