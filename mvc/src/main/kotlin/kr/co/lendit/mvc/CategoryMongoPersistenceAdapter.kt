package kr.co.lendit.mvc

import org.springframework.data.annotation.PersistenceCreator
import org.springframework.data.mongodb.core.mapping.Document
import org.springframework.data.mongodb.repository.MongoRepository
import org.springframework.data.repository.findByIdOrNull
import java.util.*
import org.springframework.data.annotation.Id
import org.springframework.stereotype.Component

@Component
class CategoryMongoPersistenceAdapter(
    private val categoryMongoRepository: CategoryMongoRepository,
) : CategoryRepo  {

     override fun findByIdOrNull(id: CategoryId): Category? {
        return categoryMongoRepository.findByIdOrNull(UUID.fromString(id.value))?.toDomain()
    }

     override fun findByName(name: String): Category? {
        return categoryMongoRepository.findByName(name)?.toDomain()
    }

     override fun findAllCategories(): List<Category> {
        return categoryMongoRepository.findAll().map { it.toDomain() }
    }

     override fun findAllByNamesIn(names: MutableList<String>): List<Category> {
        return categoryMongoRepository.findByNameIn(names).map { it.toDomain() }
    }

    fun CategoryMongoEntity.toDomain() = Category(
        id = CategoryId(id.toString()),
        name = CategoryName(name),
    )
}

interface CategoryMongoRepository : MongoRepository<CategoryMongoEntity, UUID> {
    override fun findById(id: UUID): Optional<CategoryMongoEntity>

    fun findByName(name: String): CategoryMongoEntity?

    fun findByNameIn(names: MutableList<String>): List<CategoryMongoEntity>
}

@Document("category")
class CategoryMongoEntity @PersistenceCreator constructor(
    @Id
    val id: UUID,
    val name: String,
    val _class: String? = null,
)
