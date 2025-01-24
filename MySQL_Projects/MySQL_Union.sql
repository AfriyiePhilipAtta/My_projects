-- UNION 
# combining two rows from different tables together 
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT employee_id, first_name, last_name
FROM employee_demographics
UNION 
SELECT employee_id, first_name, last_name
FROM employee_salary;

-- Removing duplicates
SELECT employee_id, first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT employee_id, first_name, last_name
FROM employee_salary;

# Keeping all rows including duplicates
SELECT employee_id, first_name, last_name
FROM employee_demographics
UNION ALL
SELECT employee_id, first_name, last_name
FROM employee_salary;

# Sorting out old people and highly paid employee
SELECT employee_id, first_name, last_name, 'OLD MAN' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION ALL
SELECT employee_id, first_name, last_name, 'OLD MAN' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION ALL
SELECT employee_id, first_name, last_name, 'HIGHLY PAID' AS label
FROM employee_salary
WHERE salary >60000 
ORDER BY first_name, last_name;