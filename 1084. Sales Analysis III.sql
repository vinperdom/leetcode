SELECT
    product_id,
    max(product_name) AS product_name
FROM sales
INNER JOIN product ON sales.product_id = product.product_id
GROUP BY product_id
HAVING min(sale_date) >= '2019-01-01' AND max(sale_date) <= '2019-03-31';
