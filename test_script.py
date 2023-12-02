import random
import uuid
from bson import Binary
from pymongo import MongoClient
from pymongo.errors import ConnectionFailure

mongo_client = object
try:
    mongo_client = MongoClient('mongodb://localhost:27017')
    mongo_client.admin.command('ismaster')  # 서버가 실행 중인지 확인
    print("MongoDB에 성공적으로 연결되었습니다.")
except ConnectionFailure as e:
    print(f"MongoDB 연결 실패: {e}")

mongo_db = mongo_client['mongo_test']

categoryCnt = 1000
marketCnt = 1000
clickCnt = 20
menuCnt = 20

# 1. 카테고리 생성
categories = []
for i in range(categoryCnt):
    categories.append(str(i + 1) + "번")

data = []
for _ in range(categoryCnt):
    uuid_obj = uuid.uuid4()
    binary_uuid = Binary(uuid_obj.bytes, 4)
    entry = {
        "_class": "kr.co.lendit.mvc.adpater.out.persistence.mongo.CategoryMongoEntity",
        "_id": binary_uuid,
        "name": categories[_ % len(categories)]
    }
    data.append(entry)

# MongoDB에 데이터 삽입
mongo_collection = mongo_db['category']
result = mongo_collection.insert_many(data)
print("category clear")

# # 가게 데이터 생성을 위한 기본 정보
# base_info = {
#     "_class": "kr.co.lendit.mvc.adpater.out.persistence.mongo.MarketMongoEntity",
#     "address": "서울시 강남구",
#     "addressDetail": "아랫길",
#     "scoreAvg": 2.5
# }
#
# store_names = ["자연별곡", "동보성", "스시야", "미즈컨테이너", "이모네닭강정",
#                "죠스떡볶이", "BBQ", "킹콩부대찌개", "뜸들이다", "북경",
#                "코다차야", "에슐리", "25시김찌찌개", "동대문엽기떡볶이", "지코바숯불치킨",
#                "맵도리탕", "네네치킨", "땅땅치킨", "홍대돈부리", "엄마청국장"]
#
# market_data = []
# for category in data:
#     uuid_obj = uuid.UUID(bytes=category["_id"])
#     categoryId = str(uuid_obj)
#     for i in range(marketCnt):
#         uuid_obj = uuid.uuid4()
#         binary_uuid = Binary(uuid_obj.bytes, 4)
#
#         market_entry = base_info.copy()
#         market_entry["_id"] = binary_uuid
#         market_entry["name"] = random.choice(store_names) + str(i) + category["name"]
#         market_entry["categoryId"] = categoryId
#         market_entry["description"] = random.choice(store_names) + str(i) + category["name"]
#         market_data.append(market_entry)
#
# # 가게 몽고 디비 insert
# mongo_collection = mongo_db['market']
# mongo_collection.create_index([("categoryId", 1)])
# result = mongo_collection.insert_many(market_data)
# print("market clear")
#
# # static 조회수 삽입
# base_info = {"_class": "kr.co.lendit.mvc.adpater.out.persistence.mongo.MarketClickMongoEntity"}
#
# click_data = []
# for market in market_data:
#     uuid_obj = uuid.UUID(bytes=market["_id"])
#     marketId = str(uuid_obj)
#
#     for i in range(clickCnt):
#         uuid_obj = uuid.uuid4()
#         binary_uuid = Binary(uuid_obj.bytes, 4)
#
#         click_entry = base_info.copy()
#         click_entry["_id"] = binary_uuid
#         # click_entry["marketId"] = market["_id"]
#         click_entry["marketId"] = marketId
#         click_data.append(click_entry)
#
# # 조회수 몽고 디비 insert
# mongo_collection = mongo_db['marketClick']
# # mongo_collection.create_index([("marketId", 1)])
# result = mongo_collection.insert_many(click_data)
# print("click clear")
#
# # 가게별 메뉴 삽입
# menu_data = []
# i = 1
# for market in market_data:
#     uuid_obj = uuid.UUID(bytes=market["_id"])
#     marketId = str(uuid_obj)
#     for _ in range(menuCnt):
#         index = str(i)
#         base_info = {'_id': index, 'marketId': marketId,
#                      'name': 'menuName' + index, 'price': 7504, 'description': 'menuDescription' + index,
#                      'optionGroups': [{'title': 'title' + index, 'minCount': 1, 'maxCount': 6,
#                                        'menuOptions': [{'name': 'optionNamehwzvn', 'price': '2.08'},
#                                                        {'name': 'optionNamexpbcs', 'price': '7.7'}]},
#                                       {'title': 'title' + index, 'minCount': 5, 'maxCount': 7,
#                                        'menuOptions': [{'name': 'optionNamegirfx', 'price': '5.87'},
#                                                        {'name': 'optionNameserzg', 'price': '8.37'}]},
#                                       {'title': 'title' + index, 'minCount': 1, 'maxCount': 1,
#                                        'menuOptions': [{'name': 'optionNamejmazt', 'price': '7.12'},
#                                                        {'name': 'optionNamerkeix', 'price': '8.87'}]}]
#                      }
#         menu_data.append(base_info)
#         i += 1
#
# # 메뉴 몽고 디비 insert
# mongo_client = object
# try:
#     mongo_client = MongoClient('mongodb://localhost:27013')
#     mongo_client.admin.command('ismaster')  # 서버가 실행 중인지 확인
#     print("MongoDB에 성공적으로 연결되었습니다.")
# except ConnectionFailure as e:
#     print(f"MongoDB 연결 실패: {e}")
#
# mongo_db = mongo_client['mongo_test']
# mongo_collection = mongo_db['menu']
# mongo_collection.create_index([("marketId", 1)])
# result = mongo_collection.insert_many(menu_data)
# print("menu clear")

# print(market_data_json)
#
# for category in data:
#     print(f"""INSERT INTO `category`(id, name) VALUES ('{category["id"]}', '{category["name"]}');""")
#
# for market in market_data:
#     print(f"""INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('{market["id"]}', '{market["name"]}', {market["address"]}, '{market["addressDetail"]}', 2.5, '정말 맛있습니다1.', '{market["categoryId"]}');""")
