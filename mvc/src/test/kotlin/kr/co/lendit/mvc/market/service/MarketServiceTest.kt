package kr.co.lendit.mvc.market.service

import com.navercorp.fixturemonkey.FixtureMonkey
import com.navercorp.fixturemonkey.kotlin.KotlinPlugin
import com.navercorp.fixturemonkey.kotlin.setExp
import com.navercorp.fixturemonkey.kotlin.setPostConditionExp
import io.kotest.core.spec.style.DescribeSpec
import io.kotest.matchers.shouldBe
import io.mockk.every
import io.mockk.junit5.MockKExtension
import io.mockk.mockk
import org.junit.jupiter.api.extension.ExtendWith
import org.springframework.data.repository.findByIdOrNull

//@ExtendWith(MockKExtension::class)
//internal class MarketServiceTest(
//    private val marketRepository: MarketRepository = mockk<MarketRepository>(),
//    private val marketClickLogRepository: MarketClickLogRepository = mockk<MarketClickLogRepository>(),
//    private val marketStarLogRepository: MarketStarLogRepository = mockk<MarketStarLogRepository>(),
//    private val menuServerClient: MenuServerClient = mockk<MenuServerClient>(),
//    private val marketService: MarketServiceImpl = MarketServiceImpl(marketRepository, marketClickLogRepository, menuServerClient, marketStarLogRepository),
//) : DescribeSpec({
//
//    val sut = FixtureMonkey.builder()
//        .plugin(KotlinPlugin())
//        .build()
//
//    describe("상점 관련해서") {
//        context("상점을") {
//            xit("market_category_id 로 조회") {
//                val categoryId = "3"
//
//                val category = sut.giveMeBuilder(MarketCategory::class.java)
//                    .setExp(MarketCategory::id, categoryId.toInt())
//                    .setPostConditionExp(MarketCategory::name, String::class.java) { it.isNotBlank() }
//                    .setExp(MarketCategory::markets, emptyList<Market>())
//                    .sample()
//
//                val markets = sut.giveMeBuilder(Market::class.java)
//                    .setPostConditionExp(Market::id, Long::class.java) { it > 0 }
//                    .setExp(Market::marketCategory, category)
//                    .sampleList(2)
//                val marketIds = markets.map { it.id!!.toLong() }
//
//                val marketClickLogs = marketIds.map {
//                    sut.giveMeBuilder(MarketClickLog::class.java)
//                        .setPostConditionExp(MarketClickLog::id, Long::class.java) { it > 0 }
//                        .setExp(MarketClickLog::marketId, it)
//                        .sampleList(2)
//                }.flatten()
//
//                every { marketRepository.findAllByMarketCategoryId(categoryId.toLong()) } returns markets
//                every { marketClickLogRepository.findAllByMarketIdIn(marketIds) } returns marketClickLogs
//
//                val response = listOf(
//                    MarketResponse.of(markets[0], 2),
//                    MarketResponse.of(markets[1], 2)
//                )
//
//                marketService.getMarketList(categoryId) shouldBe response
//            }
//        }
//
//        context("메뉴를") {
//            xit("상점 id 로 조회") {
//                val marketId = "3"
//
//                val market = sut.giveMeBuilder(Market::class.java)
//                    .setExp(Market::id, marketId.toLong())
//                    .setExp(Market::marketCategory, null)
//                    .sample()
//
//                val menus = sut.giveMeBuilder(MenuResponse::class.java)
//                    .sampleList(2)
//
//                val marketClickLog = sut.giveMeBuilder(MarketClickLog::class.java)
//                    .setExp(MarketClickLog::marketId, marketId.toInt())
//                    .sample()
//
//                every { marketRepository.findByIdOrNull(marketId.toLong()) } returns market
//                every { menuServerClient.getMenus(marketId) } returns menus
//                every { marketClickLogRepository.save(any()) } returns marketClickLog
//
//                val response = MarketMenuResponse(
//                    marketId = marketId,
//                    marketName = market.name,
//                    menus = menus,
//                )
//
//                marketService.getMarketMenus(marketId) shouldBe response
//            }
//        }
//    }
//})
