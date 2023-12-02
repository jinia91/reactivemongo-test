package lendit.co.kr.webflux

import kotlinx.coroutines.flow.Flow
import lendit.co.kr.webflux.Category
import lendit.co.kr.webflux.CategoryId
import reactor.core.publisher.Flux
import reactor.core.publisher.Mono

interface CategoryRepo {
     fun findByIdOrNull(id: CategoryId): Mono<Category>
     fun findAllCategories(): Flux<Category>
     fun findByName(s: String): Mono<Category>
     fun findAllByNamesIn(names: MutableList<String>): Flux<Category>
}