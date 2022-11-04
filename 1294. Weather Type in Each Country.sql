WITH t AS (
    SELECT
        country_id,
        avg(weather_state) AS temperature
    FROM
        (
            SELECT *
            FROM weather WHERE day >= '2019-11-01' AND day < '2019-12-01'
        ) AS tt
    GROUP BY country_id
)

SELECT
    country_name,
    CASE
        WHEN
            temperature <= 15 THEN 'Cold'
        WHEN
            temperature >= 25 THEN 'Hot'
        WHEN temperature IS NULL THEN NULL ELSE 'Warm'
    END AS weather_type
FROM
    countries
LEFT JOIN
    t ON countries.country_id = t.country_id
WHERE temperature IS NOT NULL;
