WITH llikes AS (
    SELECT *
    FROM
        likes
    WHERE page_id NOT IN (SELECT page_id FROM likes WHERE user_id = 1)
)

SELECT DISTINCT page_id AS recommended_page
FROM
    llikes
WHERE user_id IN ( SELECT user1_id FROM friendship WHERE user2_id = 1
    UNION DISTINCT
    SELECT user2_id FROM friendship WHERE user1_id = 1);
