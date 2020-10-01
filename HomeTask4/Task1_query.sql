-- 1. ����������� ������� ������� ������������� � ������� users.

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
  round( 
    AVG (
      (YEAR(CURRENT_DATE) - YEAR(birthday_at)) -                             
      (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(birthday_at, '%m%d')) 
       )
  ) AS avg_age
FROM
  users;
