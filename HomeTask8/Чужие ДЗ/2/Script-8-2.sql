USE shop;

DELIMITER //

DROP PROCEDURE IF EXISTS check_name_description//
CREATE PROCEDURE check_name_description (IN name VARCHAR(255), IN description VARCHAR(255))
BEGIN
    IF name IS NULL AND description IS NULL THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Хотя бы одно из полей наименование или описание должно быть задано';
    END IF;    
END//

DROP TRIGGER IF EXISTS check_name_description_insert//
CREATE TRIGGER check_name_description_insert BEFORE INSERT ON products
FOR EACH ROW 
BEGIN 
    CALL check_name_description(NEW.name, NEW.description);
END//

DROP TRIGGER IF EXISTS check_name_description_update//
CREATE TRIGGER check_name_description_update BEFORE UPDATE ON products
FOR EACH ROW 
BEGIN 
    CALL check_name_description(NEW.name, NEW.description);
END//

DELIMITER ;

-- TEST

INSERT INTO products (name, description) VALUES (NULL, NULL);

UPDATE products SET name = NULL WHERE LENGTH(description) = 0;

UPDATE products SET description = NULL WHERE name IS NULL;