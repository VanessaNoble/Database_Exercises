
# use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title
FROM titles;
#Update the previous query to sort the results alphabetically.

# Find your query for employees whose last names start and end with 'E'.
Select last_name
FROM employees
where last_name like 'e%e'
GROUP BY last_name;

