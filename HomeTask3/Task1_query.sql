-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

USE shop;

TRUNCATE TABLE users;
-- Добавим записи
INSERT INTO users VALUES
  (DEFAULT, 'Иванов', '1994-10-03', DEFAULT, DEFAULT),
  (DEFAULT, 'Петров', '1956-05-13', DEFAULT, DEFAULT),
  (DEFAULT, 'Сидоров', '2007-01-22', DEFAULT, DEFAULT);
  
 -- Испортим записи
 UPDATE users
 SET created_at = NULL, updated_at = null;
 
-- Проверим, что поля стали = null
SELECT * FROM users;

-- Внесем исправления с текущей датой
UPDATE users
SET created_at = NOW(); 
-- , updated_at = NOW(); т.к. поле updated_at обновляется при изменении записи, его можно не добавлять. 

-- Проверим, что поля стали = текущей дате
SELECT * FROM users;