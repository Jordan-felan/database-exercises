USE employees;

SELECT CONCAT(first_name,' ', last_name) FROM employees WHERE first_name = 'Maya';

SELECT hire_date FROM employees WHERE first_name = 'Maya';

SELECT DAYOFMONTH(hire_date)  FROM employees WHERE first_name = 'Maya';
SELECT DAYOFMONTH(hire_date)  FROM employees WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);

SELECT MONTH(hire_date)  FROM employees WHERE first_name = 'Maya' ORDER BY MONTH(hire_date);

SELECT YEAR(hire_date)  FROM employees WHERE first_name = 'Maya' ORDER BY YEAR(hire_date);
