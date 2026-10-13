--1.1.  Write create table syntax for employee table and Incentive table
create table Employee
(Emp_id number primary key,
First_name varchar2(15) not null,
Last_name varchar2(15) not null,
Salary number not null,
Joining_date Date,
Department varchar2(20)
);


create table Incentives
(Employee_ref_id number,
Incentive_date date,
Incentive_amount number not null,
foreign key(Employee_ref_id) references Employee(Emp_id)
);

--2.2.	Writesyntax forinsert data into table of employee table and Incentive table

insert into Employee(Emp_id,First_name,Last_name,Salary,Joining_date,Department)
values(1,'John','Abraham',1000000,To_Date('01-JAN-13', 'DD-MON-YY'),'Banking');

insert into Employee(Emp_id,First_name,Last_name,Salary,Joining_date,Department)
values(2,'Michael','Clarke',800000,To_Date('01-JAN-13', 'DD-MON-YY'),'Insurance');

insert into Employee(Emp_id,First_name,Last_name,Salary,Joining_date,Department)
values(3,'Roy','Thomas',700000,To_Date('01-FEB-13', 'DD-MON-YY'),'Banking')

insert into Employee(Emp_id,First_name,Last_name,Salary,Joining_date,Department)
values(4,'Tom','Jose',600000,To_Date('01-FEB-13', 'DD-MON-YY'),'Insurance');

insert into Employee(Emp_id,First_name,Last_name,Salary,Joining_date,Department)
values(5,'Jerry','Pinto',650000,To_Date('01-FEB-13', 'DD-MON-YY'),'Insurance');

insert into Employee(Emp_id,First_name,Last_name,Salary,Joining_date,Department)
values(6,'Philip','Mathew',750000,To_Date('01-JAN-13', 'DD-MON-YY'),'Services');

select * from Employee

  insert into Incentives (Employee_ref_id,Incentive_date,Incentive_amount)
values(1,To_Date('01-FEB-13', 'DD-MON-YY'),5000);

insert into Incentives (Employee_ref_id,Incentive_date,Incentive_amount)
values(2,To_Date('01-FEB-13', 'DD-MON-YY'),3000);

insert into Incentives (Employee_ref_id,Incentive_date,Incentive_amount)
values(3,To_Date('01-FEB-13', 'DD-MON-YY'),4000);

insert into Incentives (Employee_ref_id,Incentive_date,Incentive_amount)
values(1,To_Date('01-JAN-13', 'DD-MON-YY'),4500);

insert into Incentives (Employee_ref_id,Incentive_date,Incentive_amount)
values(2,To_Date('01-JAN-13', 'DD-MON-YY'),3500);

select * from incentives

--3.Get all employee details from the employee table

select * from Employee;

--4.	Get First_Name,Last_Name from employee table

select First_name,Last_name from Employee;

--5.	Get First_Name from employee table using alias name “Employee Name”

select First_name as Employee_name from Employee;
--6.	Get First_Name from employee table in upper case

select UPPER(First_name) from Employee;

--7.	Select first 3 characters of FIRST_NAME from EMPLOYEE

select substr(First_name,1,3)as first_three_char from Employee;

--8.	Get position of 'o' in name 'John' from employee table

select instr('John', 'o')as position from employee
where First_name='John';
--9.	Get FIRST_NAME from employee table after removing white spaces from right side.

select RTRIM(First_name) as clear_space from Employee;

--10.	Get First_Name from employee table after replacing 'o' with '$'
select replace(First_name, 'o','s')as replacing_col from Employee;

--11.	Get First_Name and Last_Name as single column from employee table separated by a '_'

select First_name || '_' || last_name as full_name from Employee;

--12.	Get FIRST_NAME, Joiningyear, Joining Month and Joining Date from employee table

select FIRST_NAME,
extract(Year  from Joining_Date)as Joining_year,
extract(Month  from Joining_date) as Joining_month,
extract(Day from Joining_date) as Joining_Day 
from employee;

--13.	Get all employee details from the employee table order by First_Name Ascending

select * from Employee
order by First_name asc;

--14.	Get all employee details from the employee table order by First_Name Ascending and Salary Descending?
select * from Employee
order by First_name asc, Salary desc;

--15.	Get employee details from employee table whose employee name is “John”
select * from Employee
where First_name='John';

