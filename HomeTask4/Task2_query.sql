-- 2. ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
-- ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.

-- ������� ���� ������ shop
USE shop;

-- ������� �������
TRUNCATE TABLE users;

-- ������� �������� ������
INSERT INTO users VALUES
  (DEFAULT, '������', '2000-05-23', DEFAULT, DEFAULT),
  (DEFAULT, '������', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, '�������', '2010-03-01', DEFAULT, DEFAULT),
  (DEFAULT, '���������', '2015-07-20', DEFAULT, DEFAULT),
  (DEFAULT, '������', '2017-05-12', DEFAULT, DEFAULT),
  (DEFAULT, '��������', '1999-12-03', DEFAULT, DEFAULT);

-- ������ ������
SELECT
DAYNAME(CONCAT(YEAR(CURDATE()), '-', DATE_FORMAT(birthday_at, '%m-%d'))) AS week_day,
COUNT(WEEKDAY(CONCAT(YEAR(CURDATE()), '-', DATE_FORMAT(birthday_at, '%m-%d')))) AS count 
FROM
  users
GROUP BY week_day;