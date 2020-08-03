-- База данных создана для интернет-магазина, занимающегося продажей косметических средства для ухода и макияжа, а также осуществлением записи клиентов в студию. 
-- Данная база данных содержит 11 таблиц : 
-- 1)  users Таблица покупателей и клиентов студии красоты. В таблице содержится авторизационная информация
-- 2)  catalogs Таблица с разделами каталога интернет магазина, содержит разделы: 1- Макияж 2- Волосы 3-Уход 4- Интрументы 5- Наборы 6 - Книги
-- 3)  products Таблица товарных позиций, id выступает в качестве артикула
-- 4)  order_statuses Таблица содеражащая в себе статусы заказов: 1- Размещен 2- В обработке 3- Передан в доставку 4- Завершен
-- 5)  orders  Таблица заказов, отражает информацию о покупателе,статусе заказа, количестве товарных позиций (value) в заказе, а также дату создания и обновления заказа
-- 6)  discounts  Таблица содержащая в себе инфомрацию о покупателе,его скидке,дате начала и окончания скидки
-- 7)  order_products - Таблица отражающая информацию о составе зазаза: номер заказа, товарные позицииц в заказе, количестве каждой позиции (total), покупателе, дате создания и обновления 
-- 8)  treatment_types - Таблица с типами услуг в студии красоты 1 - Макияж 2 - Маникюр/Педикюр 3 - Укладка 4 -Окрашивание 5 - Стрижка, а также содержит инфомарцию о цене и пролоджительности услуги
-- 9)  staff - Содержит информацию о работниках студии красоты (Имя и Фамилия)
-- 10) appointments - Таблица с инфомарцией о записи в студию красоты: клиент, мастер, время записи, вид услуги
-- 11) storehouses - Таблица с данными о хранении товаров: артикул товара(product_id), доступное количество, дата поступления (created_at), дата обновления информации(updated_at)
-- База данных содержит:
-- 					 4 скрипта наполения базы данных файлами: full_db_beauty_shop.sql ,full_db_beauty_shop_storehoses.sql, full_db_beauty_shop_order_products.sql, full_db_beauty_shop_discounts.sql
-- 					1 скрипт с группировками, JOIN`ами, вложенными запросами и представлениями db beauty_shop_requests_selections_views.sql
--                  1 скрипт с процедурами,функцией и триггерами    db_beauty_shop_procedures_triggers.sql
--                  1 файл с ERDiagram для БД Shop_beautystore.mwb


drop database if exists beauty_shop;
create database beauty_shop ;
use beauty_shop;

drop table if exists users;
create table users(
	id  SERIAL PRIMARY key,
	name varchar(100) not null COMMENT 'Имя покупателя',
	surname varchar(100) not null COMMENT'Фамилия покупателя',
	email VARCHAR(120) unique COMMENT'Электронный адрес ',
	town_shipment varchar(120) COMMENT'Город для доставки',
	phone varchar(100) not null COMMENT'Телефон',
	birthday DATE COMMENT 'Дата рождения',
	index users_phone_idx(phone)
) COMMENT = 'Покупатели';
0
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Название раздела каталога'
);

drop table if exists products;
create table products(
	id  SERIAL PRIMARY key,
	name varchar(255) not null unique COMMENT 'Название товара',
	description text COMMENT 'Описание товара',
	price decimal(11,2) COMMENT 'Цена',
	catalog_id BIGINT unsigned not null COMMENT 'Номер раздела каталога',
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (catalog_id) references catalogs(id)
) COMMENT = 'Товарные позиции';

DROP TABLE IF EXISTS order_statuses;
CREATE TABLE order_statuses(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255)
) COMMENT = 'Статусы заказа';
 
drop table if exists orders;
create table orders(
	id  SERIAL PRIMARY key,
	value int,
	user_id BIGINT unsigned not null,
	order_status_id BIGINT unsigned not null,
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (user_id) references users(id),
	foreign key (order_status_id) references order_statuses(id)
)COMMENT = 'Заказы';

drop table if exists `discounts`;
create table `discounts`(
	id  SERIAL PRIMARY key,
	user_id BIGINT unsigned not null,
	product_id BIGINT unsigned not null,
	discount float,
	started_at DATETIME,
 	finished_at DATETIME, 
	foreign key (user_id) references users(id),
	foreign key (product_id) references products(id)
) COMMENT = 'Скидки';

drop table if exists order_products;
create table order_products(
	id  SERIAL PRIMARY key,
	order_id BIGINT unsigned not null,
	user_id BIGINT unsigned not null,
	product_id BIGINT unsigned not null,
	total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (order_id) references orders(id),
	foreign key (user_id) references users(id),
	foreign key (product_id) references products(id)
) COMMENT = 'Состав заказа';

-- ALTER TABLE beauty_shop.order_products DROP COLUMN value;?????????????????????????????????????????????????????

DROP TABLE IF EXISTS treatment_types;
CREATE TABLE  treatment_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null unique,
    price decimal(11,2),
    duration int
)COMMENT = 'Виды услуг';

DROP TABLE IF EXISTS staff;
CREATE TABLE  staff(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null,
  	surname varchar(100) not null
)  COMMENT = 'Мастера';


drop table if exists appointments;
create table appointments(
	id  SERIAL PRIMARY key,
	user_id BIGINT unsigned not null,
	staff_id BIGINT unsigned not null,
	treatment_type_id BIGINT unsigned not null,
	appontment_time DATETIME,
	created_at DATETIME,
	foreign key (user_id) references users(id),
	foreign key (staff_id) references staff(id),
	foreign key (treatment_type_id) references treatment_types(id)
) COMMENT = 'Записи в студию красоты';

drop table if exists storehouses;
create table storehouses(
	id  SERIAL PRIMARY key,
	value int,
	product_id BIGINT unsigned not null,
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (product_id) references products(id)
)COMMENT = 'Товарные позиции на складе';
