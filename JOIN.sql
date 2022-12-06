SELECT id, name, stock, photo_url, description_Url, category, lunch_date, discount, sub_category, temperature FROM products;
SELECT product_id, size, price FROM product_sizes;

/*CROSS JOIN*/
SELECT id, name, stock, photo_url, description_Url, category, lunch_date, discount, sub_category, temperature, 
product_id, size, price 
FROM products JOIN product_sizes;

/*INNER JOIN*/
SELECT id, name, stock, photo_url, description_Url, category, lunch_date, discount, sub_category, temperature, 
product_id, size, price 
FROM products JOIN product_sizes ON products.id = product_sizes.product_id;

/*LEFT OUTER JOIN*/
SELECT id, name, stock, photo_url, description_Url, category, lunch_date, discount, sub_category, temperature, 
product_id, size, price 
FROM products left JOIN product_sizes ON products.id = product_sizes.product_id;

/*RIGHT OUTER JOIN*/
SELECT id, name, stock, photo_url, description_Url, category, lunch_date, discount, sub_category, temperature, 
product_id, size, price 
FROM product_sizes RIGHT JOIN products ON products.id = product_sizes.product_id;

/*FULL OUTER JOIN*/
SELECT id, name, stock, photo_url, description_Url, category, lunch_date, discount, sub_category, temperature, 
product_id, size, price 
FROM products left JOIN product_sizes ON products.id = product_sizes.product_id;