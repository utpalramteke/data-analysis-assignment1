create table employee
(
employee_id	 int,
first_name	varchar(100),
last_name	varchar(100),
department	varchar(100),
salary	numeric(10,2),
joining_date  date,
age	 int
);'

select * from employee

select count(*) from employee

--- 1) top 10 salary 

select employee_id,first_name,department,salary from employee
order by salary desc
limit 10

--- 2) avg salary of employee

select avg(salary) from employee

--- 3) average age of employee

select avg(age) from employee

-- 4) total count entries of salary on the basis of department

select department,count(salary)from employee
group by department

-- 5) total salry on the basis of department

select department,sum(salary) as total_salary from employee
group by department
order by  total_salary desc