SELECT
    student,
    CASE
        WHEN id % 2 = 1 AND id = (SELECT count(id) FROM seat) THEN id
        WHEN id % 2 = 0 THEN id - 1
        WHEN id % 2 = 1 THEN id + 1
    END AS id
FROM seat
ORDER BY id;
