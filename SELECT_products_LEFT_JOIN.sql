use logo;
SELECT id, name,IF(COUNT(price)=0, products.unit_price,0) as price,
stock, photo_url, description_Url, category, lunch_date, discount, sub_category, temperature, 
product_id,  group_concat(size) as size_list
FROM products left JOIN product_sizes ON products.id = product_sizes.product_id
where id = 4;