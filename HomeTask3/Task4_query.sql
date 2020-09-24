-- 4. (�� �������) �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
-- ������ ������ � ���� ������ ���������� �������� ('may', 'august')

-- ������� ���� ������ shop
USE shop;

-- ������� �������
TRUNCATE TABLE users;

-- ������� �������� ������
INSERT INTO users VALUES
  (DEFAULT, '������', '2000-05-23', DEFAULT, default),
  (DEFAULT, '������', '2010-08-13', DEFAULT, default),
  (DEFAULT, '�������', '2010-03-01', DEFAULT, default),
  (DEFAULT, '���������', '2015-07-20', DEFAULT, default),
  (DEFAULT, '������', '2017-05-12', DEFAULT, default),
  (DEFAULT, '��������', '1999-08-03', DEFAULT, default);

-- �������� ��� ������
SELECT *, LCASE(MONTHNAME(birthday_at)) AS month FROM users;

-- ������� ������ ��� � ������
SELECT * FROM users 
WHERE 
  LCASE(MONTHNAME(birthday_at)) = LCASE('may') OR 
  LCASE(MONTHNAME(birthday_at)) = LCASE('august')
 
