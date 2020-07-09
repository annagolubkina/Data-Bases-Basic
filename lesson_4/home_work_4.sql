
-- ����������, ����������, ���������� � �����������
-- --------------------------------------������� 1 ---------------------------------------  
-- ��� ������ � ������� � DBeaver ���� created_at � updated_at ��� �� ������ �� ��������  
UPDATE shop_3.products
    SET created_at = null where id between 1 and 9;

 UPDATE shop_3.products
    SET updated_at = null WHERE id BETWEEN 1 AND 9;
   
SELECT created_at,updated_at from products;


UPDATE products
    SET created_at = NOW() WHERE created_at is NULL;
UPDATE products
    SET updated_at = NOW() WHERE created_at is NULL;

SELECT created_at,updated_at from products;
-- --------------------------------------------------------------------------------------- 

-- --------------------------------------������� 2 ---------------------------------------    
-- � ������� "�����" ������� users_wrong � ����� VARCHAR ��� ������� �������
UPDATE users_wrong 
SET 
	 created_at_dt = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'),
	 updated_at_dt = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i')
WHERE id BETWEEN 1 AND 9;

ALTER TABLE users_wrong 
    DROP created_at, DROP updated_at, 
    RENAME COLUMN created_at_dt TO created_at, RENAME COLUMN updated_at_dt TO updated_at;
-- ---------------------------------------------------------------------------------------    
   
-- --------------------------------------������� 3 ---------------------------------------   
INSERT INTO storehouses_products (value ) values
(0),(2500),(0),(30),(500),(1);

SELECT
    value
FROM
    storehouses_products order by case when value = 0 then 1 else 0 end, value;
 -- --------------------------------------------------------------------------------------- 
 
-- --------------------------------------������� 4 ---------------------------------------
SELECT
    name,birthday_at,
    CASE 
	WHEN date_format(birthday_at,' %m') = 05 THEN 'may'
	WHEN date_format(birthday_at,' %m') = 08 THEN 'august'
  END as month
FROM
    users; -- WHERE DATE_FORMAT(birthday_at, '%m') = 05 OR DATE_FORMAT(birthday_at, '%m') = 08;
 -- --------------------------------------------------------------------------------------- 
 
-- --------------------------------------������� 5 ---------------------------------------
SELECT * FROM catalogs WHERE id IN (5, 1, 2);

SELECT
*
FROM catalogs where id in(5,1,2)
ORDER BY  CASE 
	WHEN id = 5 THEN 0
	WHEN id = 1 THEN 1
	WHEN id = 2 THEN 2
END;
 -- --------------------------------------------------------------------------------------- 
 
 -- ���������� ������� 
-- --------------------------------------������� 1 ---------------------------------------
SELECT 
	avg(floor((to_days(now()) - to_days(birthday_at)) / 365.25))
FROM 	
	users;
 -- --------------------------------------------------------------------------------------- 
 
-- --------------------------------------������� 2 ---------------------------------------
SELECT 
 DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6))) AS week_day_birthday,
 COUNT(*) AS quantity_birthday
FROM 
users
GROUP BY 
week_day_birthday 
ORDER BY 
quantity_birthday desc;
 -- --------------------------------------------------------------------------------------- 

-- --------------------------------------������� 3 ---------------------------------------
SELECT exp(sum(ln(value))) FROM storehouses_products sp ; -- �� ����� ��������� ����� �������� value, ������������ ������ �� ������� ���������: {1,30,500,2500}
 -- --------------------------------------------------------------------------------------- 
	

