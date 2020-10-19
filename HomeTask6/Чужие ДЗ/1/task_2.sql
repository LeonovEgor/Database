CREATE OR REPLACE VIEW prods AS SELECT pr.name AS `product_name`, cat.name AS `catalog_name` 
FROM products AS pr, catalogs AS cat WHERE pr.catalog_id = cat.id;

