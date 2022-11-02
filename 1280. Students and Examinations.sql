WITH eexaminations AS (SELECT
    examinations.student_id,
    students.student_name,
    examinations.subject_name
    FROM examinations INNER JOIN students ON examinations.student_id = students.student_id)
SELECT
    ssubjects.student_id,
    ssubjects.student_name,
    ssubjects.subject_name,
    count(eexaminations.subject_name) AS attended_exams
FROM
    (SELECT * FROM students CROSS JOIN subjects) AS ssubjects
LEFT JOIN
    eexaminations ON
        ssubjects.student_id = eexaminations.student_id AND ssubjects.subject_name = eexaminations.subject_name
GROUP BY
    ssubjects.subject_name, ssubjects.student_id
ORDER BY student_id, subject_name;
