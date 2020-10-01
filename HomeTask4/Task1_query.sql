-- 1. Подсчитайте средний возраст пользователей в таблице users.

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
  round( 
    AVG (
      (YEAR(CURRENT_DATE) - YEAR(birthday_at)) -                             
      (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday_at, '%m%d')) 
       )
  ) AS avg_age
FROM
  users;
