SELECT
    expressions.left_operand,
    expressions.operator,
    expressions.right_operand,
    (
        CASE
            WHEN
                expressions.operator = '<' AND v1.value < v2.value THEN 'true'
            WHEN
                expressions.operator = '=' AND v1.value = v2.value THEN 'true'
            WHEN
                expressions.operator = '>' AND v1.value > v2.value THEN 'true'
            ELSE 'false'
        END
    ) AS value
FROM
    expressions
INNER JOIN
    variables AS v1 ON expressions.left_operand = v1.name
INNER JOIN variables AS v2 ON expressions.right_operand = v2.name;
