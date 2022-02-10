const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT teachers.id as student_id, teachers.name as name, cohorts.name as cohort
FROM teachers
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%$1%'
LIMIT $2;
`, [process.argv[2], process.argv[3]])
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    });
  }).catch(err => console.error('query error', err.stack));
