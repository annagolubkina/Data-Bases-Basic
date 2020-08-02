DELIMITER //
drop procedure if exists products_recommend //
create function products_recommend (for_user_id)
returns int
begin
	declare treatment bigint;
	declare recommend_product int;
	set treatment = (select tt.id  from appointments a 
		join treatment_types tt 
			on a.treatment_type_id = tt.id 
		where a.user_id = for_user_id
	limit 1);
	case 
	when treatment = 1 then
		set recommend_product =
		(select p.name,c.name from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 1
		order by rand()
		limit 1;)
	when treatment = 3 then 
	set recommend_product =
		(select p.name,c.name from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 2
		order by rand()
		limit 1;)
	when treatment = 4 then 
	set recommend_product =
		(select p.name,c.name from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 2
		order by rand()
		limit 1;)
	when treatment = 5 then 
	set recommend_product =
		(select p.name,c.name from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 2
		order by rand()
		limit 1;)
	else 
	set recommend_product =
		(select p.name,c.name from products p 
		join catalogs c 
			on p.catalog_id = c.id 
		where c.id = 5 or c.id  =6
		order by rand()
		limit 1;)
	end;
	return recommend_product;
end//	