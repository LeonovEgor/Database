-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.

USE shop;

-- Очистим таблицу
TRUNCATE TABLE catalogs;

-- Вставим несколько значений для дальнейшего преобразования
INSERT INTO catalogs VALUES
  (DEFAULT, 'Процессоры'),
  (DEFAULT, 'Мат.платы'),
  (DEFAULT, 'Видеокарты'),
  (DEFAULT, 'Системные блоки'),
  (DEFAULT, 'Клавиатуры'),
  (DEFAULT, 'Мыши'),
  (DEFAULT, 'Накопители'),
 (DEFAULT, 'Оперативная память');

-- Сделаем выборку по id и выведем их в том же порядке
SELECT * FROM catalogs 
WHERE id IN (5, 1, 2) 
ORDER BY FIELD(id, 5, 1, 2)
