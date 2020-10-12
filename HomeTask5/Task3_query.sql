-- 3. (�� �������) ���� ������� ������ flights (id, from, to) � ������� ������� cities (label, name). 
-- ���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
-- �������� ������ ������ (flights) � �������� ���������� �������.

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
-- ������� ������
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
-- ������� ������
INSERT INTO cities VALUES
  ("moscow", "������"),
  ("irkutsk", "�������"),
  ("novgorod", "��������"),
  ("kazan", "������"),
  ("omsk", "����");
 
 -- ������
SELECT 
  f.id, 
  c_from.name AS CityFrom, 
  c_to.name AS CityTo 
FROM flights AS f
JOIN cities AS c_from ON f.label_from = c_from.label
JOIN cities AS c_to ON f.label_to = c_to.label
ORDER BY f.id



