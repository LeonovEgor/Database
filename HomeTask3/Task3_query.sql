-- 3. ¬ таблице складских запасов storehouses_products в поле value могут встречатьс€ самые разные цифры: 0, 
-- если товар закончилс€ и выше нул€, если на складе имеютс€ запасы. Ќеобходимо отсортировать записи таким образом, 
-- чтобы они выводились в пор€дке увеличени€ значени€ value. Ќулевые запасы должны выводитьс€ в конце, после всех записей.

USE shop;

TRUNCATE TABLE storehouses_products;
-- ƒобавим записи
INSERT INTO storehouses_products VALUES
  (DEFAULT, 1, 1, 10, DEFAULT, DEFAULT),
  (DEFAULT, 1, 2, 15, DEFAULT, DEFAULT),
  (DEFAULT, 1, 3, 9, DEFAULT, DEFAULT),
  (DEFAULT, 1, 4, 3, DEFAULT, DEFAULT),
  (DEFAULT, 2, 5, 0, DEFAULT, DEFAULT),
  (DEFAULT, 2, 6, 12, DEFAULT, DEFAULT),
  (DEFAULT, 2, 7, 0, DEFAULT, DEFAULT);

SELECT * FROM storehouses_products
-- ORDER BY value 
ORDER BY CASE WHEN value = 0 THEN 2147483647 ELSE value END;

SELECT 
storehouse_id, 
product_id, 
value,
value / value AS in_stock
FROM storehouses_products
ORDER BY in_stock DESC, value ASC;

SELECT * FROM storehouses_products
ORDER BY value=0, value
