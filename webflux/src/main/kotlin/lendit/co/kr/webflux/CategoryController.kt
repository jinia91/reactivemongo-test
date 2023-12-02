package lendit.co.kr.webflux

import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.yield
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import reactor.core.publisher.Flux
import reactor.core.publisher.Mono
import kotlin.random.Random

@RestController
@RequestMapping("/api/webflux/market")
class CategoryController(
    private val categoryQuery: CategoryQuery,
    ) {

    @GetMapping( "/mongo/categories/empty")
    suspend fun getEmpty() : Mono<String> = coroutineScope {
        var a = 0
        var b = 1
        var c = 0
        for (i in 1..5_000_000) {
            c = a + b
            a = b
            b = c
            if(i % 1000000 == 0) yield()
        }
        var d = a + b + c + Random.nextLong()

        Mono.just("$d")
    }

    @GetMapping("/mongo/categories/random")
     fun getRandom(): Mono<CategoryInfo> {
        return categoryQuery.getCategory()
    }

    @GetMapping( "/mongo/categories/cache")
     fun getMysql(): Mono<CategoryInfo> {
        return categoryQuery.getCategoryById()
    }

    @GetMapping("/mongo/categories/random/all")
     fun getRandomAll(): Flux<CategoryInfo> {
        return categoryQuery.getCategories()
    }

    @GetMapping( "/mongo/categories/cache/all")
     fun getAll(): Flux<CategoryInfo> {
        return categoryQuery.getCategoriesAll()
    }

    @GetMapping( "/mongo/categories/all")
     fun all(): Mono<CategoryInfo> {
        return categoryQuery.getAll().last()
    }
}
