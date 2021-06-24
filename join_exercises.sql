#first part of exercise
USE join_test_db;
INSERT INTO users (name, email, role_id) VALUES
('summer', 'summer@example.com', 2),
('morty', 'morty@example.com', 2),
('rick', 'rick@example.com', 2),
('jerry', 'jerry@example.com', null);

SELECT * FROM users;

SELECT users.name AS user_name, roles.name
FROM users LEFT JOIN roles
ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name
FROM users RIGHT JOIN roles
ON users.role_id = roles.id;

SELECT
    # rename roles.name column to role_name for clarity.
    roles.name AS role_name,
    # I want to count the employees (users.name) for each role_name.
    COUNT(users.name) AS number_of_employees
FROM users
RIGHT JOIN roles ON users.role_id = roles.id


GROUP BY role_name;


#SECOND PART OF EXERCISE
USE employees;

# emp_no, birth_date, first_name, last_name, gender, hire_date (Use to get employees name.)
SELECT * FROM employees
LIMIT 5;

# emp_no, dept_no, from_date, to_date (Use to_date to find current managers)
SELECT * FROM dept_manager;

# dept_no, dept_name (Use to get department name.)
SELECT * FROM departments;


SELECT
    d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    AND to_date > CURDATE()
JOIN departments AS d USING(dept_no)
ORDER BY dept_name;

SELECT
    d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    AND to_date > CURDATE()
    AND gender = 'F'
JOIN departments AS d USING(dept_no)
ORDER BY dept_name;


#TITLES PART OF EXERCISE

# Inspect columns for each table first.

# emp_no, dept_no, from_date, to_date (Use to find current employees.)
SELECT * FROM dept_emp;

# emp_no, title, from_date, to_date (Use to find current titles.)
SELECT * FROM titles;

# dept_no, dept_name (Use to get department name.)
SELECT * FROM departments;

SELECT
    t.title,
    COUNT(de.emp_no) AS Count
FROM dept_emp AS de
# I can have multiple conditions in my JOIN logic. Only current employees and current titles.
JOIN titles AS t ON de.emp_no = t.emp_no
    AND t.to_date > CURDATE()
    AND de.to_date > CURDATE()
# I can have multiple conditions in my JOIN logic. Only the Customer Service department.
JOIN departments AS d ON d.dept_no = de.dept_no
AND dept_name = 'Customer Service'
GROUP BY t.title;

#managers and there salaries

-- emp_no, birth_date, first_name, last_name, gender, hire_date
SELECT * FROM employees
LIMIT 5;

-- emp_no, salary, from_date, to_date (Use to find current salaries)
SELECT * FROM salaries;

-- emp_no, dept_no, from_date, to_date (Use to_date to find current managers)
SELECT * FROM dept_manager;

-- dept_no, dept_name (Use to get department name.)
SELECT * FROM departments;

SELECT
    d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager,
       s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
    AND s.to_date > CURDATE()
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    AND dm.to_date > CURDATE()
JOIN departments AS d USING(dept_no)
ORDER BY dept_name;