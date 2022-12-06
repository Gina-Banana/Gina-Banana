SELECT shop_city.city, value, dist, shop_dist.postal_code , shop_id, name, phone,
address, shop_delivery as delivery
FROM shop_city
LEFT JOIN shop_dist ON shop_dist.city = shop_city.value
LEFT JOIN shops ON shop_dist.postal_code = shops.postal_code
LEFT JOIN shop_delivery ON shop_id = id
/*GROUP BY `name`*/
WHERE shop_dist.postal_code = 105;