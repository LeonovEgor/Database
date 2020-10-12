-- 1. ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� (orders) � ��������-��������.

-- ������� ���� ������ shop
USE shop;

-- ������� �������
TRUNCATE TABLE users;
TRUNCATE TABLE orders;

-- ������� �������� ������
INSERT INTO users VALUES
  (DEFAULT, '������', '2000-05-23', DEFAULT, DEFAULT),
  (DEFAULT, '������', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, '�������', '2010-03-01', DEFAULT, DEFAULT),
  (DEFAULT, '���������', '2015-07-20', DEFAULT, DEFAULT),
  (DEFAULT, '������', '2017-05-12', DEFAULT, DEFAULT),
  (DEFAULT, '��������', '1999-12-03', DEFAULT, DEFAULT);

INSERT INTO orders VALUES
  (DEFAULT, 1, DEFAULT, DEFAULT),
  (DEFAULT, 1, DEFAULT, DEFAULT),
  (DEFAULT, 2, DEFAULT, DEFAULT),
  (DEFAULT, 3, DEFAULT, DEFAULT),
  (DEFAULT, 3, DEFAULT, DEFAULT);

 -- ������ ������ ������� 1
SELECT name FROM users
WHERE id IN (SELECT user_id FROM orders);

-- ������ ������ ������� 2
SELECT DISTINCT u.name FROM users u 
JOIN orders o ON u.id = o.user_id;  