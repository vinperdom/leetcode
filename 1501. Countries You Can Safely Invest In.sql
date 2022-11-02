WITH t AS (
    SELECT SUBSTR(person.phone_number, 1, 3) AS code FROM (SELECT
        caller_id AS id,
        duration
        FROM calls
        UNION DISTINCT
        SELECT
            callee_id AS id,
            duration
        FROM calls) AS id_and_calls INNER JOIN person ON id_and_calls.id = person.id
    GROUP BY
        code
    HAVING
        AVG(
            id_and_calls.duration
        ) > (SELECT AVG(duration) AS duration FROM calls)
)

SELECT country.name AS country
FROM country RIGHT JOIN t ON country.country_code = t.code;
