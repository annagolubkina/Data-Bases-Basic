-- Практическое задание по теме “Оптимизация запросов”
-- Задание 1
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    table_name varchar(50) NOT NULL,
    row_id INT UNSIGNED NOT NULL,
    row_name varchar(255)
) ENGINE = Archive;


DROP TRIGGER IF EXISTS products_insert;  
DELIMITER //
CREATE TRIGGER products_insert AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO logs VALUES (NULL, DEFAULT, "products", NEW.id, NEW.name);
END//
DELIMITER ;

DROP TRIGGER IF EXISTS users_insert;  
DELIMITER //
CREATE TRIGGER users_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO logs VALUES (NULL, DEFAULT, "users", NEW.id, NEW.name);
END//
DELIMITER ;

DROP TRIGGER IF EXISTS catalogs_insert;  
DELIMITER //
CREATE TRIGGER catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
    INSERT INTO logs VALUES (NULL, DEFAULT, "catalogs", NEW.id, NEW.name);
END//
DELIMITER ;



-- Практическое задание по теме “NoSQL”
-- Задание 1
HINCRBY addresses '127.0.0.1' 1
HGETALL addresses

HINCRBY addresses '127.0.0.2' 1
HGETALL addresses

HGET addresses '127.0.0.1'

-- Задание 2
HSET emails 'Reuben' 'arlo50@example.org'
HSET emails 'Frederik' 'terrence.cartwright@example.org'
HSET emails 'Unique' 'rupert55@example.org'

HGET emails 'Unique'

HSET users 'arlo50@example.org' 'Reuben'
HSET users 'terrence.cartwright@example.org' 'Frederik'
HSET users 'rupert55@example.org' 'Unique'

HGET users 'terrence.cartwright@example.org'