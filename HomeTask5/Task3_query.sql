-- 3. (по желанию) Есть таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов (flights) с русскими названиями городов.

DROP database if exists Avia;
CREATE  database Avia;
USE Avia;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  label_from VARCHAR(50),
  label_to VARCHAR(50)
);

TRUNCATE TABLE flights;
-- Добавим записи
INSERT INTO flights VALUES
  (DEFAULT, "moscow", "omsk"),
  (DEFAULT, "novgorod", "kazan"),
  (DEFAULT, "irkutsk", "moscow"),
  (DEFAULT, "omsk", "irkutsk"),
  (DEFAULT, "moscow", "kazan");

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(50),
  name VARCHAR(50)
);

TRUNCATE TABLE cities;
-- Добавим записи
INSERT INTO cities VALUES
  ("moscow", "Москва"),
  ("irkutsk", "Иркутск"),
  ("novgorod", "Новгород"),
  ("kazan", "Казань"),
  ("omsk", "Омск");
 
 -- Запрос
SELECT 
  f.id, 
  c_from.name AS CityFrom, 
  c_to.name AS CityTo 
FROM flights AS f
JOIN cities AS c_from ON f.label_from = c_from.label
JOIN cities AS c_to ON f.label_to = c_to.label
ORDER BY f.id



