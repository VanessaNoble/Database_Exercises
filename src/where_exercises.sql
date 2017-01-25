# Be sure to select the employees database from the dropdown before you begin.
SELECT * FROM employees;

# Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows
SELECT first_name
FROM employees
WHERE last_name IN ('Irena', 'Vidya', 'Maya');

# Employees whose last name starts with 'E' — 7,330 rows
SELECT last_name
FROM employees
WHERE last_name LIKE ('%E%');
# Employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date = '1990-01-01';

# Employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date = '1990-10-25';

# Employees with a 'q' in their last name — 1,873 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';


