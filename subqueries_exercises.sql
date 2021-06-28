USE employees;


# LECTURE NOTES
# SELECT first_name, last_name, birth_date
# FROM employees
# WHERE emp_no IN (
#     SELECT emp_no
#     FROM dept_manager
# )
# LIMIT 10;
#
# SELECT dept_name FROM departments
# WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Karsten' AND last_name =  'Sigstam'));

SELECT * FROM employees
WHERE hire_date = (
    SELECT hire_date FROM employees
    WHERE emp_no = 101010
    );

SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE to_date > NOW()
)
  AND gender = 'F';


#BONUSES
# SELECT dept_name
# FROM departments
# WHERE dept_no IN (
#     SELECT dept_no
#     FROM dept_manager
#     WHERE emp_no IN (
#         SELECT emp_no
#         FROM employees
#         WHERE gender = 'F'
#     )
#       AND to_date > NOW()
# );
#how i should of written the first bonus. looks better
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > NOW()
      AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'));



SELECT first_name, last_name FROM employees
WHERE emp_no = (
    SELECT emp_no FROM salaries
    WHERE salary = (
        SELECT MAX(salary) FROM salaries
    )
);
