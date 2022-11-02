WITH t AS ( SELECT
    team_id,
    count(team_id) AS team_size
    FROM employee GROUP BY team_id)
SELECT
    employee_id,
    team_size
FROM employee INNER JOIN t ON employee.team_id = t.team_id;
