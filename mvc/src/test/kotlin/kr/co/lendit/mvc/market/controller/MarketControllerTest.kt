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

//@WebMvcTest(controllers = [MarketController::class])
//@ExtendWith(MockKExtension::class)
//class MarketControllerTest(
//    mockMvc: MockMvc,
//    private val marketService: MarketService
//) : DescribeSpec({
//
//    val sut = FixtureMonkey.builder()
//        .plugin(KotlinPlugin())
//        .build()
//
//    describe("상점 조회") {
//        it("카테고리 아이디를 받아 상점을 반환한다.") {
//            val categoryId = "3"
//
//            every { marketService.getMarketList(categoryId) } returns sut.giveMe(MarketResponse::class.java, 3)
//
//            mockMvc.get("/market?categoryId={:1}", categoryId).andExpect {
//                status { MockMvcResultMatchers.status().isOk }
//                content { contentType(MediaType.APPLICATION_JSON) }
//                jsonPath("$") { isNotEmpty() }
//                jsonPath("$[*].categoryId") { isNotEmpty() }
//                jsonPath("$[*].categoryName") { isNotEmpty() }
//                jsonPath("$[*].marketId") { isNotEmpty() }
//                jsonPath("$[*].marketName") { isNotEmpty() }
//                jsonPath("$[0].clickCnt") { isNumber() }
//            }
//        }
//
//        it("상점 아이디를 받아 메뉴를 반환한다") {
//            val marketId = "3"
//
//            every { marketService.getMarketMenus(marketId) } returns sut.giveMeOne(MarketMenuResponse::class.java)
//
//            mockMvc.get("/market/menu?marketId={:1}", marketId).andExpect {
//                status { MockMvcResultMatchers.status().isOk }
//                content { contentType(MediaType.APPLICATION_JSON) }
//                jsonPath("$") { isNotEmpty() }
//                jsonPath("$.marketId") { isNotEmpty() }
//                jsonPath("$.marketName") { isNotEmpty() }
//                jsonPath("$.menus") { isNotEmpty() }
//                jsonPath("$.menus[*].menuId") { isNotEmpty() }
//                jsonPath("$.menus[*].menuName") { isNotEmpty() }
//                jsonPath("$.menus[0].price") { isNumber() }
//            }
//        }
//    }
//}) {
//
//    @TestConfiguration
//    class MarketControllerTestConfiguration {
//        @Bean
//        fun marketService() = mockk<MarketService>()
//    }
//}