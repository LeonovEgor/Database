USE shop;

TRUNCATE TABLE products;

-- ������� �������� ������
INSERT INTO products VALUES
  (DEFAULT, '���������� 1', '�������� ���������� 1', 2500.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, NULL, '�������� ���������� 2', 4700.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, '���������� 3', NULL, 15200.00 , 1, DEFAULT, DEFAULT);
 
 SELECT * FROM products;


-- ������� �������� ������
-- ������ ���������� ������
INSERT INTO products VALUES
  
  (DEFAULT, NULL, NULL, 3400.00 , 2, DEFAULT, DEFAULT),