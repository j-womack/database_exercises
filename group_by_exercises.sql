SELECT DISTINCT title 
FROM titles
ORDER BY title ASC;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT DISTINCT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%E';

SELECT DISTINCT last_name
FROM employees
WHERE (last_name LIKE '%q%')
AND (last_name NOT LIKE '%qu%');