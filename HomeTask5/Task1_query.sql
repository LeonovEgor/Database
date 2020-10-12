-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ (orders) в интернет-магазине.

-- Выбирем базу данных shop
USE shop;

-- Очистим таблицу
TRUNCATE TABLE users;
TRUNCATE TABLE orders;

-- Добавим тестовые записи
INSERT INTO users VALUES
  (DEFAULT, 'Иванов', '2000-05-23', DEFAULT, DEFAULT),
  (DEFAULT, 'Петров', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, 'Сидоров', '2010-03-01', DEFAULT, DEFAULT),
  (DEFAULT, 'Кузнецова', '2015-07-20', DEFAULT, DEFAULT),
  (DEFAULT, 'Папова', '2017-05-12', DEFAULT, DEFAULT),
  (DEFAULT, 'Москвина', '1999-12-03', DEFAULT, DEFAULT);

INSERT INTO orders VALUES
  (DEFAULT, 1, DEFAULT, DEFAULT),
  (DEFAULT, 1, DEFAULT, DEFAULT),
  (DEFAULT, 2, DEFAULT, DEFAULT),
  (DEFAULT, 3, DEFAULT, DEFAULT),
  (DEFAULT, 3, DEFAULT, DEFAULT);

 -- Запрос данных вариант 1
SELECT name FROM users
WHERE id IN (SELECT user_id FROM orders);

-- Запрос данных вариант 2
SELECT DISTINCT u.name FROM users u 
JOIN orders o ON u.id = o.user_id;  