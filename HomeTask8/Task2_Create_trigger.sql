-- 2. ¬ таблице products есть два текстовых пол€: name с названием товара и description с его описанием. 
-- ƒопустимо присутствие обоих полей или одно из них. —итуаци€, когда оба пол€ принимают неопределенное значение NULL неприемлема. 
-- »спользу€ триггеры, добейтесь того, чтобы одно из этих полей или оба пол€ были заполнены. 
-- ѕри попытке присвоить пол€м NULL-значение необходимо отменить операцию.

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