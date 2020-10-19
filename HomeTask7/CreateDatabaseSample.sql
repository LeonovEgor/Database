DROP database if exists sample;
CREATE  database sample;
USE sample;

DROP TABLE IF EXISTS accaunts;
CREATE TABLE accaunts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя пользователя',
  password VARCHAR(255) COMMENT 'пароль'
) COMMENT = 'Пользователи';

-- добавление данных
INSERT INTO accaunts VALUES
  (DEFAULT, 'Иванов', '123'),
  (DEFAULT, 'Петров', 'pass'),
  (DEFAULT, 'Сидоров', 'root');
 
-- Создание View
CREATE VIEW username AS 
 SELECT a.id, a.name FROM accaunts a; 

-- Првоерка
SELECT * FROM accaunts;
SELECT * FROM username;