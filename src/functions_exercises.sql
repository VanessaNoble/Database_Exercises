
# Update your query for 'Irena', 'Vidya', or 'Maya'.
#  Use count(*) and GROUP BY to find the number of employees for each gender with those names.
# part one
SELECT count(*), gender
FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
     GROUP BY gender;


# Update your queries for employees whose names start and end with 'E'.
#  Use concat() to combine their first and last name together
# as a single column in your results.
# part two

SELECT  concat(first_name," ", last_name) as "fullname"
FROM employees
WHERE last_name like 'e%e';

# employees born on Christmas and hired in the 90s, use datediff()
# to find how many days they have been working at the company
# part three

SELECT  first_name, last_name, datediff(now(), hire_date) as "number of days employed"
FROM employees
WHERE birth_date LIKE '%12-25'
      AND hire_date BETWEEN '1999-01-01' and '1999-12-31';


# GROUP BY clause to your query for last names with 'q' and
# not 'qu' to find the distinct combination of first and last names
# Add a count() to your results and use ORDER BY to make it easier
# to find employees whose unusual name is shared with others.
#part four

SELECT concat(first_name, " ",last_name) as "full_name", count(first_name) as "number of people with this name"
from  employees
WHERE last_name like '%q%'
      and last_name not like '%qu%'
group by full_name
order by 'number of people with this name' DESC;








# notes
#
# SELECT count (DISTINCT first_name)
# from employees;
#
# # SELECT concat(first_name, " ", last_name) as "full name"
# # from employees
# # where hire_date like "%12-25";
#
# SELECT curdate();
#
# SELECT avg(salary)
# from salaries;
#
# SELECT avg(salary)
# from salaries
# where to_date > curdate();
#
# SELECT avg(salary) as "current average salary"
# FROM salaries
# where to_date > current_date();
#
# SELECT now();
#
# SELECT concat(
#     'Teaching people to code ',
#     UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
#     ' seconds');