/************ understanding data(Basic Statistics with SQL) ************/

SELECT * FROM company_divisions
LIMIT 5;

/* how many departments and how many company_divison are there in company_division table*/
SELECT count(distinct(department)) as 'no. of departments'
FROM company_divisions;
SELECT count(distinct(company_division)) as 'no. of divisions'
FROM company_divisions;
SELECT  
	count(distinct(department)) as 'no of regions',
    count(distinct(company_division)) as 'no. of countries'
FROM company_divisions;




SELECT * FROM company_regions
LIMIT 5;

/* how many distinct regions and countries are there in company_regions table*/
SELECT  
	count(distinct(company_regions)) as 'no of regions',
    count(distinct(country)) as 'no. of countries'
FROM company_regions;

/* how many regions are there in each country?*/
SELECT 
	country,
    company_regions, 
    count(company_regions) over (partition by country) as 'no. of regions in each country'
FROM company_regions;


-- ******staff table8888888888-- 
SELECT * FROM staff
LIMIT 5;

/* How many total employees in this company?*/
SELECT COUNT(*) FROM staff;


/* What about gender distribution? */
SELECT gender, COUNT(*) AS total_employees
FROM staff
GROUP BY gender;

/* How many employees in each department */
SELECT department, COUNT(*) AS total_employee
FROM staff
GROUP BY department
ORDER BY department;
-- what is gender ratio in each department?
SELECT 
		department, 
        gender, 
        count(id)as total_employees
FROM staff
GROUP BY department,gender
ORDER BY department;



/* What is the highest and lowest salary of employees? */
SELECT MAX(salary) AS Max_Salary, MIN(salary) AS Min_Salary
FROM staff;


/* what about salary distribution by gender group? */
/* Data Interpretation: It seems like the average between male and female group is pretty close, with slighly higher average salary for Female group*/
SELECT gender, MIN(salary) As Min_Salary, MAX(salary) AS Max_Salary, AVG(salary) AS Average_Salary
FROM staff
GROUP BY gender;

-- what is the salary distribution in each department across gender
SELECT
		department,
        gender,
        min(salary),
        max(salary),
        avg(salary)
FROM staff
GROUP BY department, gender
ORDER BY department asc, gender desc;


/* How much total salary company is spending each year? */
SELECT 
		year(date) as year_,
        SUM(salary) as salary
FROM staff
GROUP BY year(date);

-- what is the monthly salary spending of the company?
SELECT 
		date_format(date,'%Y/%m') as month_,
        sum(salary) as salary
FROM staff
GROUP BY month(date)
ORDER BY month_ desc;
        

/* want to know distribution of min, max average salary by department */
SELECT 
		department,
        min(salary) as min_salary,
        max(salary) as max_salary,
        avg(salary) as avg_salary
FROM staff
GROUP BY department
ORDER BY avg_salary asc;
	


/* how spread out those salary around the average salary in each department ? */
/* Data Interpretation: Although average salary for Outdoors is highest among deparment, it seems like data points
are pretty close to average salary compared to other departments. */
SELECT 
	department, 
	MIN(salary) As Min_Salary, 
	MAX(salary) AS Max_Salary, 
	AVG(salary) AS Average_Salary,
	VAR_POP(salary) AS Variance_Salary,
	STDDEV_POP(salary) AS StandardDev_Salary,
	COUNT(*) AS total_employees
FROM staff
GROUP BY department
ORDER BY 4 DESC;


/* which department has the highest salary spread out ? */
/* Data Interpretation: based on the findings, Health department has the highest spread out. So let's find out more */
SELECT 
	department, 
	MIN(salary) As Min_Salary, 
	MAX(salary) AS Max_Salary, 
	ROUND(AVG(salary),2) AS Average_Salary,
	ROUND(VAR_POP(salary),2) AS Variance_Salary,
	ROUND(STDDEV_POP(salary),2) AS StandardDev_Salary,
	COUNT(*) AS total_employees
FROM staff
GROUP BY department
ORDER BY 6 DESC;


/* Let's see Health department salary */
SELECT department, salary
FROM staff
WHERE department LIKE 'Health'
ORDER BY 2 ASC;

/* we will make 3 buckets to see the salary earning status for Health Department */
CREATE VIEW health_dept_earning_status
AS 
	SELECT 
		CASE
			WHEN salary >= 100000 THEN 'high earner'
			WHEN salary >= 50000 AND salary < 100000 THEN 'middle earner'
			ELSE 'low earner'
		END AS earning_status
	FROM staff
	WHERE department LIKE 'Health';


/* we can see that there are 24 high earners, 14 middle earners and 8 low earners */
SELECT earning_status, COUNT(earning_status)
FROM health_dept_earning_status
-- GROUP BY 1;


/* Let's find out about Outdoors department salary */
SELECT department, salary
FROM staff
WHERE department LIKE 'Outdoors'
ORDER BY 2 ASC;


CREATE VIEW outdoors_dept_earning_status
AS 
	SELECT 
		CASE
			WHEN salary >= 100000 THEN 'high earner'
			WHEN salary >= 50000 AND salary < 100000 THEN 'middle earner'
			ELSE 'low earner'
		END AS earning_status
	FROM staff
	WHERE department LIKE 'Outdoors';
	
/* we can see that there are 34 high earners, 12 middle earners and 2 low earners */
SELECT earning_status, COUNT(*)
FROM outdoors_dept_earning_status
GROUP BY 1;


/* 
After comparing to Health department with Outdoors department, there are higher numbers of middle 
and low earners buckets in Health than Outdoors. So from those salary earners point of view, the average salary
for Outdoors deparment may be a little bit more stretch than Health deparment which has more high earners.
That's why salary standard deviation value of Health is highest among all departments.
*/


-- drop the unused views
DROP VIEW health_dept_earning_status;
DROP VIEW outdoors_dept_earning_status;

/* What are the deparment start with B */
SELECT
	DISTINCT(department)
FROM staff
WHERE department LIKE 'B%';



