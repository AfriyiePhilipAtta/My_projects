SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'male';


SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 60000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Male'
AND birth_date > 1985-01-03;
 
 
 SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > 1985-01-03
OR NOT gender = 'Male';


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Tom' OR age > 50;
