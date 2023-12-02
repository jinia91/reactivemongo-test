package kr.co.lendit.mvc

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
