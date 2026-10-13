--Q1: Write a query to display the Full name only those employees whose first name start with ‘S’ character.
select employee_id,(substr(First_name,1,1))||'.'|| last_name as full_name from hr.employees
where first_name like 'S%';

--Q2. Find the highest, lowest, sum, and average salary of all employees. 
--Label the columns Maximum,Minimum, Sum, and Average, respectively.
-- Round your results to the nearest whole number. 
SELECT round(max(salary)) highest,
round(min(salary)) lowest,
round(sum(salary)) sum_,
round(avg(salary)) avg_
FROM hr.employees;

----Q3. Display following output .
--Employee Details
--------------------------------------------------------------------------------------
--King earns $24,000.00 monthly but wants $72,000.00.
--Kochhar earns $20,000.00 monthly but wants $60,000.00.
--De Haan earns $17,000.00 monthly but wants $51,000.00.
--Hunold earns $9,000.00 monthly but wants $27,000.00.
--Ernst earns $6,000.00 monthly but wants $18,000.00.
--Austin earns $4,800.00 monthly but wants $14,400.00.

SELECT last_name||' '||'earns'||to_char(salary,'$99999.00')||' '||'but wants'||' '||(to_char(salary*3,'$99999.00'))
FROM hr.employees;

--Q4. Determine the number of managers without listing them. Label the column  Number of Managers Hint: 
--Use the MANAGER_ID column to determine the number of managers. 

SELECT count(manager_id) number_of_managers
FROM hr.employees;

--Q5. Find the difference between the highest and lowest salaries. Label the column DIFFERENCE
SELECT max(salary)-min(salary) difference
FROM hr.employees;

--Q6. Display how many employees joined in each month
--Hint: Grouping by month and count the employees .use TO_CHAR functions also


SELECT to_char(hire_date,'Month')month,count(employee_id)
FROM hr.employees
group by to_char(hire_date,'Month')
order by month;

--Q7. Display employee id , full name of employees and their hire date only
-- those employees that has greater than 10 year experience in company.
SELECT employee_id,first_name||' '||last_name Full_name,hire_date
FROM  hr.employees
WHERE (to_char(hire_date)<sysdate-365*10);

--. Write a query to multipley  salary to commission and calculate the average salary of employees.
--Hint: Commission column contain null values

select  avg(salary*nvl(commission_pct,0)) from hr.employees


select * from hr.employees

--Q9.Write a query to display department_id and number of manager under the particular department exclude the null department.
--Hint: Grouping on department id
SELECT department_id,count(manager_id)
FROM hr.departments
WHERE department_id is not n
group by department_id;

--Q10.Display job title and 

--
