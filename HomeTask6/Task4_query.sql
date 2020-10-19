-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

-- Выбирем базу данных shop
USE shop;

-- Очистим таблицу
TRUNCATE TABLE products;

-- Добавим тестовые записи
INSERT INTO products VALUES
  (DEFAULT, 'Видеокарта 1', 'Видеокарта 1', 2500.00 , 1, '1999-04-22', DEFAULT),
  (DEFAULT, 'Видеокарта 2', 'Видеокарта 2', 4700.00 , 1, '2000-04-22', DEFAULT),
  (DEFAULT, 'Видеокарта 3', 'Видеокарта 3', 15200.00 , 1, '2001-04-22', DEFAULT),
  (DEFAULT, 'Мат.плата 1', 'Мат.плата 1', 3400.00 , 2, '2002-04-22', DEFAULT),
  (DEFAULT, 'Мат.плата 2', 'Мат.плата 2', 4500.00 , 2, '2003-04-22', DEFAULT),
  (DEFAULT, 'Процессор 1', 'Процессор 1', 10200.00 , 3, '2004-04-22', DEFAULT),
  (DEFAULT, 'Процессор 2', 'Процессор 2', 15400.00 , 3, '2005-04-22', DEFAULT),
  (DEFAULT, 'Процессор 3', 'Процессор 3', 22350.00 , 3, '2006-04-22', DEFAULT),
  (DEFAULT, 'Процессор 4', 'Процессор 4', 52790.00 , 3, '2007-04-22', DEFAULT);
 
-- Удалим все, кроме 5ти самых свежих
DELETE FROM products 
WHERE products.id NOT IN (
    SELECT new_prod.id FROM (
        SELECT p.id, p.created_at 
        FROM products p
        ORDER BY p.created_at DESC 
        LIMIT 5 
    ) AS new_prod
);

SELECT * FROM products;

