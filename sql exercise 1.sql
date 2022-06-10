-- SALARY IN THE TECH INDUSTRY IN INDIA EXPLORATORY ANALYSIS FROM KAGGLE

SELECT * FROM sakila.`exercise 1`;
select count(*)
FROM sakila.`exercise 1`;

-- 1 In which companies do the top 5 highest salary work?
select `Company Name`,`Job Title`,max(Salary) as Total_Salary,Location
from sakila.`exercise 1`
group by `Company Name`
order by 3 desc
limit 5

-- 2 What are the cities with the highest average salary 
select Location,avg(Salary) as `Average Salary`
from sakila.`exercise 1`
group by Location
order by `Average Salary`desc;

-- 3 What's the number of emplyees who earn a salary above average for each job title
select `Job Title`,count(Salary) as `N° of employees above average`
from sakila.`exercise 1`
where Salary > 715145.9047
group by `Job Title`
having count(Salary)
order by `N° of employees above average`desc;

-- 4 What are the top 10 most popular job titles 
select count(*) as `n° of type of job`,`Job Title`
from sakila.`exercise 1`
group by `Job Title`
order by `n° of type of job` desc
limit 10; 

-- 5 What are the top 5 companies with the highest rating score
select Rating,`Company Name`
from sakila.`exercise 1`
order by Rating desc
limit 5

-- 6 What are the major cities with the highest number of tech employees
select count(*) as `N° of tech employees`, Location
from sakila.`exercise 1`
group by Location
order by `N° of tech employees` desc

-- 7 What's the average salary in each city
select avg(Salary) as `Average salary`,Location
from sakila.`exercise 1`
group by Location
order by `Average salary` desc
 
-- 8 What's the percentage of tech employees for each job role in the distribution
with asdf as (select`Job Title`,count(*) as `N° of tech employees`
from sakila.`exercise 1`
group by `Job Title`
order by `N° of tech employees`
)
select *,concat(round((`N° of tech employees`/18149)*100,2),"%")  as Percentage
from asdf
order by `N° of tech employees` desc;


