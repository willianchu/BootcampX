SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students INNER JOIN cohorts ON students.cohort_id = cohorts.id
WHERE students.start_date < cohorts.start_date
ORDER BY students.start_date ASC;
