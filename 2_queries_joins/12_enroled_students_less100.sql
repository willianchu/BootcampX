SELECT students.name as student, count(assignment_submissions.duration) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.duration) < 100;
