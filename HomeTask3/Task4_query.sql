-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий ('may', 'august')

-- Выбирем базу данных shop
USE shop;

-- Очистим таблицу
TRUNCATE TABLE users;

-- Добавим тестовые записи
INSERT INTO users VALUES
  (DEFAULT, 'Иванов', '2000-05-23', DEFAULT, default),
  (DEFAULT, 'Петров', '2010-08-13', DEFAULT, default),
  (DEFAULT, 'Сидоров', '2010-03-01', DEFAULT, default),
  (DEFAULT, 'Кузнецова', '2015-07-20', DEFAULT, default),
  (DEFAULT, 'Папова', '2017-05-12', DEFAULT, default),
  (DEFAULT, 'Москвина', '1999-08-03', DEFAULT, default);

-- Проверим все записи
SELECT *, LCASE(MONTHNAME(birthday_at)) AS month FROM users;

-- Выберем только май и август
SELECT * FROM users 
WHERE 
  LCASE(MONTHNAME(birthday_at)) = LCASE('may') OR 
  LCASE(MONTHNAME(birthday_at)) = LCASE('august')
 
