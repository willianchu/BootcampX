SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM cohorts
INNER JOIN students
  ON cohorts.id = students.cohort_id
INNER JOIN assignment_submissions
  ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;

