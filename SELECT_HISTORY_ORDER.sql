/*查詢訂單明細*/
SELECT orders.id, customer_id, created_date, created_time, delivery_type,
 delivery_fee, delivery_note, payment_type, payment_fee, payment_note,
 shop_name, status, recipient_name, recipient_phone, recipient_email,
 delivery_address order_id, product_id,product.name, size_name, temp, sugar, topping_name, price, quantity
 FROM orders INNER JOIN order_items ON id=order_id
 INNER JOIN products ON product_id = products.id
 WHERE orders.id=? AND customer_id=?;

/*查詢歷史訂單*/ 
 SELECT id, customer_id, created_date, created_time, delivery_type,
 delivery_fee, delivery_note, payment_type, payment_fee, payment_note,
 shop_name, status, recipient_name, recipient_phone, recipient_email,
 delivery_address order_id, product_id, size_name, temp, sugar, topping_name, price, quantity,
 price*quantity as subtotal, SUM(price*quantity) as total
 FROM orders INNER JOIN order_items WHERE id=order_id and customer_id=1
 /*GROUP BY i*/;
 