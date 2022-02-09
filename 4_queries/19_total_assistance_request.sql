SELECT count(*) AS total_assistances, teachers.name AS teacher
FROM assistance_requests
INNER JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;
