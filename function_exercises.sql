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

#updated
SELECT CONCAT(first_name, last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT first_name, last_name FROM employees WHERE MONTH(birth_date) LIKE '12%' AND DAY(birth_date) LIKE '25%';

SELECT first_name, last_name FROM employees WHERE MONTH(birth_date) LIKE '12%' AND DAY(birth_date) LIKE '25%' AND YEAR(hire_date) BETWEEN 1990 AND 1999;

SELECT first_name, last_name FROM employees WHERE MONTH(birth_date) LIKE '12%' AND DAY(birth_date) LIKE '25%' AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY hire_date DESC;

SELECT *, DATEDIFF(hire_date, CURDATE()) FROM employees
WHERE DAY(birth_date) = 25
  AND MONTH(birth_date) = 12
  AND YEAR(hire_date) LIKE '199%'
ORDER BY DATEDIFF(hire_date, CURDATE());