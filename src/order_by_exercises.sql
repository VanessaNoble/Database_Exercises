# (v.3)Modify your first query to order by first name.
SELECT * FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name,last_name;

# (v.3)Modify your first query to order by first name.
SELECT * FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
      AND gender = 'M'
ORDER BY first_name,last_name;

# Update the query to order by first name and then last name.
SELECT *FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
      AND gender = "M"
ORDER BY  last_name, first_name ASC;

# Change the order by clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be Maya Zyda
SELECT  * FROM employees
WHERE last_name like 'e%e'
ORDER BY  last_name, first_name;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number.
# Now reverse the sort order for both queries
SELECT * FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date BETWEEN '1999-01-01' and '1999-12-31';

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT * FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date BETWEEN '1999-01-01' and '1999-12-31'
ORDER BY birth_date, hire_date DESC;


























