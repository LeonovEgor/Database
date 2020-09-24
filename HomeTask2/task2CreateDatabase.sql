-- ЗАДАНИЕ 2
-- Спроектируйте базу данных, которая позволяла бы организовать хранение медиафайлов, загружаемых пользователем 
-- (фото, аудио, видео). Сами файлы будут храниться в файловой системе, а база данных будет содержать только 
-- пути к файлам, названия, описания, ключевых слов и принадлежности пользователю.
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////

DROP database if exists media;
CREATE  database media;
USE media;

-- Пользователи
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT 'Имя пользователя',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Пользователи';

-- Содержимое хранилища
DROP TABLE IF EXISTS content;
CREATE TABLE content (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255) COMMENT 'Название',
  desription TEXT COMMENT 'Описание',
  user_id INT UNSIGNED COMMENT 'id владельца медиа', 
  url VARCHAR(2048) COMMENT 'Путь к файлу',
  data_types ENUM('photo', 'audio', 'video') COMMENT 'тип данных (фото, аудио, видео)', 
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id(user_id)
) COMMENT = 'Список медиа';

-- Список ключевых слов
DROP TABLE IF EXISTS keywords;
CREATE TABLE keywords (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT 'Ключевое слово'
) COMMENT = 'Список ключевых слов';

-- Таблица соответствия множества ключевых слов к множеству содержимого хранилища
DROP TABLE IF EXISTS content_keywords;
CREATE TABLE content_keywords (
  content_id INT UNSIGNED COMMENT 'id медиа файла',
  keyword_id INT UNSIGNED COMMENT 'id ключевого слова'
) COMMENT = 'Список ключевых слов';


 