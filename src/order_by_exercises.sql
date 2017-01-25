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




























