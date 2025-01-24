# JOINS
-- INNER JOIN
#Joining two tables together  
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- Joining employee_demographics and employee_salary together 
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

-- Joining specified columns from two tables together 
SELECT dem.employee_id, 
gender,
salary, 
occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    
# OUTER JOIN
-- Left Join - This returns only matches from the tables
-- Joining employee_demographics and employee_salary together 
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
-- Right Join - returns everything from the right table
-- Joining employee_demographics and employee_salary together 
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

-- Self join
SELECT *
FROM employee_salary emp1
RIGHT JOIN employee_salary emp2 
	ON emp1.employee_id + 1 = emp2.employee_id;
    
-- Self join
SELECT *
FROM employee_salary emp1
RIGHT JOIN employee_salary emp2 
	ON emp1.employee_id + 1 = emp2.employee_id;
    
    
-- Self join
SELECT emp1.employee_id AS emp_santa, 
emp1.first_name AS first_name_santa, 
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name, 
emp2.first_name AS first_name_name, 
emp2.last_name AS last_name_name
FROM employee_salary emp1
RIGHT JOIN employee_salary emp2 
	ON emp1.employee_id + 1 = emp2.employee_id;
    

# MULTIPLE JOINS
-- Used to join multiple tables together 
-- Joining refrence table to tables 
SELECT *
FROM parks_departments;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments as pd
	ON sal.dept_id = pd.department_id;