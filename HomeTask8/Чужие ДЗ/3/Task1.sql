DELIMITER //
CREATE DATABASE IF NOT EXISTS example//
USE example//

DROP FUNCTION IF EXISTS hello;
CREATE FUNCTION hello()
RETURNS TEXT NOT DETERMINISTIC
BEGIN
	DECLARE hour INT DEFAULT HOUR(NOW());
	IF(hour > 5 AND hour < 12) THEN
		RETURN '���஥ ���! / Good morning!';
	ELSEIF(hour > 11 AND hour < 18) THEN
		RETURN '����� ����! / Good afternoon!';	
	ELSEIF(hour > 17) THEN
		RETURN '����� ����! / Good evening!';
	ELSE
		RETURN '���ன ���! / Good night!';
	END IF;
END//

SELECT hello() AS '�ਢ���⢨� / Welcome'//