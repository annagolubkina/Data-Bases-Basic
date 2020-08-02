 drop database if exists beauty_shop;
create database beauty_shop ;
use beauty_shop;

drop table if exists users;
create table users(
	id  SERIAL PRIMARY key,
	name varchar(100) not null,
	surname varchar(100) not null,
	email VARCHAR(120) unique,
	town_shipment varchar(120),
	phone varchar(100) not null,
	birthday DATE,
	index users_phone_idx(phone)
);

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

drop table if exists products;
create table products(
	id  SERIAL PRIMARY key,
	name varchar(255) not null unique,
	description text,
	price decimal(11,2),
	catalog_id BIGINT unsigned not null,
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (catalog_id) references catalogs(id)
);



DROP TABLE IF EXISTS order_statuses;
CREATE TABLE order_statuses(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);
	
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
);


/*     ПОКА ОСТАВЛЮ!!!
drop table if exists `sets`;
create table `sets`(
	id  SERIAL PRIMARY key,
	set_name varchar(255) not null unique,
	set_discount float,
	product_id BIGINT unsigned not null,
	catalog_id BIGINT unsigned not null,
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (catalog_id) references catalogs(id),
	foreign key (product_id) references products(id)
);*/


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
);


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
);
ALTER TABLE beauty_shop.order_products DROP COLUMN value;

DROP TABLE IF EXISTS treatment_types;
CREATE TABLE  treatment_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null unique,
    price decimal(11,2),
    duration int
);

DROP TABLE IF EXISTS staff;
CREATE TABLE  staff(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null,
  	surname varchar(100) not null
);

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
);




drop table if exists storehouses;
create table storehouses(
	id  SERIAL PRIMARY key,
	value int,
	product_id BIGINT unsigned not null,
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (product_id) references products(id)
);
