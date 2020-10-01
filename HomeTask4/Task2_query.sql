-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

-- Выбирем базу данных shop
USE shop;

-- Очистим таблицу
TRUNCATE TABLE users;

-- Добавим тестовые записи
INSERT INTO users VALUES
  (DEFAULT, 'Иванов', '2000-05-23', DEFAULT, DEFAULT),
  (DEFAULT, 'Петров', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, 'Сидоров', '2010-03-01', DEFAULT, DEFAULT),
  (DEFAULT, 'Кузнецова', '2015-07-20', DEFAULT, DEFAULT),
  (DEFAULT, 'Папова', '2017-05-12', DEFAULT, DEFAULT),
  (DEFAULT, 'Москвина', '1999-12-03', DEFAULT, DEFAULT);

-- Запрос данных
SELECT
DAYNAME(CONCAT(YEAR(CURDATE()), '-', DATE_FORMAT(birthday_at, '%m-%d'))) AS week_day,
COUNT(WEEKDAY(CONCAT(YEAR(CURDATE()), '-', DATE_FORMAT(birthday_at, '%m-%d')))) AS count 
FROM
  users
GROUP BY week_day;