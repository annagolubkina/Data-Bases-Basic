
ALTER TABLE vk.users ADD pass varchar(255) NOT NULL;


-- INSERT # 1
insert into users (id, email, phone, pass) 
values (1, 'rgouldstone0@examiner.com', '168-114-2896', 'BYxTG9NNEIyY');

insert into users (id, email, phone, pass, login ) 
values (2, 'bpettican@yelp.com', '145-257-1691', 'lMgIZI', 'bpettican');

insert into users (login, pass, email, phone) values
('Reuben', 'Nienow', 'arlo50102@example.org', '9374071116'),
('Frederik', 'Upton', 'terrence.cartwright@example.org', '9127498182'),
('Unique', 'Windler', 'rupert55@example.org', '9921090703'),
('Norene', 'West', 'rebekah29@example.net', '9592139196'),
('Frederick', 'Effertz', 'von.bridget@example.net', '9909791725')
;

-- INSERT # 2

INSERT INTO users
set 
	login = 'frdgfd',
	email = 'sdfsdf@sdasd.rt',
	phone = '678-789-789',
	pass = 'kjndfg987rwelrklhv'

-- INSERT # 3
	insert into vk.users (login, email, phone , pass )
	select vk2.users.lastname,vk2.users.email,vk2.users.phone, test.users.pass from vk2.users 
	join test.users -- ����������� ������� users �� �� test
	on test.users.id = vk2.users.id -- ����������� �� ���� id 
	where vk2.users.id > 10;
	
-- INSERT  profiles
	INSERT INTO vk.profiles (user_id, name ,lastname, hometown)
	SELECT student_id, name,surname,city FROM test.student


-- UPDATE
update users 
set 
	login = ' lost'
where id = 1; /*����������� ����������� ����� login lost ����� �� ���� �������*/


-- SELECT
select * from vk.profiles limit 25;

select name,lastname from vk.profiles limit 5;

select name from vk.profiles  limit 100;

select distinct name from vk.profiles limit 100; -- distinct ����� ������ �� �����������

select distinct hometown from vk.profiles limit 20;

select name, lastname, hometown from vk.profiles where hometown = '���������'

select name, lastname, hometown from vk.profiles where name = '����' and id>100;

select name, lastname, hometown from vk.profiles where name in ('����','������','��������','�������');

select name, lastname, hometown from vk.profiles where name not in ('����','������','��������','�������'); -- ��������� ���� ��� � �������

select * from vk.users where id >= 20 and id<=40; -- �����������
select * from vk.users where id between 20 and 40; -- �����������

select hometown from vk.profiles where hometown like '�����';

select hometown from vk.profiles where hometown like '%��';
select hometown from vk.profiles where hometown like '������-__';

update vk.profiles 
set 
	hometown = '�����-2'
where id = 637 and id = 645; 

update vk.profiles 
set 
	hometown = '�����-2'
where id = 645; 

select concat(name, ' ', lastname ) as fullname from vk.profiles limit 20;

select count(*) from vk.users;

select count(photo_id ) from vk.profiles;

select count(distinct hometown) from vk.profiles where hometown like '�����%';

select count(hometown) as total_citizenship, hometown from vk.profiles group by hometown; -- ����������� �� �������
select count(hometown) as total_citizenship, hometown from vk.profiles group by hometown order by total_citizenship ; -- ����������� �� ������� � ���������� �� �����������
select count(hometown) as total_citizenship, hometown from vk.profiles group by hometown order by total_citizenship desc ; -- ����������� �� ������� � ���������� �� ��������

select count(hometown) as total_citizenship, hometown from vk.profiles group by hometown having total_citizenship>=3 ; 

update vk.users 
set phone = null 
where phone = '';

select * from vk.users where phone is null;

-- ��������� ������� communities � ��������� �������� � ���
select count(*) from vk.communities c ;
select name from vk.communities c where name like '%an';
select distinct name from vk.communities c limit 50;
select count(name) from vk.communities c  where id >= 10 and id <= 56;



