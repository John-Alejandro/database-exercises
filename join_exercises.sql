USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm on e.emp_no = dm.emp_no
JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date ='9999-01-01'
ORDER BY d.dept_name;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm on e.emp_no = dm.emp_no
JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date ='9999-01-01'
AND e.gender = 'f'
ORDER BY d.dept_name;


SELECT t.title AS Title, COUNT(t.emp_no) AS Count
FROM titles as t
JOIN dept_emp AS de on t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
ANd de.to_date = '9999-01-01'
GROUP BY t.title;


SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
ANd s.to_date = '9999-01-01'
ORDER BY dept_name

