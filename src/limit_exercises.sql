#List the first 10 distinct last name sorted in descending order.
SELECT last_name
FROM employees
GROUP BY last_name DESC
limit 10;

#Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql.
# Update it to find just the first 5 employees.
SELECT * FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date BETWEEN '1999-01-01' and '1999-12-31'
limit 5;

