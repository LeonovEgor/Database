-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

-- Выбирем базу данных shop
USE shop;

-- Очистим таблицу
TRUNCATE TABLE products;
TRUNCATE TABLE catalogs;

-- Добавим тестовые записи
INSERT INTO products VALUES
  (DEFAULT, 'Видеокарта 1', 'Видеокарта 1', 2500.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, 'Видеокарта 2', 'Видеокарта 2', 4700.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, 'Видеокарта 3', 'Видеокарта 3', 15200.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, 'Мат.плата 1', 'Мат.плата 1', 3400.00 , 2, DEFAULT, DEFAULT),
  (DEFAULT, 'Мат.плата 2', 'Мат.плата 2', 4500.00 , 2, DEFAULT, DEFAULT),
  (DEFAULT, 'Процессор 1', 'Процессор 1', 10200.00 , 3, DEFAULT, DEFAULT),
  (DEFAULT, 'Процессор 2', 'Процессор 2', 15400.00 , 3, DEFAULT, DEFAULT),
  (DEFAULT, 'Процессор 3', 'Процессор 3', 22350.00 , 3, DEFAULT, DEFAULT),
  (DEFAULT, 'Процессор 4', 'Процессор 4', 52790.00 , 3, DEFAULT, DEFAULT);

INSERT INTO catalogs VALUES
  (DEFAULT, 'Видеокарты'),
  (DEFAULT, 'Мат. Платы'),
  (DEFAULT, 'Процессоры');

  -- Запрос данных
 SELECT p.id, p.name, c.name AS catalog_name FROM products p 
 JOIN catalogs c ON p.catalog_id = c.id 