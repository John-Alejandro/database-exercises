USE employees;


# Copy the order_by_exercises.sql script and save it as functions_exercises.sql.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name )
# As 'Employee Full Name'
FROM employees
WHERE last_name LIKE ' E%'
   OR last_name LIKE '%E';

# Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
    AND DAY(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN '1990' AND '2000'
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;
# AND hire_date LIKE '199%'

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
# SELECT *
# FROM employees
# WHERE YEAR(hire_date) BETWEEN '1990' AND '2000'
#   AND DAY(hire_date) >= 31
#   AND MONTH(birth_date) = 12
#   AND DAY(birth_date) = 25
#     AND DAY(birth_date) <= 1;

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date ASC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT CONCAT('Days at company: ',DATEDIFF(NOW(), hire_date)) AS 'DAYS AT COMPANY'
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25';
