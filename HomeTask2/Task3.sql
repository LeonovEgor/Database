-- ЗАДАНИЕ 3
-- 3. (по желанию) В учебной базе данных shop присутствует таблица catalogs. Пусть в базе данных sample имеется таблица cat,
-- в которой могут присутствовать строки с такими же первичными ключами. Напишите запрос, который копирует данные из таблицы 
-- catalogs в таблицу cat, при этом для записей с конфликтующими первичными ключами в таблице cat должна производиться замена 
-- значениями из таблицы catalogs.

-- создадим БД
DROP database if exists sample;
CREATE  database sample;
USE sample;

-- добавим таблицу cat
DROP TABLE IF EXISTS cat;
CREATE TABLE cat (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела'
) COMMENT = 'Разделы интернет-магазина';

-- Вставим несколько значений
INSERT INTO cat VALUES
  (DEFAULT, 'Навигаторы'),
  (DEFAULT, 'Часы');
 
 -- Скопируем данные из shop.catalogs в sample.cat
 -- Ключевая строчка в задании 3
 --  ON DUPLICATE KEY UPDATE cat.id = shop.catalogs.id;
 INSERT INTO cat 
   SELECT * FROM shop.catalogs
  ON DUPLICATE KEY UPDATE cat.id = shop.catalogs.id;
   
-- Отобразим полученные данные
SELECT * FROM cat;

 
 
