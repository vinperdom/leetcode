SELECT seller_name
FROM
    seller
WHERE
    seller_id NOT IN (
        SELECT seller_id AS seller_id
        FROM orders WHERE substr(sale_date, 1, 4) = '2020'
    )
ORDER BY seller_name;
