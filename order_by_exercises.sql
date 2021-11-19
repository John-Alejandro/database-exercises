USE employees;

# Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.
# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.

SELECT *
FROM employees WHERE ( first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender ='M'
ORDER BY first_name;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'M'
ORDER BY last_name;

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya') OR first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%Q%'
AND last_name NOT LIKE '%QU%';