--16.	Get employee details from employee table whose employee name are “John” and “Roy”
select * from Employee
where First_name in('John','Roy');

--18.	Get employee details from employee table whose first name starts with 'J'.

select * from Employee
where First_name like 'J%';

--19.	Get employee details from employee table whose first name contains 'o'.
select * from Employee
where First_name like '%o%';

--20.	Get employee details from employee table whose first name ends with 'n'.

select * from Employee
where First_name like '%n';

--21.	Get employee details from employee table whose first name ends with 'n' and name contains 4 letters.
select * from Employee
where First_name like '___n';

--22.	Get employee details from employee table whose first name starts with 'J' and name contains 4 letters.
select * from Employee
where First_name like 'J___';

--23.	Get employee details from employee table who’s Salary greater than 600000.
select * from Employee
where salary > 600000;

--24.	Get employee details from employee table whose joining year is “2013”.
select * from Employee
where extract(year from Joining_date)=2013;

--25.	Get employee details from employee table whose joining Month is “Jan”.
select * from Employee
where extract(Month from Joining_date)=1;

--26.	Get employee details from employee table who joined before January 1st 2013.
select * from Employee
where Joining_date < To_Date('2013-01-01','YYYY-MM-DD');

--27.	Get employee details from employee table who joined after January 31st

select * from Employee
where Joining_date > To_Date('2013-01-01','YYYY-MM-DD');

--28.	Get Joining Date and Time from employee table

select Joining_date,to_Char(Joining_date, 'DD-MM-YYYY HH24:MI:SS')as Joining_date_time
from employee;

-
--29.	Get Joining Date, Time including milliseconds from employee table


--30.	Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table.
select e.Emp_id,i.incentive_date-e.Joining_date as difference from Employee e 
inner join Incentives i
on e.Emp_id = i.Employee_ref_id;

--31.	Get department, total salary with respect to a department from employee table.
select department,sum(salary) as total from employee
group by department;

--32.	Get department, total salary with respect to a department from employee table order by total salary descending.
select department,sum(salary) as total from employee
group by department
order by Total desc;

--33.	Get department, no of employees in a department, total salary with respect 
--to a department from employee table order by total salary descending.

select department,count(Emp_id)as no_of_employee,sum(salary) as total from employee
group by department
order by Total desc;

--34.	Get department wise average salary from employee table order by salary ascending?
select department,avg(salary) as avg_salary from employee
group by department
order by avg_salary asc;

--35.	Get department wise maximum salary from employee table order by salary ascending?
select department,max(salary) as max_salary from employee
group by department
order by max_salary asc;

--36.	Get department wise minimum salary from employee table order by salary ascending?
select department,min(salary) as min_salary from employee
group by department
order by min_salary asc;

--37.	Select no of employees joined with respect to year and month from employee table.
select extract(year from joining_date) as Joining_year,
extract(month from Joining_date) as Joining_month,
count(*) as n0_employees
from employee
group by extract(year from joining_date),
extract(month from Joining_date)
order by Joining_year,Joining_month;

--38.	Select department,total salary with respect to a department from employee
-- table where total salary greater than 800000 order by Total_Salary descending

select department, sum(salary) as Total_salary from employee
group by department
having sum(salary)> 800000
order by Total_salary desc;

--39.	Select employee details from employee table if data in incentive table?

select e.* from employee e inner join incentives i 
on e.Emp_id = I.Employee_ref_Id;

--40.	Select 20 % of salary from John, 10% of Salary for Roy and for other 15 %
-- of salary from employee table
select * from employee
SELECT 
    first_name,
    salary,
    CASE 
        WHEN first_name = 'John' THEN salary * 0.20
        WHEN first_name = 'Roy' THEN salary * 0.10
        ELSE salary * 0.15
    END AS calculated_amount
FROM employee;
--41.	Select Banking as 'Bank Dept', Insurance as
-- 'Insurance Dept' and Services as    'Services Dept' from employee table.

SELECT 
       case
         when department= 'Banking' then 'bank dept'
           when department = 'Insurance' then 'Insurance dept' 
             when department = 'Services' then 'Service dept'
               end as department_name
                from employee;
     
--42.	Delete employee data from employee table who got incentives in incentive table
DELETE FROM Employee
WHERE Emp_id IN (
    SELECT employee_ref_id
    FROM Incentives
    );

 
