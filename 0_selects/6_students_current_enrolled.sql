SELECT students.name, students.id, students.cohort_id
FROM students
WHERE students.end_date IS NULL
ORDER BY students.cohort_id ASC;
