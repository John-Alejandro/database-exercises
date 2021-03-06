USE employees;

# Create a file named where_exercises.sql. Make sure to use the employees database before you begin.
# 2 Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Could also use SELECT *
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');

# 3 Find all employees whose last name starts with 'E' — 7,330 rows.
#  Could use SELECT *
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

# 4 Find all employees with a 'q' in their last name — 1,873 rows.
# Could use SELECT *
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
# Could use SELECT *
SELECT first_name
FROM employees
WHERE  (first_name='Irena'
OR first_name='Vidya'
OR first_name='Maya');


# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
Select *
FROM employees
WHERE last_name LIKE ' E%'
   OR last_name LIKE '%E';
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
Select *
FROM employees
WHERE last_name LIKE ' E%'
  AND last_name LIKE '%E';
# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE'%Q%'
  AND last_name NOT LIKE '%QU%';
