-- ���� ������ ������� ��� ��������-��������, ������������� �������� ������������� �������� ��� ����� � �������, � ����� �������������� ������ �������� � ������. 
-- ������ ���� ������ �������� 11 ������ : 
-- 1)  users ������� ����������� � �������� ������ �������. � ������� ���������� ��������������� ����������
-- 2)  catalogs ������� � ��������� �������� �������� ��������, �������� �������: 1- ������ 2- ������ 3-���� 4- ���������� 5- ������ 6 - �����
-- 3)  products ������� �������� �������, id ��������� � �������� ��������
-- 4)  order_statuses ������� ����������� � ���� ������� �������: 1- �������� 2- � ��������� 3- ������� � �������� 4- ��������
-- 5)  orders  ������� �������, �������� ���������� � ����������,������� ������, ���������� �������� ������� (value) � ������, � ����� ���� �������� � ���������� ������
-- 6)  discounts  ������� ���������� � ���� ���������� � ����������,��� ������,���� ������ � ��������� ������
-- 7)  order_products - ������� ���������� ���������� � ������� ������: ����� ������, �������� �������� � ������, ���������� ������ ������� (total), ����������, ���� �������� � ���������� 
-- 8)  treatment_types - ������� � ������ ����� � ������ ������� 1 - ������ 2 - �������/������� 3 - ������� 4 -����������� 5 - �������, � ����� �������� ���������� � ���� � ����������������� ������
-- 9)  staff - �������� ���������� � ���������� ������ ������� (��� � �������)
-- 10) appointments - ������� � ����������� � ������ � ������ �������: ������, ������, ����� ������, ��� ������
-- 11) storehouses - ������� � ������� � �������� �������: ������� ������(product_id), ��������� ����������, ���� ����������� (created_at), ���� ���������� ����������(updated_at)
-- ���� ������ ��������:
-- 					 4 ������� ��������� ���� ������ �������: full_db_beauty_shop.sql ,full_db_beauty_shop_storehoses.sql, full_db_beauty_shop_order_products.sql, full_db_beauty_shop_discounts.sql
-- 					1 ������ � �������������, JOIN`���, ���������� ��������� � ��������������� db beauty_shop_requests_selections_views.sql
--                  1 ������ � �����������,�������� � ����������    db_beauty_shop_procedures_triggers.sql
--                  1 ���� � ERDiagram ��� �� Shop_beautystore.mwb


drop database if exists beauty_shop;
create database beauty_shop ;
use beauty_shop;

drop table if exists users;
create table users(
	id  SERIAL PRIMARY key,
	name varchar(100) not null COMMENT '��� ����������',
	surname varchar(100) not null COMMENT'������� ����������',
	email VARCHAR(120) unique COMMENT'����������� ����� ',
	town_shipment varchar(120) COMMENT'����� ��� ��������',
	phone varchar(100) not null COMMENT'�������',
	birthday DATE COMMENT '���� ��������',
	index users_phone_idx(phone)
) COMMENT = '����������';
0
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT '�������� ������� ��������'
);

drop table if exists products;
create table products(
	id  SERIAL PRIMARY key,
	name varchar(255) not null unique COMMENT '�������� ������',
	description text COMMENT '�������� ������',
	price decimal(11,2) COMMENT '����',
	catalog_id BIGINT unsigned not null COMMENT '����� ������� ��������',
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (catalog_id) references catalogs(id)
) COMMENT = '�������� �������';

DROP TABLE IF EXISTS order_statuses;
CREATE TABLE order_statuses(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255)
) COMMENT = '������� ������';
 
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
)COMMENT = '������';

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
) COMMENT = '������';

drop table if exists order_products;
create table order_products(
	id  SERIAL PRIMARY key,
	order_id BIGINT unsigned not null,
	user_id BIGINT unsigned not null,
	product_id BIGINT unsigned not null,
	total INT UNSIGNED DEFAULT 1 COMMENT '���������� ���������� �������� �������',
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (order_id) references orders(id),
	foreign key (user_id) references users(id),
	foreign key (product_id) references products(id)
) COMMENT = '������ ������';

-- ALTER TABLE beauty_shop.order_products DROP COLUMN value;?????????????????????????????????????????????????????

DROP TABLE IF EXISTS treatment_types;
CREATE TABLE  treatment_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null unique,
    price decimal(11,2),
    duration int
)COMMENT = '���� �����';

DROP TABLE IF EXISTS staff;
CREATE TABLE  staff(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) not null,
  	surname varchar(100) not null
)  COMMENT = '�������';


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
) COMMENT = '������ � ������ �������';

drop table if exists storehouses;
create table storehouses(
	id  SERIAL PRIMARY key,
	value int,
	product_id BIGINT unsigned not null,
	created_at DATETIME,
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (product_id) references products(id)
)COMMENT = '�������� ������� �� ������';
