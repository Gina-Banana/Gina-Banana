SELECT orders.id, created_date, order_id, product_id, size_name, temp, sugar, topping_name, price, quantity 
FROM logo.orders LEFT JOIN logo.order_items 
ON orders.id = order_id
WHERE created_date='2022-11-27' AND product_id=34;