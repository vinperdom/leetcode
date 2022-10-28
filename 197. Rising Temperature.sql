SELECT weather.id AS id
FROM
    weather
INNER JOIN
    weather AS w ON DATEDIFF(weather.recorddate, w.recorddate) = 1 AND weather.temperature > w.temperature;
