-- 4. (�� �������) ����� ������� ����� ������� � ����������� ����� created_at. 
-- �������� ������, ������� ������� ���������� ������ �� �������, �������� ������ 5 ����� ������ �������.

-- ������� ���� ������ shop
USE shop;

-- ������� �������
TRUNCATE TABLE products;

-- ������� �������� ������
INSERT INTO products VALUES
  (DEFAULT, '���������� 1', '���������� 1', 2500.00 , 1, '1999-04-22', DEFAULT),
  (DEFAULT, '���������� 2', '���������� 2', 4700.00 , 1, '2000-04-22', DEFAULT),
  (DEFAULT, '���������� 3', '���������� 3', 15200.00 , 1, '2001-04-22', DEFAULT),
  (DEFAULT, '���.����� 1', '���.����� 1', 3400.00 , 2, '2002-04-22', DEFAULT),
  (DEFAULT, '���.����� 2', '���.����� 2', 4500.00 , 2, '2003-04-22', DEFAULT),
  (DEFAULT, '��������� 1', '��������� 1', 10200.00 , 3, '2004-04-22', DEFAULT),
  (DEFAULT, '��������� 2', '��������� 2', 15400.00 , 3, '2005-04-22', DEFAULT),
  (DEFAULT, '��������� 3', '��������� 3', 22350.00 , 3, '2006-04-22', DEFAULT),
  (DEFAULT, '��������� 4', '��������� 4', 52790.00 , 3, '2007-04-22', DEFAULT);
 
-- ������ ���, ����� 5�� ����� ������
DELETE FROM products 
WHERE products.id NOT IN (
    SELECT new_prod.id FROM (
        SELECT p.id, p.created_at 
        FROM products p
        ORDER BY p.created_at DESC 
        LIMIT 5 
    ) AS new_prod
);

SELECT * FROM products;

