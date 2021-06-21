USE employees;

#ORDER BY EXERCISES

SELECT emp_no, first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT emp_no, first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT emp_no, first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;


SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%';

#PART 2
SELECT emp_no, first_name, last_name FROM employees
WHERE gender = 'M'
    AND first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';