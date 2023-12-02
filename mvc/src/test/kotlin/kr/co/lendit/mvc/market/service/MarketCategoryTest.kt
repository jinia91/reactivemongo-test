package kr.co.lendit.mvc.market.service

import com.navercorp.fixturemonkey.FixtureMonkey
import com.navercorp.fixturemonkey.kotlin.KotlinPlugin
import io.kotest.core.spec.style.DescribeSpec
import io.kotest.matchers.shouldBe
import io.mockk.every
import io.mockk.junit5.MockKExtension
import io.mockk.mockk
import org.junit.jupiter.api.extension.ExtendWith

//@ExtendWith(MockKExtension::class)
//internal class MarketCategoryTest(
//    private val marketCategoryRepository: MarketCategoryRepository = mockk<MarketCategoryRepository>(),
//    private val marketCategoryService: MarketCategoryServiceImpl = MarketCategoryServiceImpl(marketCategoryRepository),
//) : DescribeSpec({
//
//    val sut = FixtureMonkey.builder()
//        .plugin(KotlinPlugin())
//        .build()
//
//    describe("카테고리 조회") {
//        context("모두 조회") {
//            it("저장된 모든 카테고리를 반환한다.") {
//                val marketCategories = sut.giveMe(MarketCategory::class.java, 3)
//                every { marketCategoryRepository.findAll() } returns marketCategories
//                marketCategoryService.getAllCategories() shouldBe marketCategories
//            }
//        }
//    }
//})
