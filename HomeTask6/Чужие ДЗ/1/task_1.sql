START TRANSACTION;

INSERT INTO `sample`.`users` (`name`, `birthday_at`, `created_at`, `updated_at`) 
SELECT s.`name`, s.`birthday_at`, s.`created_at`, s.`updated_at` FROM `shop`.`users` AS s WHERE s.id = 1;

DELETE FROM `shop`.`users` AS s WHERE s.id = 1;

COMMIT;

