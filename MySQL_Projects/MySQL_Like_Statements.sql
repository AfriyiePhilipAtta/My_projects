#Like statements
# % means anything - searches rows by just typing a word in the row data
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'To%';

# %r% sesrches for any first_name having r before, in or after it
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
OR first_name LIKE '%r%';


# _underscores searches for specific valaues 
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1980%';