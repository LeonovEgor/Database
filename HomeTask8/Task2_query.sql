USE shop;

TRUNCATE TABLE products;

-- Добавим тестовые записи
INSERT INTO products VALUES
  (DEFAULT, 'Видеокарта 1', 'Описание Видеокарты 1', 2500.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, NULL, 'Описание Видеокарты 2', 4700.00 , 1, DEFAULT, DEFAULT),
  (DEFAULT, 'Видеокарта 3', NULL, 15200.00 , 1, DEFAULT, DEFAULT);
 
 SELECT * FROM products;


-- Добавим тестовые записи
-- Должна возникнуть ошибка
INSERT INTO products VALUES
  
  (DEFAULT, NULL, NULL, 3400.00 , 2, DEFAULT, DEFAULT),