package lendit.co.kr.webflux

class Category(
    val id: CategoryId,
    val name: CategoryName,
)

@JvmInline
value class CategoryId(val value: String)

@JvmInline
value class CategoryName(val value: String)
