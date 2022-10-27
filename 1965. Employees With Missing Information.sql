SELECT t.employee_id
FROM
    (
        SELECT *
        FROM
            employees
        LEFT JOIN salaries ON employees.employee_id = salaries.employee_id
        UNION DISTINCT
        SELECT *
        FROM
            employees
        RIGHT JOIN salaries ON employees.employee_id = salaries.employee_id
    ) AS t
WHERE t.salary IS NULL OR t.name IS NULL ORDER BY employee_id;
