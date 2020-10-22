-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".


USE sample;

DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello()
RETURNS VARCHAR(30) DETERMINISTIC

BEGIN 
 DECLARE res VARCHAR(30);
 DECLARE cur_time TIME;

 SET cur_time = CURTIME();

 IF cur_time > TIME('18:00:00') THEN SET res = 'Доброй ночи';
   ELSEIF cur_time > TIME('12:00:00') THEN SET res = 'Добрый день';
   ELSE SET res = 'Доброе утро';
 END IF;

 RETURN res;
END//

DELIMITER ;