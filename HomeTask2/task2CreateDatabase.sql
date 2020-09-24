-- ������� 2
-- ������������� ���� ������, ������� ��������� �� ������������ �������� �����������, ����������� ������������� 
-- (����, �����, �����). ���� ����� ����� ��������� � �������� �������, � ���� ������ ����� ��������� ������ 
-- ���� � ������, ��������, ��������, �������� ���� � �������������� ������������.
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////

DROP database if exists media;
CREATE  database media;
USE media;

-- ������������
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT '��� ������������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������������';

-- ���������� ���������
DROP TABLE IF EXISTS content;
CREATE TABLE content (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) COMMENT '��������',
  desription TEXT COMMENT '��������',
  user_id INT UNSIGNED COMMENT 'id ��������� �����', 
  url VARCHAR(2048) COMMENT '���� � �����',
  data_types ENUM('photo', 'audio', 'video') COMMENT '��� ������ (����, �����, �����)', 
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id(user_id)
) COMMENT = '������ �����';

-- ������ �������� ����
DROP TABLE IF EXISTS keywords;
CREATE TABLE keywords (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT '�������� �����'
) COMMENT = '������ �������� ����';

-- ������� ������������ ��������� �������� ���� � ��������� ����������� ���������
DROP TABLE IF EXISTS content_keywords;
CREATE TABLE content_keywords (
  content_id INT UNSIGNED COMMENT 'id ����� �����',
  keyword_id INT UNSIGNED COMMENT 'id ��������� �����'
) COMMENT = '������ �������� ����';


 