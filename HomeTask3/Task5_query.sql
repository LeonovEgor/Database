-- 5. (�� �������) �� ������� catalogs ����������� ������ ��� ������ �������. 
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2); ������������ ������ � �������, �������� � ������ IN.

USE shop;

-- ������� �������
TRUNCATE TABLE catalogs;

-- ������� ��������� �������� ��� ����������� ��������������
INSERT INTO catalogs VALUES
  (DEFAULT, '����������'),
  (DEFAULT, '���.�����'),
  (DEFAULT, '����������'),
  (DEFAULT, '��������� �����'),
  (DEFAULT, '����������'),
  (DEFAULT, '����'),
  (DEFAULT, '����������'),
 (DEFAULT, '����������� ������');

-- ������� ������� �� id � ������� �� � ��� �� �������
SELECT * FROM catalogs 
WHERE id IN (5, 1, 2) 
ORDER BY FIELD(id, 5, 1, 2)
