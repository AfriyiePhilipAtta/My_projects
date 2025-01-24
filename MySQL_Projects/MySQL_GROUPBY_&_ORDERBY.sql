# Group by statement goup together rows that has the same values in a specied column
SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;


# GROUP BY using aggregate functions
# Finding the average age of gender
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

# Using a different table
SELECT *
FROM employee_salary;

# Occupations and their salary
SELECT occupation, salary
FROM employee_salary;

# Finding average salary of occuptaions 
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

# Aggregate functions
SELECT occupation, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM employee_salary
GROUP BY occupation;

# ORDER BY 
#Order by sorts the data in either ascending or descending oder
SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;