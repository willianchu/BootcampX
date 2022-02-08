SELECT sum(assignment_submissions.duration) AS total_duration
FROM students 
INNER JOIN assignment_submissions 
ON students.id = assignment_submissions.student_id
INNER JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE 'FEB12';