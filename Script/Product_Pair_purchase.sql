WITH Table1 AS(
	select  order_id, es.product_code, p.product, es.sales 
	from e_commerce.ecom_sales es join e_commerce.product p on es.product_code  = p.product_code 
),
Table2 AS(
	SELECT a.order_id, a.product as product1, a.sales as sales1, b.product as product2, b.sales as sales2
	FROM Table1 a JOIN Table1 b on a.order_id = b.order_id  and a.product_code <> b.product_code and a.product < b.product
)  
SELECT  concat(product1, ' + ', product2) AS pair_product, count(*) AS times_bought_toghether, SUM(sales1 + sales2) AS total_sales
FROM Table2 
GROUP BY product1, product2
ORDER BY count(*) DESC
