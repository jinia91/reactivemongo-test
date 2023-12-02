package lendit.co.kr.webflux

import kotlinx.coroutines.flow.map
import org.springframework.data.mongodb.core.ReactiveMongoTemplate
import org.springframework.data.mongodb.core.query.Query
import java.util.UUID
import kotlinx.coroutines.flow.Flow
import org.springframework.stereotype.Service
import reactor.core.publisher.Flux
import reactor.core.publisher.Mono

@Service
class CategoryMongoAdapter(
    private val categoryDocumentRepository: CategoryDocumentRepository,
    private val reactiveMongoTemplate: ReactiveMongoTemplate,
) : CategoryRepo {

    override fun findByIdOrNull(id: CategoryId): Mono<Category> {
        val categoryEntity = categoryDocumentRepository.findById(UUID.fromString(id.value))
        return categoryEntity.map { it.toDomain() }
    }

    override fun findAllCategories(): Flux<Category> {
        return reactiveMongoTemplate.query(CategoryDocument::class.java)
            .matching(Query().cursorBatchSize(0))
            .all()
            .map { it.toDomain() }
    }

    override fun findByName(s: String): Mono<Category> {
        return categoryDocumentRepository.findByName(s).map { it.toDomain() }
    }

    override fun findAllByNamesIn(names: MutableList<String>): Flux<Category> {
        return categoryDocumentRepository.findByNameIn(names).map { it.toDomain() }
    }

    fun CategoryDocument.toDomain() = Category(
        id = CategoryId(id.toString()),
        name = CategoryName(name),
    )
}