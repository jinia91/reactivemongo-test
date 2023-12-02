package lendit.co.kr.webflux

import org.springframework.data.annotation.Id
import org.springframework.data.mongodb.core.mapping.Document
import org.springframework.data.mongodb.repository.Meta
import org.springframework.data.repository.kotlin.CoroutineCrudRepository
import java.util.UUID
import kotlinx.coroutines.flow.Flow
import org.springframework.data.mongodb.repository.ReactiveMongoRepository
import reactor.core.publisher.Flux
import reactor.core.publisher.Mono

@Document("category")
class CategoryDocument(
    @Id
    val id: UUID,
    val name: String,
)

interface CategoryDocumentRepository : ReactiveMongoRepository<CategoryDocument, UUID> {
    fun findByName(name: String): Mono<CategoryDocument>

    @Meta(cursorBatchSize = 0)
    fun findByNameIn(names: MutableList<String>): Flux<CategoryDocument>

}
