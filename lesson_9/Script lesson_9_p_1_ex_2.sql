-- ������� 2---------------------------------------------------------------------
select p.name, c.name from products p 
join catalogs c
	on p.catalog_id = c.id ;

create view names (product, `catalog`) as 
select p.name, c.name from products p 
join catalogs c
	on p.catalog_id = c.id ;

select * from names;

-- ------------------------------------------------------------------------------

-- �������� ��������� � �������, ��������----------------------------------------
-- ������� 1---------------------------------------------------------------------
create function hello ()
returns text no sql
begin
	declare hour_ int;
    declare greeting varchat(255);
    set hour_= (select date_format((now(), "%H"));
    if (hour_>= 18) then set greeting = '������ �����';
		elseif (hour_>= 12) then set  greeting = '������ ����';
		elseif (hour_>= 6)  then set greeting = '������ ����';    
		else set greeting = '������ ����';
   end if;
   return greeting;
end
-- -------------------------------------------------------------------------------


