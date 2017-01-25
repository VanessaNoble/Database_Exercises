# Be sure to select the employees database from the dropdown before you begin.
SELECT * FROM employees;

# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows
SELECT first_name
FROM employees
WHERE last_name IN ('Irena', 'Vidya', 'Maya');

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT * FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name =  'Maya';


# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT * FROM  employees
WHERE first_name = ('Irena')
      AND  first_name= 'Vidya'
      OR first_name = 'Baek';
# Now add a condition to find everybody with those names who is also male — 441 rows.
AND gender ='M';

# Employees whose last name starts with 'E' — 7,330 rows
SELECT * FROM employees
WHERE last_name LIKE 'E%'
AND last_name like '%E';










