-- ������� 1---------------------------------------------------------------------
create database sample;
use sample;

drop table if exists users;
create table users (
  id SERIAL PRIMARY KEY,
  name varcahr(255) COMMENT '��� ����������',
  birthday_at date COMMENT '���� ��������',
  created_at datetime default  current_timestamp,
  updated_at DATETIME default current_timestamp on update current_timestamp
) COMMENT = '����������';

start transaction;
unsert into sample.users
	(select * from shop_3.users where id = 1);
-- ------------------------------------------------------------------------------

