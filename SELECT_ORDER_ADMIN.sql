SELECT id, customer_id, created_date, created_time, delivery_type, delivery_fee,
 delivery_note, payment_type, payment_fee, payment_note, shop_name, status, recipient_name,
 recipient_phone, recipient_email, delivery_address FROM logo.orders
 WHERE status<3 OR (status=0 AND (payment_type='CASH' OR payment_type='INSTORE'));
 
  SELECT id, customer_id, created_date,created_time, delivery_type,delivery_fee,
  payment_type, payment_fee, payment_note,
  shop_name, status, recipient_name,
  order_id, product_id, price, quantity,
 SUM(quantity) AS totalqty,SUM(price*quantity) as totalamount
 FROM orders LEFT JOIN order_items ON id=order_id
/*GROUP BY id
ORDER BY created_date DESC, created_time DESC*/
 WHERE status<3 OR (status=0 AND (payment_type='CASH' OR payment_type='INSTORE'));
 
 SELECT created_date, orders.id, products.name, order_items.product_id,temp,sugar,topping_name,
 CONCAT(orders.id,order_items.product_id) as thisitem,
sub_category, order_items.quantity, order_items.size_name, product_sizes.price, 
SUM(quantity) as result_quantity, (SUM(quantity)*product_sizes.price) as product_sold
FROM logo.orders
LEFT JOIN logo.order_items ON orders.id=order_items.order_id
LEFT JOIN logo.products ON order_items.product_id = products.id
LEFT JOIN logo.product_sizes ON product_sizes.product_id = products.id AND order_items.size_name=product_sizes.size
WHERE created_date>date_add('2022-12-02', INTERVAL -7 DAY)
GROUP BY thisitem
ORDER BY result_quantity DESC