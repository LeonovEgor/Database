-- 2. �������� �������������, ������� ������� �������� (name) �������� ������� �� ������� products 
--    � ��������������� �������� (name) �������� �� ������� catalogs.

-- ������� ���� ������ shop
USE shop;

-- ������� �������
TRUNCATE TABLE products;
TRUNCATE TABLE catalogs;

-- ������� �������� ������
INSERT INTO products VALUES
  (DEFAULT, '���������� 1', '���������� 1', 2500.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, '���������� 2', '���������� 2', 4700.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, '���������� 3', '���������� 3', 15200.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, '���.����� 1', '���.����� 1', 3400.00 , 2, DEFAULT, DEFAULT),
  (DEFAULT, '���.����� 2', '���.����� 2', 4500.00 , 2, DEFAULT, DEFAULT),
  (DEFAULT, '��������� 1', '��������� 1', 10200.00 , 3, DEFAULT, DEFAULT),
  (DEFAULT, '��������� 2', '��������� 2', 15400.00 , 3, DEFAULT, DEFAULT),
  (DEFAULT, '��������� 3', '��������� 3', 22350.00 , 3, DEFAULT, DEFAULT),
  (DEFAULT, '��������� 4', '��������� 4', 52790.00 , 3, DEFAULT, DEFAULT);
  
 INSERT INTO catalogs VALUES
  (DEFAULT, '����������'),
  (DEFAULT, '���. �����'),
  (DEFAULT, '����������');

-- �������� View
CREATE VIEW catalog_of_products AS 
 SELECT p.name, c.name AS catalog_name FROM products p 
 JOIN catalogs c ON p.catalog_id = c.id;
 
-- ��������
SELECT * FROM catalog_of_products;