SELECT
    sale_date,
    sum(CASE WHEN fruit = 'oranges' THEN -sold_num ELSE sold_num END) AS diff
FROM sales GROUP BY sale_date;
