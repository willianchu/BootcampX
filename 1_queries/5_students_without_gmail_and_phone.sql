SELECT 
  students.name,
  students.email,
  students.id,
  students.cohort_id
FROM students
WHERE students.email != '%gmail.com' AND students.phone is NULL;
