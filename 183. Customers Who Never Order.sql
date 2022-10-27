SELECT customers.name AS customers
FROM
    customers
LEFT JOIN
    orders ON customers.id = orders.customerid
WHERE orders.customerid IS NULL;
