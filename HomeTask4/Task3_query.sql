
DROP database if exists sample;
CREATE  database sample;
USE sample;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id SERIAL PRIMARY KEY,
  total INT UNSIGNED DEFAULT 1
);

TRUNCATE TABLE test;
-- Добавим записи
INSERT INTO test VALUES
  (DEFAULT, 1),
  (DEFAULT, 2),
  (DEFAULT, 10),
  (DEFAULT, 2),
  (DEFAULT, 3),
  (DEFAULT, 5);

  
 SELECT exp(sum(log(total))) AS multiplication FROM test;