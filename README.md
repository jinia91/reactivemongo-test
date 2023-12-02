# 상점(market)

## 도메인
1. 상점(market / mysql)
   - 이름
   - 위치
   - 별점
   - 상점소개
   - 상점 카테고리
2. 상점 카테고리(market_category / mysql)
   - 이름
3. 상점 클릭로그(market_click_log / mysql)
   - 상점 ref
   - 조회한 사용자 ref
   - 조회 시간
   - 조회 카테고리 ref
   - 조회 url
4. 상점 별점(market_star_log / mysql)
   - 상점 ref
   - 주문 ref
   - 별점

## API
### 전체 흐름도
```mermaid
sequenceDiagram
    participant 앱
    actor 상점
    participant 메뉴
    participant 배달

    앱 ->> 상점: 상점카테고리 조회
    상점 -->> 앱: 상점카테고리 응답
    앱 ->> 상점: 상점카테고리로 상점 조회
    상점 -->> 앱: 상점 응답
    앱 ->> 상점: 상점으로 메뉴 조회
    상점 ->> 메뉴: 상점으로 메뉴 조회
    메뉴 -->> 상점: 메뉴 응답
    상점 -->> 앱: 메뉴 응답
    배달 ->> 상점: 상점 위치 조회
    상점 -->> 배달: 상점 위치 응답
    배달 ->> 상점: 상점 별점 등록
```

### 카테고리 조회
```mermaid
sequenceDiagram
    participant 앱
    actor 상점
    participant mysql-category

    앱 ->> 상점: category 조회
    상점 ->> mysql-category: 카테고리 findAll
    mysql-category -->> 상점: 카테고리 findAll
    상점 -->> 앱: category 조회
```

### 상점 조회
```mermaid
sequenceDiagram
    participant 앱
    actor 상점
    participant mysql-market

    앱 ->> 상점: 상점 조회 by categoryId
    상점 ->> mysql-market: 상점 findAllByCategoryId
    mysql-market -->> 상점: 상점 findAllByCategoryId
    상점 ->> mysql-market-click-log: 마켓 선택 로그 findAllByMarketId
    mysql-market-click-log -->> 상점: 마켓 선택 로그 findAllByMarketId
    상점 -->> 앱: 상점 응답(with 선택횟수)
```

### 메뉴 조회
```mermaid
sequenceDiagram
    participant 앱
    actor 상점
    participant 메뉴

    앱 ->> 상점: 메뉴 조회 by marketId
    상점 ->> 메뉴: 메뉴 apiCall(marketId) request
    메뉴 -->> 상점: 메뉴 apiCall(marketId) response
   상점 ->> mysql-market-click-log: 마켓 선택 로그 저장
    상점 -->> 앱: 메뉴 응답
```

### 배달에서 상점 위치 조회
```mermaid
sequenceDiagram
    participant mysql-market
    actor 상점
    participant 배달
    

    배달 ->> 상점: 상점 조회 by ?
    상점 ->> mysql-market: 상점 조회 by ?
    mysql-market -->> 상점: 상점 응답
    상점 -->> 배달: 상점 응답 (with 위치)
```

### 배달에서 상점 별점 등록
```mermaid
sequenceDiagram
    participant mysql-market
    participant mysql-market-star
    actor 상점
    participant 배달

    배달 ->> 상점: 별점 등록 by marketId ?
    상점 ->> mysql-market-star: 별점 mysql log insert
    상점 ->> mysql-market-star: 별점 mysql findAllbyMarketId
    mysql-market-star -->> 상점: 마켓 별점 모두 응답
    상점 ->> 상점: 별점 평균 계산
    상점 ->> mysql-market: 상점 별점 update
```