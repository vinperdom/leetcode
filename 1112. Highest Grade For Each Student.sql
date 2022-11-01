WITH t AS ( SELECT
    student_id,
    max(grade) AS max_grade
    FROM enrollments GROUP BY student_id)
SELECT
    enrollments.student_id,
    min(enrollments.course_id) AS course_id,
    max(enrollments.grade) AS grade
FROM
    enrollments
INNER JOIN
    t ON enrollments.student_id = t.student_id
WHERE grade = max_grade GROUP BY student_id ORDER BY student_id ASC;
