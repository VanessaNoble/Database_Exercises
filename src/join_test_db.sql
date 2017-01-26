# Join exercise is below:
# Inner join (ignore all nulls);
CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id) VALUES
  ('ben', 'ben@example.com', 2),
  ('jen', 'jen@example.com', 2),
  ('ken', 'ken@example.com', 2),
  ('wen', 'wene@example.com', null);

use join_test_db;

SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

# Left join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;

# Right join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;

# Show the count of users with each role
SELECT roles.name AS role_name, count(users.name) as "folks with this role"
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id
group by roles.name order by `folks with this role`;


use employees;
# write a query that shows each department along with the name of the current manager for that department.
SELECT concat(employees.first_name, " ", employees.last_name) as "current manager", dept_name
FROM departments
JOIN dept_manager on dept_manager.dept_no = departments.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > curdate()
order by departments.dept_name;
# Find the name of all departments currently managed by women.
SELECT concat(employees.first_name, " ", employees.last_name) as "current manager", dept_name
FROM departments
  JOIN dept_manager on dept_manager.dept_no = departments.dept_no
  JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > curdate() AND employees.gender = 'F'
order by departments.dept_name;
# Find the current titles of employees currently working in the Customer Service department.
SELECT count(*), title
FROM titles
  JOIN employees on titles.emp_no = employees.emp_no
  JOIN dept_emp on employees.emp_no = dept_emp.emp_no
  JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = "Customer Service" AND titles.to_date > curdate() AND dept_emp.to_date > curdate()
GROUP BY titles.title;
# Find the current salary of all current managers.
SELECT concat(employees.first_name, " ", employees.last_name) as "current manager", dept_name, salary
FROM departments
  JOIN dept_manager on dept_manager.dept_no = departments.dept_no
  JOIN employees on dept_manager.emp_no = employees.emp_no
  JOIN salaries on employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > curdate()
order by departments.dept_name;
# Find the current salary of all current managers.
select salery, employees.first_name, employees.last_name, departments.dept_name
 from salaries
join employees on salaries.emp_no = employees.emp_no
join dept_manager on employees.emp_no = dept_manager.emp_no
where dept_manager.to_date > curdate()
and salaries.to_date > curdate();

# Find the names of all current employees, their department name, and their current manager's name.
# Find the names of all current employees, their department name, and their current manager's name.
# Rough Draft
SELECT concat(employees.first_name, " ", employees.last_name) as "current manager", dept_name, title
FROM departments
  JOIN dept_manager on dept_manager.dept_no = departments.dept_no
  JOIN employees on dept_manager.emp_no = employees.emp_no
  JOIN employees ON employees.emp_no = titles.emp_no
WHERE dept_manager.to_date > curdate()
order by departments.dept_name;

# Find the names of all current employees, their department name, and their current manager's name.
# Find the names of all current employees, their department name, and their current manager's name.
# Final Draft
SELECT concat(e.first_name, " ", e.last_name) as "Employee",
  departments.dept_name,
  concat(managers.first_name," ",managers.last_name) as "Manager"
from employees as e
  join dept_emp on e.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees as managers on dept_manager.emp_no = managers.emp_no
WHERE dept_manager.to_date > curdate()
and dept_manager.to_date > curdate();