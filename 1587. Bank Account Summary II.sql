SELECT
    users.name,
    sum(transactions.amount) AS balance
FROM users INNER JOIN transactions ON users.account = transactions.account
GROUP BY transactions.account
HAVING balance > '10000';
