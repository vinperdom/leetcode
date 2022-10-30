SELECT
    from_id AS person1,
    to_id AS person2,
    count(duration) AS call_count,
    sum(duration) AS total_duration
FROM (SELECT
    from_id,
    to_id,
    duration
    FROM calls WHERE from_id < to_id
    UNION ALL
    SELECT
        to_id,
        from_id,
        duration
    FROM calls WHERE to_id < from_id) AS t GROUP BY from_id, to_id;
