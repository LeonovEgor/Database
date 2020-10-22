DELIMITER //
USE shop//

DROP TRIGGER IF EXISTS insert_check_null//
CREATE TRIGGER insert_check_null BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(NEW.name IS NULL AND NEW.description IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
	END IF;
END//

DROP TRIGGER IF EXISTS update_check_null//
CREATE TRIGGER update_check_null BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	IF(NEW.name IS NULL AND NEW.description IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE canceled';
	END IF;
END//

INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, 'Intel Core 7 generation.', 12700.00, 1)//
INSERT INTO products (name, description, price, catalog_id)
VALUES ('Intel Core i3-8100', NULL, 7890.00, 1)//
INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 4780.00, 1)//

UPDATE products SET name=null,description=NULL WHERE id=1//	
UPDATE products SET name='Intel',description=NULL WHERE id=2//	
UPDATE products SET name=null,description='Intel Core' WHERE id=3//	
	
SELECT name,description FROM products//	