DELIMITER //

DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello ()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE t_now TIME;
    SET t_now = TIME(NOW());
    
    IF t_now >= TIME('00:00:00') AND t_now < TIME('06:00:00') THEN
        RETURN "Доброй ночи";
    ELSEIF  t_now >= TIME('06:00:00') AND t_now < TIME('12:00:00') THEN
        RETURN "Доброе утро";
    ELSEIF  t_now >= TIME('12:00:00') AND t_now < TIME('18:00:00') THEN
        RETURN "Добрый день";
    ELSE 
        RETURN "Добрый вечер";
    END IF;
END//

SELECT hello()//

DELIMITER ;
