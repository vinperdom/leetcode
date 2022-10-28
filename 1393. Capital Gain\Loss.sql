SELECT
    stock_name,
    sum(price) AS capital_gain_loss
FROM ( SELECT
    stock_name,
    CASE WHEN operation = 'Buy' THEN -price ELSE price END AS price
    FROM ( SELECT
        stock_name,
        operation,
        sum(price) AS price
        FROM stocks GROUP BY operation, stock_name) AS t) AS tt GROUP BY stock_name;
