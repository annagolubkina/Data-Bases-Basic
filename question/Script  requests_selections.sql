
-- №1 Выбрать пользователей у которых статус заказа "Завершен"
select u.name ,u.surname, u.id 
from users u 
join orders o 
	on u.id = o.user_id 
join order_statuses os 
	on o.order_status_id  = os.id 
where os.name like 'Завершен';

-- №2 Выбор продуктов относящихся к категории "Макияж" и "Уход"
select * from products where catalog_id = (select id from catalogs  where name like 'Макияж') or catalog_id = (select id from catalogs  where name like 'Уход') ;


-- №3 	Выбор записи в студию красоты по мастеру, месяцу записи и вывести вид услуги-----------------
select concat(s.name ,' ',s.surname ) as master, a.appontment_time ,tt.name from appointments a 
join staff s 
	on a.staff_id = s.id 
join treatment_types tt 
	on a.treatment_type_id = tt.id 
where 
	s.surname like '%Волкова%'
	and
	date_format(a.appontment_time , '%m')  = 05;

select concat(s.name ,' ',s.surname ) as master, a.appontment_time ,tt.name from appointments a 
join staff s 
	on a.staff_id = s.id 
join treatment_types tt 
	on a.treatment_type_id = tt.id 
where 
	s.surname like '%Самарина%'
	and
	date_format(a.appontment_time  , '%m')  = 08;
-- ------------------------------------------------------------------------------------------------

-- №4 	5 пользователей у которых меньше всего заказов и процедур--------------------------------------
select selected_user, sum(activity) as total_activity from (
	(select user_id as selected_user,
			count(*) as activity
			from orders o 
			group by selected_user)
	union all 
    	(select user_id as selected_user,
			count(*) as activity
			from appointments 
			group by selected_user)
	) 
	AS union_select
group by selected_user
order by total_activity
limit 5;
-- ------------------------------------------------------------------------------------------------

-- №5  Средние цены по всем каталогам интернет-магазина---------------------------------------------
(select
  (select name from catalogs where id = 1 limit 1) as name,
  (select round(avg(price),2) from products where catalog_id = 1 limit 1) as price 
FROM
  products
 limit 1)
union all
(select
  (select name from catalogs where id = 2) as name,
  (select round(avg(price),2) from products where catalog_id = 2) as price 
FROM
  products
  limit 1)
 union all
(select
  (select name from catalogs where id = 3) as name,
  (select round(avg(price),2) from products where catalog_id = 3) as price 
FROM
  products
  limit 1)
 union all
 (select
  (select name from catalogs where id = 4) as name,
  (select round(avg(price),2) from products where catalog_id = 4) as price 
FROM
  products
  limit 1)
 union all
 (select
  (select name from catalogs where id = 5) as name,
  (select round(avg(price),2) from products where catalog_id = 5) as price 
FROM
  products
  limit 1)
 union all
 (select
  (select name from catalogs where id = 6) as name,
  (select round(avg(price),2) from products where catalog_id = 6) as price 
FROM
  products
  limit 1);
-- ----------------------------------------------------------------------------------------------

-- №6 Выбор заказанных в июле позиций, количество которых на складе не достачно для сбора заказов--------------------------------------------------------------------------------------------------
select name from products where id in(SELECT product_id  FROM order_products  JOIN storehouses  USING (product_id) where date_format(order_products.created_at ,'%m') = 07  and total > value);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- №7 Группировка городов по количеству заказов-------------------------------------------------------
select u.town_shipment, count(o.id ) as orders_count  from users u
join orders o
	on u.id = o.user_id 
group by u.town_shipment
order by orders_count desc;
-- ------------------------------------------------------------------------------------------------

-- №8 Группировка по покупателей по возрастным группам-----------------------------------------------
SELECT p.age_category, COUNT(*) AS `total`
FROM
(
    SELECT
        CASE WHEN TIMESTAMPDIFF(YEAR, birthday , CURDATE()) BETWEEN 18 AND 25
             THEN '18-25'
             WHEN TIMESTAMPDIFF(YEAR,  birthday, CURDATE()) BETWEEN 26 AND 35
             THEN '26-35'
             WHEN TIMESTAMPDIFF(YEAR,  birthday, CURDATE()) BETWEEN 36 AND 45
             THEN '36-45'
             WHEN TIMESTAMPDIFF(YEAR,  birthday, CURDATE()) BETWEEN 46 AND 55
             THEN '46-55'
             WHEN TIMESTAMPDIFF(YEAR, birthday, CURDATE()) > 55
             THEN '46-55'
             ELSE 'Other'
        END AS age_category
    FROM users 
) p
GROUP BY p.age_category;
-- ----------------------------------------------------------------------------------------------

-- №9  Выбор id и названия заказанных товаров из категории Макияж
select p.name from products p where p.id in (select op.id from order_products op where op.product_id in (select p2.id from products p2 where p2.catalog_id = 1 ));

-- №10  Выбор покупателя у которого больше всего скидок
select u.id,u.name,d.discount from users u 
join discounts d 
	on u.id = d.user_id 
order by d.discount desc
limit 10;


