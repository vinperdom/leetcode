SELECT
    user_id,
    max(time_stamp) AS last_stamp
FROM logins WHERE substring(time_stamp, 1, 4) = '2020' GROUP BY user_id;
