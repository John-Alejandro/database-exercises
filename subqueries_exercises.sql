USE employees;
# 1. Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT emp_no, first_name, last_name,  hire_date
FROM employees
WHERE emp_no = '101010' IN (
    SELECT first_name, last_name
    FROM employees
    WHERE hire_date = '1990-10-22'
          );

# 2. Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
    );


# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE dept_manager IN (
    SELECT employees
    WHERE gender = 'f'
));
