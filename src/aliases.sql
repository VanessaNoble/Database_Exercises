# Use the employees database.
# Update the query to format full name
# to include the employee number so it is formatted as
# "employee number - lastname, firstname".

SELECT emp_no, CONCAT(first_name, ' ', last_name) AS full_name, emp_no
FROM employees;

USE employees;

SELECT concat(emp_no, ' -- ', last_name, ' ', first_name)
  AS full_name,
       birth_date
  AS 'DOB'
FROM employees
LIMIT 10;

# [5:09]
# You can queries two tables at once
SELECT
  e.emp_no as 'ID from Employees',
  s.emp_no AS 'Employee number from Salaries'
FROM
  employees as e,
  salaries as s
WHERE e.first_name
      like '%qu%'
LIMIT 1000;