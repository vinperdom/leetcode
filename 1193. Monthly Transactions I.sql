SELECT
    country,
    substr(trans_date, 1, 7) AS month,
    count(state) AS trans_count,
    count(CASE WHEN state = 'approved' THEN state END) AS approved_count,
    sum(amount) AS trans_total_amount,
    sum(
        CASE WHEN state = 'approved' THEN amount ELSE 0 END
    ) AS approved_total_amount
FROM transactions GROUP BY month, country;
