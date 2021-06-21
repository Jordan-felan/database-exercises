USE employees;

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name FROM employees WHERE first_name LIKE '%sus%';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 and 10082;
# DONT DO THIS
#WHERE emp_no > 10026
#AND emp_no < 10082

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
#DONT DO THIS
#WHERE last_name = 'Herber
#OR last_name = 'Dredge
#

SELECT emp_no, first_name, last_name FROM employees
WHERE emp_no < 10026;


SELECT emp_no, first_name, last_name FROM employees
WHERE (emp_no < 20000
    AND last_name IN ('Herber', 'Baek'))
   OR first_name = 'Shridhar';

# in the past this did not work but does now
SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 and 100000;
# THIS is the old way of doing it
SELECT * FROM salaries WHERE NOT salary BETWEEN 50000 and 100000;

SELECT birth_date FROM employees
WHERE NOT birth_date LIKE '195%';

SELECT birth_date, hire_date FROM employees
WHERE birth_date NOT LIKE '195%'
  AND hire_date NOT LIKE '199%';

#THIS will NOT select all employees born in January 1963
SELECT * FROM employees WHERE birth_date LIKE '1963-1%';
#THIS WILL
SELECT * FROM employees WHERE birth_date LIKE '1963-01%';

SELECT * FROM employees WHERE birth_date LIKE '1963-01%' ORDER BY birth_date;