DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '�������� �������',
  UNIQUE unique_name(name(10))
) COMMENT = '������� ��������-��������';

INSERT INTO catalogs VALUES
  (NULL, '����������'),
  (NULL, '����������� �����'),
  (NULL, '����������'),
  (NULL, '������� �����'),
  (NULL, '����������� ������');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP -- ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
  ('��������', '1990-10-05'),
  ('�������', '1984-11-12'),
  ('���������', '1985-05-20'),
  ('������', '1988-02-14'),
  ('����', '1998-01-12'),
  ('�����', '1992-08-29'),
  ('��������', '1988-02-14'),
  ('����', '1997-11-11'),
  ('�������', '1991-04-17');

 --  �������� ���������������� ������� USERS ��� ������� �������
DROP TABLE IF EXISTS users_wrong;
CREATE TABLE users_wrong (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at varchar(255),
  updated_at varchar(255)
) COMMENT = '����������';

INSERT INTO users_wrong (name, birthday_at,created_at ,updated_at ) VALUES
  ('��������', '1990-10-05','20.10.2017 8:10','21.10.2017 8:10'),
  ('�������', '1984-11-12','22.10.2017 8:10','23.10.2017 8:10'),
  ('���������', '1985-05-20','24.10.2017 8:10','25.10.2017 8:10'),
  ('������', '1988-02-14','26.10.2017 8:10','27.10.2017 8:10'),
  ('����', '1998-01-12','28.10.2017 8:10','29.10.2017 8:10'),
  ('�����', '1992-08-29','30.10.2017 8:10','30.10.2017 8:10'),
  ('��������', '1988-02-14','31.10.2017 8:10','11.11.2017 8:10'),
  ('����', '1997-11-11','12.11.2017 8:10','13.12.2017 8:10'),
  ('�������', '1991-04-17','20.10.2017 8:10','21.14.2017 8:10');


DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��������',
  description TEXT COMMENT '��������',
  price DECIMAL (11,2) COMMENT '����',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = '�������� �������';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.', 7890.00, 1),
  ('Intel Core i5-7400', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� Intel.', 12700.00, 1),
  ('AMD FX-8320E', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 4780.00, 1),
  ('AMD FX-8320', '��������� ��� ���������� ������������ �����������, ���������� �� ��������� AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', '����������� ����� ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', '����������� ����� Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', '����������� ����� MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);
 select * from products p ;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = '������';

insert into orders (id, user_id, created_at, updated_at) values (1, 1, '2019-04-21 02:27:44', '2020-02-08 21:51:24');
insert into orders (id, user_id, created_at, updated_at) values (2, 2, '2020-06-02 11:35:20', '2020-01-26 12:14:06');
insert into orders (id, user_id, created_at, updated_at) values (3, 3, '2020-06-10 12:20:12', '2019-08-12 06:33:29');
insert into orders (id, user_id, created_at, updated_at) values (4, 4, '2019-12-30 17:38:12', '2019-12-30 09:49:54');
insert into orders (id, user_id, created_at, updated_at) values (5, 5, '2019-08-29 14:21:57', '2019-07-19 02:09:29');
insert into orders (id, user_id, created_at, updated_at) values (6, 6, '2020-05-07 09:45:52', '2019-11-11 08:08:12');
insert into orders (id, user_id, created_at, updated_at) values (7, 7, '2019-03-27 22:01:24', '2020-03-15 19:19:24');
insert into orders (id, user_id, created_at, updated_at) values (8, 8, '2019-04-03 07:19:56', '2020-04-09 15:33:45');
insert into orders (id, user_id, created_at, updated_at) values (9, 9, '2019-06-24 14:02:16', '2020-02-25 00:01:14');
insert into orders (id, user_id, created_at, updated_at) values (10, 10, '2018-12-08 17:25:33', '2020-06-26 07:12:45');
insert into orders (id, user_id, created_at, updated_at) values (11, 11, '2018-12-02 00:50:20', '2019-07-17 20:24:35');
insert into orders (id, user_id, created_at, updated_at) values (12, 12, '2018-08-18 23:13:04', '2019-07-21 13:01:08');
insert into orders (id, user_id, created_at, updated_at) values (13, 13, '2018-11-12 09:07:51', '2020-02-17 15:00:56');
insert into orders (id, user_id, created_at, updated_at) values (14, 14, '2020-03-01 02:13:56', '2019-12-24 16:48:48');
insert into orders (id, user_id, created_at, updated_at) values (15, 15, '2019-02-17 06:31:42', '2020-06-29 03:01:28');

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT '���������� ���������� �������� �������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ ������';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT '�������� ������ �� 0.0 �� 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = '������';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '����� �������� ������� �� ������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ �� ������';


 DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255) COMMENT 'Departure City',
  `to` VARCHAR(255) COMMENT 'Destination City'
) COMMENT = 'Available flights';

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255) COMMENT 'English name',
  name VARCHAR(255) COMMENT 'Russian name'
) COMMENT = 'Cities names translator';


INSERT INTO flights VALUES
	(NULL, 'moscow', 'omsk'),
    (NULL, 'novgorod', 'kazan'),
    (NULL, 'irkutsk', 'moscow'),
    (NULL, 'omsk', 'irkutsk'),
    (Null, 'moscow', 'kazan');
    
INSERT INTO cities VALUES
	('moscow', '������'),
    ('novgorod', '��������'),
    ('irkutsk', '�������'),
    ('omsk', '����'),
    ('kazan', '������');