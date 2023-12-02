package kr.co.lendit.mvc

import kr.co.lendit.mvc.Category
import kr.co.lendit.mvc.CategoryId

interface CategoryRepo {
    fun findByIdOrNull(id: CategoryId): Category?

    fun findByName(name: String): Category?
    fun findAllCategories(): List<Category>
    fun findAllByNamesIn(names: MutableList<String>): List<Category>
}