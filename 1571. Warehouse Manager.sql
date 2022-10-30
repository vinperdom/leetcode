SELECT
    warehouse.name AS warehouse_name,
    sum(
        products.width * products.length * products.height * warehouse.units
    ) AS volume
FROM
    warehouse
INNER JOIN
    products ON warehouse.product_id = products.product_id
GROUP BY warehouse.name;
