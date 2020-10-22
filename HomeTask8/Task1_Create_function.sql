-- 1. �������� �������� ������� hello(), ������� ����� ���������� �����������, 
-- � ����������� �� �������� ������� �����. 
-- � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", 
-- � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
-- � 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 � "������ ����".


USE sample;

DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello()
RETURNS VARCHAR(30) DETERMINISTIC

BEGIN 
 DECLARE res VARCHAR(30);
 DECLARE cur_time TIME;

 SET cur_time = CURTIME();

 IF cur_time > TIME('18:00:00') THEN SET res = '������ ����';
   ELSEIF cur_time > TIME('12:00:00') THEN SET res = '������ ����';
   ELSE SET res = '������ ����';
 END IF;

 RETURN res;
END//

DELIMITER ;