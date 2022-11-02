WITH t AS (SELECT
    departmentid,
    max(salary) AS salary
    FROM employee GROUP BY departmentid)
SELECT
    department.name AS department,
    employee.name AS employee,
    employee.salary AS salary
FROM
    employee
INNER JOIN
    t ON employee.salary = t.salary AND employee.departmentid = t.departmentid
INNER JOIN department ON employee.departmentid = department.id;
