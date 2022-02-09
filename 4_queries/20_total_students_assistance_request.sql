SELECT count(assistance_requests.id) AS total_assistances, students.name AS student
FROM assistance_requests
INNER JOIN students ON assistance_requests.student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
