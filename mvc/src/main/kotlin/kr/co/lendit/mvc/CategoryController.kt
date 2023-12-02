package kr.co.lendit.mvc

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api/mvc/market")
class CategoryController(
    private val categoryQuery: CategoryQuery
) {

    @GetMapping("/mongo/categories/empty")
    fun getEmpty() {}

    @GetMapping("/mysql/categories/random", "/mongo/categories/random")
    fun getRandom(): CategoryInfo {
        return categoryQuery.getCategory()
    }

    @GetMapping("/mysql/categories/cache", "/mongo/categories/cache")
    fun getMysql(): CategoryInfo {
        return categoryQuery.getCategoryById()
    }

    @GetMapping("/mysql/categories/random/all", "/mongo/categories/random/all")
    fun getRandomAll(): List<CategoryInfo> {
        return categoryQuery.getCategories()
    }

    @GetMapping("/mysql/categories/cache/all", "/mongo/categories/cache/all")
    fun getAll(): List<CategoryInfo> {
        return categoryQuery.getCategoriesAll()
    }

    @GetMapping("/mysql/categories/all", "/mongo/categories/all")
    fun all(): List<CategoryInfo> {
        return categoryQuery.getAll()
    }
}