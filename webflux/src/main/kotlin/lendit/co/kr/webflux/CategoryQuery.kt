package lendit.co.kr.webflux

import kotlinx.coroutines.flow.Flow
import reactor.core.publisher.Flux
import reactor.core.publisher.Mono

interface CategoryQuery {

     fun getCategories(): Flux<CategoryInfo>
     fun getCategory(): Mono<CategoryInfo>
     fun getCategoryById(): Mono<CategoryInfo>
     fun getCategoriesAll(): Flux<CategoryInfo>
     fun getAll(): Flux<CategoryInfo>
}

data class CategoryInfo(
    val id: CategoryId,
    val name: CategoryName,
) {

    companion object {
        fun from(category: Category): CategoryInfo {
            return CategoryInfo(category.id, category.name)
        }
    }
}
