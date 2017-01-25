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




