
# use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title
FROM titles;
#Update the previous query to sort the results alphabetically.

# Find your query for employees whose last names start and end with 'E'.
Select last_name
FROM employees
where last_name like 'e%e'
GROUP BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'
SELECT first_name,last_name FROM employees
WHERE (last_name LIKE '%E'
       AND last_name LIKE 'E%')
GROUP BY last_name, first_name;


# Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY.
SELECT last_name FROM employees
WHERE last_name LIKE '%q%'
      AND NOT last_name LIKE '%qu%'
GROUP BY last_name;