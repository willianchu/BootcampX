SELECT 
  students.name,
  students.id,
  students.cohort_id
FROM students
WHERE 
  students.phone IS NULL or students.email IS NULL;