-- Триггеры на проверку вставки и обновления новых позиций в таблицу товаров интеренет-магазина----
DELIMITER //
create trigger check_product_date_before_insert before insert on products
for each row
	begin
		if new.created_at >= current_date() then 
			set new.created_at = current_date();
		end if;
	end
//
create trigger check_product_date_before_update before insert on products
for each row
	begin
		if new.updated_at >= current_date() then 
			set new.updated_at = current_date();
		end if;
	end
//
-- ------------------------------------------------------------------------------------------------
DELIMITER ;
--  проверка работы триггера------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 insert into products (id, name, description, price, catalog_id, created_at,updated_at) values (102, 'СУХОЙ ПИГМЕНТ METALLIZED COPPER', 'Главная идея Metallized — дать максимум цвета',2150,1,'2020-10-10 13:33:59', '2020-10-28 20:02:52');
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



-- № 1 Процедура выбора товаров по заданному диапазону цен и бренду косметики--------------------------------------------------------------------
drop procedure if exists search_price;
delimiter //
create procedure search_price(in min_price decimal(11,2), in max_price decimal(11,2),in s_brand varchar(100))
	begin
	select p.id, p.name, p.description, p.price,p.brand from products p where price between min_price and max_price and p.brand like s_brand;
	end //
delimiter ;
call search_price(2150.0,4500.0,'Erborian');
-- -------------------------------------------------------------------------------------------------------------------------------------------


-- №2 Процедура выбора рекомендуемых товаров для клиента на основе заказов сделанных из его города---
drop procedure if exists product_offers;
delimiter //
create procedure product_offers(in for_user_id INT)
begin
select distinct op.product_id,p.name,p.price from order_products op
join products p
	on p.id  = op.product_id 
where op.user_id in (select u2.id
    from users u1
    join users u2 
		on (u1.town_shipment = u2.town_shipment )
	where u1.id  = for_user_id
	and u2.id  <> for_user_id )
order by rand()
limit 5;
end//
delimiter ;
call product_offers(1);
-- ---------------------------------------------------------------------------------------------------

-- №3 Функция вывода рекомендации товара покупателю в зависимости от полученной им услуги в студии красоты----
drop function if exists products_recommend;
DELIMITER //
create function products_recommend (for_user_id int)
returns varchar(255) CHARACTER SET utf8
READS SQL DATA
begin
	declare treatment bigint;
	declare recommend_product varchar(255);


	set treatment = (select tt.id  from appointments a 
		join treatment_types tt 
			on a.treatment_type_id = tt.id 
		where a.user_id = for_user_id
	limit 1);

	case treatment 
	when  1 then
		set recommend_product =
		(select concat('Название:', ' ',p.name, ' ' , ' ID Продукта=',' ',p.id) from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 1
		order by rand()
		limit 1);
	when 3 then 
	set recommend_product =
		(select  concat('Название:', ' ',p.name, ' ' , ' ID Продукта=',' ',p.id) from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 2
		order by rand()
		limit 1);
	when 4 then 
	set recommend_product =
		(select concat('Название:', ' ',p.name, ' ' , ' ID Продукта=',' ',p.id) from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 2
		order by rand()
		limit 1);
	when 5 then 
	set recommend_product =
		(select concat('Название:', ' ',p.name, ' ' , ' ID Продукта=',' ',p.id) from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 2
		order by rand()
		limit 1);
	else 
	set recommend_product =
		(select concat('Название:', ' ',p.name, ' ' , ' ID Продукта=',' ',p.id) from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 5 or c.id  =6
		order by rand()
		limit 1);
	end case;
	return  recommend_product;
end//	
delimiter ;

select products_recommend(2);
-- ---------------------------------------------------------------------------------------------------------------

