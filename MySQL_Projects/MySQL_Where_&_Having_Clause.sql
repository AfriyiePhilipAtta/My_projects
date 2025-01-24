SELECT *
FROM parks_and_recreation.employee_salary;

# filtering and grouping the occupation column
SELECT occupation
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

# Finding all occupations with Managers attahed
SELECT occupation
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%Manager%';

# Grouping the occupations with managers attached with their average salary, and the number of times they appear 
SELECT occupation, AVG(salary), COUNT(occupation)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%Manager%'
GROUP BY occupation;

# Finding the average salary of the grouped manager occupations greater than 60000
SELECT occupation, AVG(salary), COUNT(occupation)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%Manager%'
GROUP BY occupation
HAVING AVG(salary) > 60000;
