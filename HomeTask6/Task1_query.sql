-- 1. � ���� ������ shop � sample ���������� ���� � �� �� ������� ������� ���� ������. 
-- ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������.

USE shop;
TRUNCATE TABLE users;

INSERT INTO users VALUES
  (DEFAULT, '������', '2000-05-23', DEFAULT, DEFAULT),
  (DEFAULT, '������', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, '�������', '2010-03-01', DEFAULT, DEFAULT);

USE sample;
TRUNCATE TABLE users;

INSERT INTO users VALUES
  (DEFAULT, 'OldValue', '1999-04-22', DEFAULT, DEFAULT),
  (DEFAULT, '������', '2010-08-13', DEFAULT, DEFAULT),
  (DEFAULT, '�������', '2010-03-01', DEFAULT, DEFAULT);

START TRANSACTION;
-- ������� ������������� ��� ��������
SET @myId = 1;

-- ������� ������ �� ������� Sample, �.�. ���� id ������ ���� ����������
DELETE FROM users WHERE id = @myId;

-- �������� ������
INSERT INTO sample.users  
   SELECT * FROM shop.users WHERE id = @myId;
   
-- ������� ������ �� �������� ������� (� ������� ������� �����������, � �� �����������)
DELETE FROM shop.users WHERE id = @myId;

COMMIT;

-- ���������, ��� ������ �����������
SELECT * FROM users;
SELECT * FROM shop.users;