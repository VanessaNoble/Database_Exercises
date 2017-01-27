SELECT current_user()
FROM employees;

# you can use a sub query with the IN operator
SELECT * FROM employees where first_name in (
  SELECT first_name
  From employees
  where first_name like 'L%'
  );


# Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT * FROM employees WHERE employees.hire_date in(
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);
# Find all the titles held by all employees with the first name Aamod.
SELECT * FROM titles where emp_no in(
  SELECT emp_no
  From employees
  WHERE first_name = 'Aamod'
);

# as replacements of tables
SELECT *
From (
  select * from departments where dept_name like 'D%'
) department_with_d;



# you can use sub-queries to get scalar values that you can use in the SELECT clause
SELECT
(SELECT count(*) FROM employees where gender = 'F') women_count,
(SELECT count(*) FROM employees where gender = 'M') men_count;

# Find all the department managers that are female.
SELECT * FROM departments WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE emp_no IN (
    SELECT emp_no
      FROM employees
      Where gender = 'F')
);


# BONUS Find all the department names that have female managers.
SELECT * FROM departments WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager WHERE emp_no IN (
    SELECT emp_no
    FROM employees WHERE gender = 'F'
  )
);