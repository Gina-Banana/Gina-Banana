use logo;
SELECT shops.id, name, phone, address, city, dist 
FROM shops LEFT JOIN shop_dist ON shop_dist.postal_code = shops.postal_code;

/*
raw data >> 7rows
1、3有兩種交貨方式，2、4、5只有一種交貨方式 = 2*2+3*1=4+3=7
*/
SELECT shops.id, name, phone, address, city, dist, shop_delivery 
FROM shops LEFT JOIN shop_dist ON shop_dist.postal_code = shops.postal_code
LEFT JOIN shop_delivery ON shops.id=shop_id;

/*
shop list >> 5rows
一共有五間店
*/
SELECT shops.id, name, phone, address, city, dist, GROUP_CONCAT(shop_delivery) 
FROM shops LEFT JOIN shop_dist ON shop_dist.postal_code = shops.postal_code
LEFT JOIN shop_delivery ON shops.id=shop_id
GROUP BY id;

/*what if 沒有地址的配送中央廚房*/