USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Name, Department_Manager
FROM employees
JOIN  departments
ON department_manager = dm.emp_no = e
JOIN departments as d
On dept_name
