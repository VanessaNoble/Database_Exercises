
# Update your query for 'Irena', 'Vidya', or 'Maya'.
#  Use count(*) and GROUP BY to find the number of employees
# for each gender with those names.

SELECT count(*), gender
FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
     GROUP BY gender;








# notes

SELECT count (DISTINCT first_name)
from employees;

# SELECT concat(first_name, " ", last_name) as "full name"
# from employees
# where hire_date like "%12-25";

SELECT curdate();

SELECT avg(salary)
from salaries;

SELECT avg(salary)
from salaries
where to_date > curdate();

SELECT avg(salary) as "current average salary"
FROM salaries
where to_date > current_date();

SELECT now();

SELECT concat(
    'Teaching people to code ',
    UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
    ' seconds');