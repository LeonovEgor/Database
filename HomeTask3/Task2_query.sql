-- 2.������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR � � 
-- ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10". ���������� ������������� ���� 
-- � ���� DATETIME, �������� �������� ����� ��������.

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at VARCHAR(20) DEFAULT '',
  updated_at VARCHAR(20) DEFAULT ''
) COMMENT = '����������';

-- ������� ������
INSERT INTO users VALUES
  (DEFAULT, '������', '1994-10-03', '20.10.2025 8:10', '20.10.2017 23:07'),
  (DEFAULT, '������', '1956-05-13', '02.11.2010 10:10', '20.10.2017 23:25'),
  (DEFAULT, '�������', '2007-01-22', '15.09.2007 8:10', '20.10.2017 08:10');
  
SELECT * FROM users;
 
-- ������� ���� � ���������� ����� ��� ����������� ��������������� �������
ALTER TABLE users 
ADD created_at_temp DATETIME DEFAULT CURRENT_TIMESTAMP,
ADD  updated_at_temp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- ������������� ������ �� ������ � datatime � �������� ����� ����
UPDATE users
SET 
created_at_temp = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
updated_at_temp = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');

-- ��������
SELECT * FROM users;

-- ������ ������� created_at � updated_at
ALTER TABLE users 
DROP created_at,
RENAME COLUMN created_at_temp TO created_at,
DROP updated_at,
RENAME COLUMN updated_at_temp TO updated_at;

-- ��������
SELECT * FROM users;

