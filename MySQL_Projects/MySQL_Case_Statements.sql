-- CASE statements 
# Allow us to use logics in our select statements
SELECT first_name, last_name, age,
CASE 
	WHEN age <= 40 THEN 'Young' 
END age_bracket
FROM employee_demographics;

-- Using multiple logics in select statements
SELECT first_name, last_name, age, 
CASE 
	WHEN age <= 40 THEN 'Young'
	WHEN age BETWEEN 40 AND 50 THEN 'Old'
	WHEN age >= 50 THEN 'Death_door'
END AS age_bracket
FROM employee_demographics;


-- Determine salary increment
-- Increment 
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus 

SELECT *
FROM parks_departments;


SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS new_salary,
-- For Bonuses 
CASE
    WHEN dept_id = 6 THEN salary *.10
END AS Bonus
FROM employee_salary;