package lendit.co.kr.webflux

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import org.springframework.stereotype.Service
import reactor.core.publisher.Flux
import reactor.core.publisher.Mono
import kotlin.random.Random

@Service
class CategoryService(
    private val categoryRepo: CategoryMongoAdapter
) : CategoryQuery {




    override fun getCategories(): Flux<CategoryInfo> {
        val names = mutableListOf<String>()
        for (i in 1..300) {
            var name = "${Random.nextInt(1,1000)}번"
            while (names.contains(name)) {
                name = "${Random.nextInt(1,1000)}번"
            }
            names.add(name)
        }

        return categoryRepo.findAllByNamesIn(names).map { CategoryInfo.from(it) }
    }

    override fun getCategory(): Mono<CategoryInfo> {
        val category = categoryRepo.findByName("${Random.nextInt(1,1000)}번")
        return category.map { CategoryInfo.from(it) }
    }

    override  fun getCategoryById(): Mono<CategoryInfo> {
        val category = categoryRepo.findByIdOrNull(CategoryId("6017d2a5-3898-4d14-b0ff-bba1491d5bfb"))
        return category.map { CategoryInfo.from(it) }
    }

    override fun getCategoriesAll(): Flux<CategoryInfo> {
        val names = mutableListOf<String>()
        for (i in 1..300) {
            names.add("${i}번")
        }
        val categories = categoryRepo.findAllByNamesIn(names)
        return categories.map { CategoryInfo.from(it) }
    }

    override fun getAll(): Flux<CategoryInfo> {
        return categoryRepo.findAllCategories()
            .map { CategoryInfo.from(it) }
    }

}
