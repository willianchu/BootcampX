SELECT sum(assignment_submissions.duration) AS total_duration
FROM students 
INNER JOIN assignment_submissions 
ON students.id = assignment_submissions.student_id
WHERE student.name LIKE 'Ibrahim Schimmel';