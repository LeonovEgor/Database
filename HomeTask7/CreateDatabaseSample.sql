DROP database if exists sample;
CREATE  database sample;
USE sample;

DROP TABLE IF EXISTS accaunts;
CREATE TABLE accaunts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ������������',
  password VARCHAR(255) COMMENT '������'
) COMMENT = '������������';

-- ���������� ������
INSERT INTO accaunts VALUES
  (DEFAULT, '������', '123'),
  (DEFAULT, '������', 'pass'),
  (DEFAULT, '�������', 'root');
 
-- �������� View
CREATE VIEW username AS 
 SELECT a.id, a.name FROM accaunts a; 

-- ��������
SELECT * FROM accaunts;
SELECT * FROM username;