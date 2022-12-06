/*查詢產品分類清單*/
/*法一*/
SELECT sub_category FROM products
GROUP BY sub_category;
/*法二*/
SELECT DISTINCT sub_category FROM products;