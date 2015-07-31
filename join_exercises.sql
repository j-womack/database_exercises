SELECT concat(first_name, ' ', last_name) AS full_name, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE t.to_date >= now() AND t.title LIKE 'Senior%';

SELECT dept_name, concat(e.first_name, ' ', e.last_name) AS full_name
FROM departments dept
JOIN dept_manager dm ON dept.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE e.gender = 'F' AND dm.to_date >= now();

SELECT concat(e.first_name, ' ', e.last_name) AS managers, s.salary AS current_salary
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN salaries s ON s.emp_no = e.emp_no
WHERE s.to_date >= now();

SELECT title, AVG(s.salary) AS average_salary
FROM titles t
JOIN salaries s ON s.emp_no = t.emp_no
WHERE s.to_date >= now() AND t.to_date >= now()
GROUP BY title;

SELECT concat(e.first_name, ' ', e.last_name) AS full_name, 
d.dept_name AS department_name,
concat(mgr.first_name, ' ', mgr.last_name) AS manager_name
FROM employees e 
JOIN dept_emp de 
    ON de.emp_no = e.emp_no
JOIN departments d
    ON d.dept_no = de.dept_no
JOIN dept_manager dm 
    ON dm.dept_no = de.dept_no
JOIN employees mgr 
    ON mgr.emp_no = dm.emp_no
WHERE de.to_date >= now() AND dm.to_date >= now()
ORDER BY d.dept_name, e.last_name, e.first_name;