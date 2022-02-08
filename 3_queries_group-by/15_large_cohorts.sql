SELECT cohorts.name,
       count(cohorts.*) AS students_count 
FROM cohorts
INNER JOIN students 
  ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(cohorts.*) > 17
ORDER BY students_count ASC;