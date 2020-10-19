-- 3. (�� �������) ����� ������� ������� � ����������� ����� created_at. 
-- � ��� ��������� ���������� ����������� ������ �� ������ 2018 ���� '2018-08-01', '2016-08-04', '2018-08-16' � 2018-08-17. 
-- ��������� ������, ������� ������� ������ ������ ��� �� ������, ��������� � �������� ���� �������� 1, 
-- ���� ���� ������������ � �������� ������� � 0, ���� ��� �����������.

DROP database if exists hw6_task3;
CREATE  database hw6_task3;
USE hw6_task3;

DROP TABLE IF EXISTS date_table;
CREATE TABLE date_table (
  created_at DATE 
);

INSERT INTO date_table 
VALUES ('2018-08-01'), ('2018-08-04'), ('2018-08-16'), ('2018-08-17');

-- ������� ��������� �������� 
SET @date_from = '2018-08-01';
SET @date_to = '2018-08-31';

DROP TEMPORARY TABLE IF EXISTS range_table;

-- �������� ��������� ������� � ������ ���������� ���.
CREATE TEMPORARY TABLE range_table AS (
  SELECT * FROM (
    -- ������� ������������ ��� ����� ������������� �������. �������� ������� �������� ���. 
    SELECT ADDDATE(@date_from, tens_of_ths.val*10000 + thousands.val*1000 + hundreds.val*100 + decades.val*10 + units.val) AS selected_date FROM
			(SELECT 0 val UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) units,
		    (SELECT 0 val UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) decades,
		    (SELECT 0 val UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) hundreds,
		    (SELECT 0 val UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) thousands,
		    (SELECT 0 val UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) tens_of_ths) period_tbl
	WHERE selected_date BETWEEN @date_from AND @date_to); -- ����������� ������ ����������

-- ������ �������
SELECT 
  range_table.selected_date,
  (date_table.created_at IS NOT NULL) AS has_date
FROM range_table
LEFT JOIN date_table ON range_table.selected_date = date_table.created_at


