package kr.co.lendit.mvc.application.service

import kr.co.lendit.mvc.application.port.`in`.CategoryInfo
import kr.co.lendit.mvc.application.port.`in`.CategoryQuery
import kr.co.lendit.mvc.application.port.out.CategoryRepo
import kr.co.lendit.mvc.common.UseCase
import kr.co.lendit.mvc.domain.CategoryId
import org.springframework.transaction.annotation.Transactional
import kotlin.random.Random

@UseCase
class CategoryService(
    private val categoryRepo: CategoryRepo
) : CategoryQuery {

    override fun getCategory(): CategoryInfo {
        val category = categoryRepo.findByName("${Random.nextInt(1,1000)}번")
        return CategoryInfo.from(category!!)
    }

    override fun getCategoryById(): CategoryInfo {
        val category = categoryRepo.findByIdOrNull(CategoryId("b4cb1d93-6c98-425e-b732-c534c4619f7e"))
        return CategoryInfo.from(category!!)
    }

    override fun getCategoriesAll(): List<CategoryInfo> {
        // name 300개 리스트 1부터 300
        val names = mutableListOf<String>()
        for (i in 1..300) {
            names.add("${i}번")
        }
        val categories = categoryRepo.findAllByNamesIn(names)
        return categories.map { CategoryInfo.from(it) }
    }

    override fun getAll(): List<CategoryInfo> {
        val categories = categoryRepo.findAllCategories()
        return categories.map { CategoryInfo.from(it) }
    }

    override fun getCategories(): List<CategoryInfo> {
        val names = mutableListOf<String>()
        for (i in 1..300) {
            var name = "${Random.nextInt(1,1000)}번"
            while (names.contains(name)) {
                name = "${Random.nextInt(1,1000)}번"
            }
            names.add(name)
        }

        val categories = categoryRepo.findAllByNamesIn(names)
        return categories.map { CategoryInfo.from(it) }
    }
}
