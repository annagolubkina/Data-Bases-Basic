-- База данных для социальной сети

drop database if exists test;/*при пересоздании скрипта*/
create database test ;
use test;

drop table if exists users;
create table users(
	id  SERIAL PRIMARY key,
	login VARCHAR(50),
	email VARCHAR(120) unique,
	phone varchar(100),
	firstname VARCHAR(100),
	lastname VARCHAR(100),
	index users_phone_idx(phone)
);

-- в нашей соцсети можно иметь несколько профилей 

drop table if exists profiles;
create table profiles(
	id  SERIAL PRIMARY key,
	user_id BIGINT unsigned,
	gender CHAR(1),
	birthday DATE,
	photo_id BIGINT unsigned null,
	created_at DATETIME default NOW(),
	hometown VARCHAR(100),
		name VARCHAR(255),
	lastname VARCHAR(255),
	foreign key (user_id) references users(id)
);

-- Студенты  
drop table if exists student;
create table student(
	student_id  SERIAL PRIMARY key,
	-- user_id BIGINT unsigned not null,
	name varchar (100),
	surname varchar (100),
	stipend int,
	kurs int,
	city VARCHAR(100),	
	birthday varchar(100),
	univ_id BIGINT unsigned null
	-- foreign key (user_id) references users(id)
);

-- Сообщения

 drop table if exists messages;
create table messages (
	id  SERIAL PRIMARY KEY,
	from_profile_id BIGINT unsigned not null,
	to_profile_id BIGINT unsigned not null,
	body TEXT,
	created_at DATETIME default NOW(),
	INDEX(from_profile_id),
	INDEX(to_profile_id),
	foreign key (from_profile_id) references profiles(id),
	foreign key (to_profile_id) references profiles(id)
);

-- Заявки в друзья дружба может быть одностронней
drop table if exists friends_requests;
create table friends_requestsn (
	initiator_profile_id BIGINT unsigned not null,
	target_profile_id BIGINT unsigned not null,
	status ENUM('requested' , 'approved', 'unfriend', 'declined'),
	requested_at DATETIME default NOW(),
	confirmed_at DATETIME,
	primary key (initiator_profile_id, target_profile_id), /*первыичный ключ*/
	index (initiator_profile_id),
	index (target_profile_id),
	foreign key (initiator_profile_id) references profiles(id),
	foreign key (target_profile_id) references profiles(id)
	
);

-- Группы
drop table if exists communities;
create table communities(
	id SERIAL  primary key,
	name VARCHAR(255),
	index(name)
);

drop table if exists user_communities;
create table user_communities(
	profile_id  BIGINT unsigned not null,
	community_id  BIGINT unsigned not null,
	primary key(profile_id, community_id),
	foreign key (profile_id) references profiles(id),
	foreign key (community_id) references communities(id)
);


drop table if exists posts;
create table posts(
	id SERIAL  primary key,
	profile_id  BIGINT unsigned not null,
	body TEXT,
	attachments JSON,
	metadata JSON,
	created_at DATETIME default NOW(),
	updated_at DATETIME default current_timestamp on update current_timestamp, 
	foreign key (profile_id) references profiles(id)	
);

drop table if exists comments;
create table comments(
	id SERIAL  primary key,
	profile_id BIGINT unsigned not null,
	post_id BIGINT unsigned not null,
	body text,
	created_at DATETIME default NOW(),
	updated_at DATETIME default Current_timestamp on update current_timestamp,
	foreign key (profile_id) references profiles(id),
	foreign key (post_id) references posts(id)
);

DROP TABLE IF EXISTS mediafiles;
CREATE TABLE mediafiles (
	id SERIAL  primary key,
  	profile_id BIGINT unsigned not null,
  	media_type_id ENUM('photo' , 'audio', 'video'),
  	filename varchar(255) NOT NULL,
  	`size` int(11) NOT NULL,
  	description varchar(255) NOT NULL,
  	metadata json,
  	created_at datetime DEFAULT CURRENT_TIMESTAMP,
 	updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 	index (media_type_id),
 	foreign key (profile_id) references profiles(id)
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
	count_like BIGINT,
	profile_id BIGINT unsigned not null,
  	post_id BIGINT unsigned not null,
  	media_id BIGINT unsigned not null,
  	initiator_profile_id BIGINT unsigned not null,				 -- от какого профиля лайк
	to_mediafile_id BIGINT unsigned not null,				 -- какому медиафайлу лайа
	to_post_id BIGINT unsigned not null,					 -- какому посту лайк
	target_profile_id BIGINT unsigned not null,  				-- какому профилю (пользователю) лайк
	index(count_like),
  	foreign key (profile_id) references profiles(id),		 -- внешний ключ к id профиля
 	foreign key (media_id) references  mediafiles(id),		-- внешний ключ к id медиафайла
 	foreign key (post_id) references posts(id),       		-- внешний ключ к id поста
 	foreign key (initiator_profile_id) references profiles(id),   -- внешний ключ от какого пользователя лайк
 	foreign key (target_profile_id) references profiles(id)     -- внешний ключ какому пользователю лайк	
) ;