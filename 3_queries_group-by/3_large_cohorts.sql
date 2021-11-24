SELECT count(students.*), cohorts.name
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*);