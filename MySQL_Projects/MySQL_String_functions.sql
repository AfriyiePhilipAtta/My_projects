-- String functions
#LENGTH 
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY LENGTH(first_name);

-- Cases
#UPPER cases
SELECT UPPER(first_name), UPPER(last_name) 
FROM employee_demographics
ORDER BY UPPER(first_name), UPPER('last_name');

#LOWER Cases
SELECT LOWER(first_name), LOWER(last_name)
FROM employee_demographics
ORDER BY LOWER(first_name), LOWER(last_name);
