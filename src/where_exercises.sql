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
      OR first_name = 'Baek'
# Now add a condition to find everybody with those names who is also male — 441 rows.
AND gender ='M';

# Employees whose last name starts with 'E' — 7,330 rows
SELECT * FROM employees
WHERE last_name LIKE 'E%'
AND last_name like '%E';
# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE '%E'
      AND last_name LIKE 'E';

# Employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date = '1990-01-01';

# Employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date = '1990-10-25';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%12-25';


# Employees with a 'q' in their last name — 1,873 rows.
# Find all employees with a 'q' in their last name but not 'qu' — 547 rows
SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';

















