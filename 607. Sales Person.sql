SELECT salesperson.name
FROM
    salesperson
WHERE salesperson.name NOT IN ( SELECT t.name AS name FROM ( SELECT
    salesperson.name,
    orders.com_id
    FROM salesperson LEFT JOIN orders ON salesperson.sales_id = orders.sales_id) AS t
    LEFT JOIN company ON t.com_id = company.com_id
    WHERE company.name = 'RED');
