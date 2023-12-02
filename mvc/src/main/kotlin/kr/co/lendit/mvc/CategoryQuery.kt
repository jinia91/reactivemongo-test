package kr.co.lendit.mvc.application.port.`in`

import kr.co.lendit.mvc.domain.Category
import kr.co.lendit.mvc.domain.CategoryId
import kr.co.lendit.mvc.domain.CategoryName

interface CategoryQuery {
    fun getCategories(): List<CategoryInfo>


    fun getCategory(): CategoryInfo
    fun getCategoryById(): CategoryInfo
    fun getCategoriesAll(): List<CategoryInfo>
    fun getAll(): List<CategoryInfo>
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
