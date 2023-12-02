drop table if exists `category`;
drop table if exists `market`;
drop table if exists `market_score`;
drop table if exists `market_click_log`;

CREATE TABLE if not exists `category` (
    `id` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE if not exists `market` (
    `score_avg` double NOT NULL,
    `address` varchar(255) NOT NULL,
    `address_detail` varchar(255) NOT NULL,
    `category_id` varchar(255) NOT NULL,
    `description` varchar(255) NOT NULL,
    `id` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB
    DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE if not exists `market_click_log` (
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `id` varchar(255) NOT NULL,
    `market_id` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `market_click_log_market_id_idx` (`market_id`)
) ENGINE=InnoDB
    DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE if not exists `market_score` (
    `point` int NOT NULL,
    `comment` varchar(255) DEFAULT NULL,
    `id` varchar(255) NOT NULL,
    `market_id` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `market_score_market_id_idx` (`market_id`)
) ENGINE=InnoDB
    DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- create index `market_click_log_market_id_idx` on `market_click_log` (`market_id`);
-- create index `market_score_market_id_idx` on `market_score` (`market_id`);

INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6acf-a95f-ffb0c885db0c', '한식');
INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6ad0-a95f-ffb0c885db0c', '중식');
INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6ad1-a95f-ffb0c885db0c', '일식');
INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6ad2-a95f-ffb0c885db0c', '양식');
INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6ad3-a95f-ffb0c885db0c', '야식');
INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6ad4-a95f-ffb0c885db0c', '분식');
INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6ad5-a95f-ffb0c885db0c', '치킨');
INSERT INTO `category`(id, name) VALUES ('1ee63523-fbd5-6ad6-a95f-ffb0c885db0c', '찜/탕');

INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a93-a95f-ffb0c885db0c', '자연별곡', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다1.', '1ee63523-fbd5-6acf-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a94-a95f-ffb0c885db0c', '동보성', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다2.', '1ee63523-fbd5-6ad0-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a95-a95f-ffb0c885db0c', '스시야', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다3.', '1ee63523-fbd5-6ad1-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a96-a95f-ffb0c885db0c', '미즈컨테이너', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다4.', '1ee63523-fbd5-6ad2-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a97-a95f-ffb0c885db0c', '이모네닭강정', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다5.', '1ee63523-fbd5-6ad3-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a98-a95f-ffb0c885db0c', '죠스떡볶이', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다6.', '1ee63523-fbd5-6ad4-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a99-a95f-ffb0c885db0c', 'BBQ', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다7.', '1ee63523-fbd5-6ad5-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a9a-a95f-ffb0c885db0c', '킹콩부대찌개', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다8.', '1ee63523-fbd5-6ad6-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a9b-a95f-ffb0c885db0c', '뜸들이다', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다9.', '1ee63523-fbd5-6acf-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a9c-a95f-ffb0c885db0c', '북경', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다10.', '1ee63523-fbd5-6ad0-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a9d-a95f-ffb0c885db0c', '코다차야', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다11.', '1ee63523-fbd5-6ad1-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a9e-a95f-ffb0c885db0c', '에슐리', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다12.', '1ee63523-fbd5-6ad2-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6a9f-a95f-ffb0c885db0c', '25시김찌찌개', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다13.', '1ee63523-fbd5-6ad3-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6aa0-a95f-ffb0c885db0c', '동대문엽기떡볶이', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다14.', '1ee63523-fbd5-6ad4-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6aa1-a95f-ffb0c885db0c', '지코바 숯불치킨', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다15.', '1ee63523-fbd5-6ad5-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6aa2-a95f-ffb0c885db0c', '맵도리탕', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다16.', '1ee63523-fbd5-6ad6-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6aa3-a95f-ffb0c885db0c', '네네치킨', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다17.', '1ee63523-fbd5-6ad5-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6aa4-a95f-ffb0c885db0c', '땅땅치킨', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다18.', '1ee63523-fbd5-6ad5-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6aa5-a95f-ffb0c885db0c', '홍대돈부리', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다19.', '1ee63523-fbd5-6ad1-a95f-ffb0c885db0c');
INSERT INTO `market`(id, name, address, address_detail, score_avg, description, category_id) VALUES ('1ee63523-fbd5-6aa6-a95f-ffb0c885db0c', '엄마청국장', '서울시 강남구', '아랫길', 2.5, '정말 맛있습니다20.', '1ee63523-fbd5-6acf-a95f-ffb0c885db0c');

INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-693a-8583-e97c3476885f', '1ee63523-fbd5-6a93-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-693b-8583-e97c3476885f', '1ee63523-fbd5-6a94-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-693c-8583-e97c3476885f', '1ee63523-fbd5-6a95-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-693d-8583-e97c3476885f', '1ee63523-fbd5-6a96-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-693e-8583-e97c3476885f', '1ee63523-fbd5-6a97-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-693f-8583-e97c3476885f', '1ee63523-fbd5-6a98-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6940-8583-e97c3476885f', '1ee63523-fbd5-6a99-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6941-8583-e97c3476885f', '1ee63523-fbd5-6a9a-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6942-8583-e97c3476885f', '1ee63523-fbd5-6a9b-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6943-8583-e97c3476885f', '1ee63523-fbd5-6a9c-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6944-8583-e97c3476885f', '1ee63523-fbd5-6a9d-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6945-8583-e97c3476885f', '1ee63523-fbd5-6a9e-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6946-8583-e97c3476885f', '1ee63523-fbd5-6a9f-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6947-8583-e97c3476885f', '1ee63523-fbd5-6aa0-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6948-8583-e97c3476885f', '1ee63523-fbd5-6aa1-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6949-8583-e97c3476885f', '1ee63523-fbd5-6aa2-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-694a-8583-e97c3476885f', '1ee63523-fbd5-6aa3-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-694b-8583-e97c3476885f', '1ee63523-fbd5-6aa4-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-694c-8583-e97c3476885f', '1ee63523-fbd5-6aa5-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-694d-8583-e97c3476885f', '1ee63523-fbd5-6aa6-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-694e-8583-e97c3476885f', '1ee63523-fbd5-6a93-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-694f-8583-e97c3476885f', '1ee63523-fbd5-6a94-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6950-8583-e97c3476885f', '1ee63523-fbd5-6a95-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6951-8583-e97c3476885f', '1ee63523-fbd5-6a96-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6952-8583-e97c3476885f', '1ee63523-fbd5-6a97-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6953-8583-e97c3476885f', '1ee63523-fbd5-6a98-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6954-8583-e97c3476885f', '1ee63523-fbd5-6a99-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6955-8583-e97c3476885f', '1ee63523-fbd5-6a9a-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6956-8583-e97c3476885f', '1ee63523-fbd5-6a9b-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6957-8583-e97c3476885f', '1ee63523-fbd5-6a9c-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6958-8583-e97c3476885f', '1ee63523-fbd5-6a9d-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6959-8583-e97c3476885f', '1ee63523-fbd5-6a9e-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-695a-8583-e97c3476885f', '1ee63523-fbd5-6a9f-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-695b-8583-e97c3476885f', '1ee63523-fbd5-6aa0-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-695c-8583-e97c3476885f', '1ee63523-fbd5-6aa1-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-695d-8583-e97c3476885f', '1ee63523-fbd5-6aa2-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-695e-8583-e97c3476885f', '1ee63523-fbd5-6aa3-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-695f-8583-e97c3476885f', '1ee63523-fbd5-6aa4-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6960-8583-e97c3476885f', '1ee63523-fbd5-6aa5-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6961-8583-e97c3476885f', '1ee63523-fbd5-6aa6-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6962-8583-e97c3476885f', '1ee63523-fbd5-6a93-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6963-8583-e97c3476885f', '1ee63523-fbd5-6a94-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6964-8583-e97c3476885f', '1ee63523-fbd5-6a95-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6965-8583-e97c3476885f', '1ee63523-fbd5-6a96-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6966-8583-e97c3476885f', '1ee63523-fbd5-6a97-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6967-8583-e97c3476885f', '1ee63523-fbd5-6a98-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6968-8583-e97c3476885f', '1ee63523-fbd5-6a99-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6969-8583-e97c3476885f', '1ee63523-fbd5-6a9a-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-696a-8583-e97c3476885f', '1ee63523-fbd5-6a9b-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-696b-8583-e97c3476885f', '1ee63523-fbd5-6a9c-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-696c-8583-e97c3476885f', '1ee63523-fbd5-6a9d-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-696d-8583-e97c3476885f', '1ee63523-fbd5-6a9e-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-696e-8583-e97c3476885f', '1ee63523-fbd5-6a9f-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-696f-8583-e97c3476885f', '1ee63523-fbd5-6aa0-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6970-8583-e97c3476885f', '1ee63523-fbd5-6aa1-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6971-8583-e97c3476885f', '1ee63523-fbd5-6aa2-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6972-8583-e97c3476885f', '1ee63523-fbd5-6aa3-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6973-8583-e97c3476885f', '1ee63523-fbd5-6aa4-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6974-8583-e97c3476885f', '1ee63523-fbd5-6aa5-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6975-8583-e97c3476885f', '1ee63523-fbd5-6aa6-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6976-8583-e97c3476885f', '1ee63523-fbd5-6a93-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6977-8583-e97c3476885f', '1ee63523-fbd5-6a94-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6978-8583-e97c3476885f', '1ee63523-fbd5-6a95-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6979-8583-e97c3476885f', '1ee63523-fbd5-6a96-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-697a-8583-e97c3476885f', '1ee63523-fbd5-6a97-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-697b-8583-e97c3476885f', '1ee63523-fbd5-6a98-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-697c-8583-e97c3476885f', '1ee63523-fbd5-6a99-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-697d-8583-e97c3476885f', '1ee63523-fbd5-6a9a-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-697e-8583-e97c3476885f', '1ee63523-fbd5-6a9b-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-697f-8583-e97c3476885f', '1ee63523-fbd5-6a9c-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6980-8583-e97c3476885f', '1ee63523-fbd5-6a9d-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6981-8583-e97c3476885f', '1ee63523-fbd5-6a9e-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-7278-6982-8583-e97c3476885f', '1ee63523-fbd5-6a9f-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-6093-8583-e97c3476885f', '1ee63523-fbd5-6aa0-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-6094-8583-e97c3476885f', '1ee63523-fbd5-6aa1-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-6095-8583-e97c3476885f', '1ee63523-fbd5-6aa2-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-6096-8583-e97c3476885f', '1ee63523-fbd5-6aa3-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-6097-8583-e97c3476885f', '1ee63523-fbd5-6aa4-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-6098-8583-e97c3476885f', '1ee63523-fbd5-6aa5-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-6099-8583-e97c3476885f', '1ee63523-fbd5-6aa6-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-609a-8583-e97c3476885f', '1ee63523-fbd5-6a93-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-609b-8583-e97c3476885f', '1ee63523-fbd5-6a94-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-609c-8583-e97c3476885f', '1ee63523-fbd5-6a95-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-609d-8583-e97c3476885f', '1ee63523-fbd5-6a96-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-609e-8583-e97c3476885f', '1ee63523-fbd5-6a97-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-609f-8583-e97c3476885f', '1ee63523-fbd5-6a98-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a0-8583-e97c3476885f', '1ee63523-fbd5-6a99-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a1-8583-e97c3476885f', '1ee63523-fbd5-6a9a-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a2-8583-e97c3476885f', '1ee63523-fbd5-6a9b-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a3-8583-e97c3476885f', '1ee63523-fbd5-6a9c-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a4-8583-e97c3476885f', '1ee63523-fbd5-6a9d-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a5-8583-e97c3476885f', '1ee63523-fbd5-6a9e-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a6-8583-e97c3476885f', '1ee63523-fbd5-6a9f-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a7-8583-e97c3476885f', '1ee63523-fbd5-6aa0-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a8-8583-e97c3476885f', '1ee63523-fbd5-6aa1-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60a9-8583-e97c3476885f', '1ee63523-fbd5-6aa2-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60aa-8583-e97c3476885f', '1ee63523-fbd5-6aa3-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60ab-8583-e97c3476885f', '1ee63523-fbd5-6aa4-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60ac-8583-e97c3476885f', '1ee63523-fbd5-6aa5-a95f-ffb0c885db0c');
INSERT INTO `market_click_log`(id, market_id) VALUES ('1ee6352d-727b-60ad-8583-e97c3476885f', '1ee63523-fbd5-6aa6-a95f-ffb0c885db0c');

INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aa7-a95f-ffb0c885db0c', '1ee63523-fbd5-6a93-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aa8-a95f-ffb0c885db0c', '1ee63523-fbd5-6a94-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aa9-a95f-ffb0c885db0c', '1ee63523-fbd5-6a95-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aaa-a95f-ffb0c885db0c', '1ee63523-fbd5-6a96-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aab-a95f-ffb0c885db0c', '1ee63523-fbd5-6a97-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aac-a95f-ffb0c885db0c', '1ee63523-fbd5-6a98-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aad-a95f-ffb0c885db0c', '1ee63523-fbd5-6a99-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aae-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9a-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aaf-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9b-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab0-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9c-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab1-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9d-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab2-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9e-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab3-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9f-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab4-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa0-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab5-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa1-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab6-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa2-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab7-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa3-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab8-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa4-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ab9-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa5-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aba-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa6-a95f-ffb0c885db0c', 1, '맛없어요..');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6abb-a95f-ffb0c885db0c', '1ee63523-fbd5-6a93-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6abc-a95f-ffb0c885db0c', '1ee63523-fbd5-6a94-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6abd-a95f-ffb0c885db0c', '1ee63523-fbd5-6a95-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6abe-a95f-ffb0c885db0c', '1ee63523-fbd5-6a96-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6abf-a95f-ffb0c885db0c', '1ee63523-fbd5-6a97-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac0-a95f-ffb0c885db0c', '1ee63523-fbd5-6a98-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac1-a95f-ffb0c885db0c', '1ee63523-fbd5-6a99-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac2-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9a-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac3-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9b-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac4-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9c-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac5-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9d-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac6-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9e-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac7-a95f-ffb0c885db0c', '1ee63523-fbd5-6a9f-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac8-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa0-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ac9-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa1-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6aca-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa2-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6acb-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa3-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6acc-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa4-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6acd-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa5-a95f-ffb0c885db0c', 4, '맛있어요!!');
INSERT INTO `market_score`(id, market_id, point, comment) VALUES ('1ee63523-fbd5-6ace-a95f-ffb0c885db0c', '1ee63523-fbd5-6aa6-a95f-ffb0c885db0c', 4, '맛있어요!!');
