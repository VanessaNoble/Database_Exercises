# (v.3)Modify your first query to order by first name.
SELECT * FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name,last_name;

























