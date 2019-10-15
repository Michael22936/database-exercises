USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT CONCAT(COUNT(*), " ", gender) AS COUNT
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

