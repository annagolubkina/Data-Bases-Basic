-- Задание 2---------------------------------------------------------------------
select p.name, c.name from products p 
join catalogs c
	on p.catalog_id = c.id ;

create view names (product, `catalog`) as 
select p.name, c.name from products p 
join catalogs c
	on p.catalog_id = c.id ;

select * from names;

-- ------------------------------------------------------------------------------

-- Хранимые процедуры и функции, триггеры----------------------------------------
-- Задание 1---------------------------------------------------------------------
create function hello ()
returns text no sql
begin
	declare hour_ int;
    declare greeting varchat(255);
    set hour_= (select date_format((now(), "%H"));
    if (hour_>= 18) then set greeting = 'Добрый вечер';
		elseif (hour_>= 12) then set  greeting = 'Добрый день';
		elseif (hour_>= 6)  then set greeting = 'Доброе утро';    
		else set greeting = 'Доброй ночи';
   end if;
   return greeting;
end
-- -------------------------------------------------------------------------------


