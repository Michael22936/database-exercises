USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';

SELECT COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%'
ORDER BY last_name;

SELECT COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

