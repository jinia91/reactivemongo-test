package kr.co.lendit.mvc.application.port.out

import kr.co.lendit.mvc.domain.Category
import kr.co.lendit.mvc.domain.CategoryId

interface CategoryRepo {
    fun findByIdOrNull(id: CategoryId): Category?

    fun findByName(name: String): Category?
    fun findAllCategories(): List<Category>
    fun findAllByNamesIn(names: MutableList<String>): List<Category>
}