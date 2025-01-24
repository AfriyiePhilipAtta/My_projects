-- Using Limit clause
SELECT *
FROM parks_and_recreation.employee_demographics;

# Limiting the rows
SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 5;

# Choosing which rows to start 
SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 5, 1;


-- ALiasing - is used to renamed a column
SELECT gender, AVG(age) AS average_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

