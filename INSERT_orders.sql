use logo;
INSERT INTO orders(id, customer_id, created_date, created_time, delivery_type, delivery_fee, payment_type, payment_fee, shop_name, recipient_name, recipient_phone, recipient_email, delivery_address)
VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?);

INSERT INTO order_items (order_id, product_id, size_name, temp, sugar, topping_name, price, quantity)
VALUES (?,?,?,?,?,?,?,?);