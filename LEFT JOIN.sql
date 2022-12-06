SELECT id, name, stock, photo_url, description_Url, category, lunch_date, discount, sub_category, unit_price, temperature, 
product_id, size, price
FROM products left JOIN product_sizes ON products.id = product_sizes.product_id  where id='5';