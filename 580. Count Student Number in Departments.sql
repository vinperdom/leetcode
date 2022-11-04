SELECT
    department.dept_name,
    count(student_id) AS student_number
FROM
    student
RIGHT JOIN
    department ON student.dept_id = department.dept_id
GROUP BY department.dept_id ORDER BY student_number DESC, dept_name ASC;
