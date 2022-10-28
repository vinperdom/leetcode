SELECT
    activity_date AS day,
    count(distinct(user_id)) AS active_users
FROM
    activity
WHERE
    datediff('2019-07-27', activity_date) < 30 AND activity_date < '2019-07-27'
GROUP BY activity_date;
