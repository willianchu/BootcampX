SELECT 
  students.id,
  students.name,
  students.email,
  students.cohort_id
FROM students
WHERE students.github IS NULL
ORDER BY students.cohort_id;
