SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees 
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' 
ORDER BY last_name ASC, first_name ASC;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE gender = 'M'
AND (
    first_name = 'Irena' 
    OR first_name = 'Vidya' 
    OR first_name = 'Maya'
    );

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no ASC;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%E';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;


SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (last_name LIKE '%q%')
AND (last_name NOT LIKE '%qu%');