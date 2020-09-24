-- 2.Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в 
-- них долгое время помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля 
-- к типу DATETIME, сохранив введеные ранее значения.

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(20) DEFAULT '',
  updated_at VARCHAR(20) DEFAULT ''
) COMMENT = 'Покупатели';

-- Добавим записи
INSERT INTO users VALUES
  (DEFAULT, 'Иванов', '1994-10-03', '20.10.2025 8:10', '20.10.2017 23:07'),
  (DEFAULT, 'Петров', '1956-05-13', '02.11.2010 10:10', '20.10.2017 23:25'),
  (DEFAULT, 'Сидоров', '2007-01-22', '15.09.2007 8:10', '20.10.2017 08:10');
  
SELECT * FROM users;
 
-- Добавим поля с правильным типом для дальнейшего конвертирования записей
ALTER TABLE users 
ADD created_at_temp DATETIME DEFAULT CURRENT_TIMESTAMP,
ADD  updated_at_temp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- Сконвертируем данные из строки в datatime и заполним новые поля
UPDATE users
SET 
created_at_temp = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
updated_at_temp = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');

-- Проверим
SELECT * FROM users;

-- Удалим колонки created_at и updated_at
ALTER TABLE users 
DROP created_at,
RENAME COLUMN created_at_temp TO created_at,
DROP updated_at,
RENAME COLUMN updated_at_temp TO updated_at;

-- Проверим
SELECT * FROM users;

