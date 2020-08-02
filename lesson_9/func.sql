create procedure my_version ()
begin
	select version();
end



drop function if exists get_version;
create function get_version()
returns text deterministic
begin
	return version();
end

drop function if exists hello;
create function hello ()
returns tinytext
begin
	declare h int;
	set h = H(now());
	case
		when hours between 0 and 5 then
		return '������ ����';
		when hours between 6 and 11 then
		return '�����t ����';	
		when hours between 12 and 18 then
		return '������ ����';
		when hours between 18 and 23 then
		return '������ �����';
	end case;
end
select now(),hello();




DROP FUNCTION IF EXISTS hello;

DELIMITER //
CREATE FUNCTION hello ()
RETURNS TEXT NO SQL
BEGIN
	DECLARE hour_ INT;
    DECLARE greeting VARCHAR(255);
    SET hour_= (SELECT DATE_FORMAT(NOW(), "%H"));
    IF (hour_>= 18) THEN SET greeting = '������ �����';
		ELSEIF (hour_>= 12) THEN SET greeting = '������ ����';
		ELSEIF (hour_>= 6) THEN SET greeting = '������ ����';    
		ELSE SET greeting = '������ ����';
    END IF;
    RETURN greeting;
END
DELIMITER ;

SELECT hello();




