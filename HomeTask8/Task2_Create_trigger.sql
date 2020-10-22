-- 2. � ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������. 
-- ��������� ����������� ����� ����� ��� ���� �� ���. ��������, ����� ��� ���� ��������� �������������� �������� NULL �����������. 
-- ��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������. 
-- ��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.

USE shop;

DELIMITER //

DROP TRIGGER IF EXISTS products_name_desc//

CREATE TRIGGER check_products_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF ((NEW.name IS NULL) AND (NEW.description IS NULL)) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fields name and description cannot be NULL together.';
  END IF;
END;

DELIMITER ;