-- 1. В базе данных shop и sample присутвуют одни и те же таблицы учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

USE shop;
TRUNCATE TABLE users;

INSERT INTO users VALUES
  (DEFAULT, 'Иванов', '2000-05-23', DEFAULT, DEFAULT),
  (DEFAULT, 'Петров', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, 'Сидоров', '2010-03-01', DEFAULT, DEFAULT);

USE sample;
TRUNCATE TABLE users;

INSERT INTO users VALUES
  (DEFAULT, 'OldValue', '1999-04-22', DEFAULT, DEFAULT),
  (DEFAULT, 'Петров', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, 'Сидоров', '2010-03-01', DEFAULT, DEFAULT);

START TRANSACTION;
-- Зададим идентификатор для переноса
SET @myId = 1;

-- Удаляем запись из таблицы Sample, т.к. ключ id должен быть уникальным
DELETE FROM users WHERE id = @myId;

-- Копируем запись
INSERT INTO sample.users  
   SELECT * FROM shop.users WHERE id = @myId;
   
-- Удаляем запись из исходной таблицы (в задании сказано переместить, а не скопировать)
DELETE FROM shop.users WHERE id = @myId;

COMMIT;

-- Проверяем, что запись перенеслась
SELECT * FROM users;
SELECT * FROM shop.users;