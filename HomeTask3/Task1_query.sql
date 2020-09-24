-- 1. ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.

USE shop;

TRUNCATE TABLE users;
-- ������� ������
INSERT INTO users VALUES
  (DEFAULT, '������', '1994-10-03', DEFAULT, DEFAULT),
  (DEFAULT, '������', '1956-05-13', DEFAULT, DEFAULT),
  (DEFAULT, '�������', '2007-01-22', DEFAULT, DEFAULT);
  
 -- �������� ������
 UPDATE users
 SET created_at = NULL, updated_at = null;
 
-- ��������, ��� ���� ����� = null
SELECT * FROM users;

-- ������ ����������� � ������� �����
UPDATE users
SET created_at = NOW(); 
-- , updated_at = NOW(); �.�. ���� updated_at ����������� ��� ��������� ������, ��� ����� �� ���������. 

-- ��������, ��� ���� ����� = ������� ����
SELECT * FROM users;