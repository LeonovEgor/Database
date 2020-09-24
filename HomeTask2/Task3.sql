-- ������� 3
-- 3. (�� �������) � ������� ���� ������ shop ������������ ������� catalogs. ����� � ���� ������ sample ������� ������� cat,
-- � ������� ����� �������������� ������ � ������ �� ���������� �������. �������� ������, ������� �������� ������ �� ������� 
-- catalogs � ������� cat, ��� ���� ��� ������� � �������������� ���������� ������� � ������� cat ������ ������������� ������ 
-- ���������� �� ������� catalogs.

-- �������� ��
DROP database if exists sample;
CREATE  database sample;
USE sample;

-- ������� ������� cat
DROP TABLE IF EXISTS cat;
CREATE TABLE cat (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '�������� �������'
) COMMENT = '������� ��������-��������';

-- ������� ��������� ��������
INSERT INTO cat VALUES
  (DEFAULT, '����������'),
  (DEFAULT, '����');
 
 -- ��������� ������ �� shop.catalogs � sample.cat
 -- �������� ������� � ������� 3
 --  ON DUPLICATE KEY UPDATE cat.id = shop.catalogs.id;
 INSERT INTO cat 
   SELECT * FROM shop.catalogs
  ON DUPLICATE KEY UPDATE cat.id = shop.catalogs.id;
   
-- ��������� ���������� ������
SELECT * FROM cat;

 
 
