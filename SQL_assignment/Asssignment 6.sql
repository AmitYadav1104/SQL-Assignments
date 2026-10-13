

  CREATE TABLE Employeess (
    Employee_id NUMBER PRIMARY KEY,
    Full_Name   VARCHAR2(100),
    Email       VARCHAR2(100),
    Salary      NUMBER(10,2)
);



INSERT INTO Employeess (Employee_id, Full_Name, Email, Salary) VALUES (100, 'Steven King', 'sking@gmail.com', 24000);
INSERT INTO Employeess (Employee_id, Full_Name, Email, Salary) VALUES (101, 'Neena Kochhar', 'nkochhar@gmail.com', 20000);
INSERT INTO Employeess (Employee_id, Full_Name, Email, Salary) VALUES (102, 'Lex De Haan', 'ldehaan@gmail.com', 17000);
INSERT INTO Employeess (Employee_id, Full_Name, Email, Salary) VALUES (103, 'Alexander Hunold', 'ahunold@gmail.com', 9000);
INSERT INTO Employeess (Employee_id, Full_Name, Email, Salary) VALUES (104, 'Bruce Ernst', 'bernst@gmail.com', 6000);
INSERT INTO Employeess (Employee_id, Full_Name, Email, Salary) VALUES (105, 'David Austin', 'daustin@gmail.com', 4800);
INSERT INTO Employeess (Employee_id, Full_Name, Email, Salary) VALUES (106, 'Valli Pataballa', 'vpatabal@gmail.com', 4800);


Q1. Write a query to generate following output.

    SELECT employee_id,full_name,email,salary
    FROM employeess;


Q2.Write a query to display job_id and number of manager under particular job. Show only those jobs that have more than one manager.


           
    CREATE TABLE Jobs_Manager (
        Job_ID   VARCHAR2(20) PRIMARY KEY,
        Managers NUMBER
    );


      INSERT INTO Jobs_Manager (Job_ID, Managers) VALUES ('IT_PROG', 3);
      INSERT INTO Jobs_Manager (Job_ID, Managers) VALUES ('SH_CLERK', 5);
      INSERT INTO Jobs_Manager (Job_ID, Managers) VALUES ('SA_REP', 5);
      INSERT INTO Jobs_Manager (Job_ID, Managers) VALUES ('ST_CLERK', 5);



    SELECT job_id,count(managers)
    from Jobs_Manager 
    where managers>1
    group by job_id;



Q3. Display the country name and number of employees those working in particular city that count of employee is greater than 30.
(Hint: Using Equijoin and Group by )


      SELECT count(employee_id),c.country_name
      FROM employeess e,departments d,locations l,countries c
      WHERE e.department_id=d.department_id 
      AND d.location_id=l.location_id
      AND l.country_id=c.country_id
      group by c.country_name
      HAVING count(employee_id)>30;


Q4. Display cities name and number of departments present those cities. And exculde departments there are no any employees.
     

      SELECT l.city,count(d.department_id)
      from employeess e,departments d,locations l
      WHERE e.department_id=d.department_id 
      AND d.location_id=l.location_id
      AND employee_id is not null
      group by l.city



Q5. Display the salary range and number of employees how are salary in between of range. 
(Hint : Job_Grade table , Equijoin , Group by )


      CREATE TABLE Job_Grade (
          Grade_Id   NUMBER PRIMARY KEY,
          Low_Sal    NUMBER,
          High_Sal   NUMBER
      );

INSERT INTO Job_Grade (Grade_Id, Low_Sal, High_Sal) VALUES (1, 1000, 2999);
INSERT INTO Job_Grade (Grade_Id, Low_Sal, High_Sal) VALUES (2, 3000, 4999);
INSERT INTO Job_Grade (Grade_Id, Low_Sal, High_Sal) VALUES (3, 5000, 9999);
INSERT INTO Job_Grade (Grade_Id, Low_Sal, High_Sal) VALUES (4, 10000, 14999);
INSERT INTO Job_Grade (Grade_Id, Low_Sal, High_Sal) VALUES (5, 15000, 19999);
INSERT INTO Job_Grade (Grade_Id, Low_Sal, High_Sal) VALUES (6, 20000, 25000);


Q5: Salary range and number of employees in each range
      
      
      SELECT 
          j.low_sal   AS Low_Sal,
          j.high_sal  AS Hig_Sal,
          COUNT(e.employee_id) AS Number_Of_Employees
      FROM employees e
      JOIN job_grade j
          ON e.salary BETWEEN j.low_sal AND j.high_sal
      GROUP BY j.low_sal, j.high_sal
      ORDER BY j.low_sal;





Q6. Display Year list and number of Employees join in particular year.
(Hint: Group by and To_Char Function)



      CREATE TABLE Employee_Join_Year (
          Year NUMBER PRIMARY KEY,
          Number_Of_Employees NUMBER
      );


INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2001, 1);
INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2002, 7);
INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2003, 6);
INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2004, 10);
INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2005, 29);
INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2006, 24);
INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2007, 19);
INSERT INTO Employee_Join_Year (Year, Number_Of_Employees) VALUES (2008, 11);


      SELECT to_char(hire_date,'yyyy'),count(employee_id)
      FROM employees
      group by to_char(hire_date,'yyyy')
      order by 1;


Q7. Display Manager_id , Manager Full Name and Under number of employees
     only those managers how have more than 5 employees under working. Result sort by manager_ID



CREATE TABLE Manager_Employees (
    Manager_ID NUMBER PRIMARY KEY,
    Full_Name  VARCHAR2(100),
    Number_Of_Employees NUMBER
);



INSERT INTO Manager_Employees (Manager_ID, Full_Name, Number_Of_Employees) 
VALUES (100, 'Steven King', 14);

INSERT INTO Manager_Employees (Manager_ID, Full_Name, Number_Of_Employees) 
VALUES (120, 'Matthew Weiss', 8);

INSERT INTO Manager_Employees (Manager_ID, Full_Name, Number_Of_Employees) 
VALUES (121, 'Adam Fripp', 8);

INSERT INTO Manager_Employees (Manager_ID, Full_Name, Number_Of_Employees) 
VALUES (122, 'Payam Kaufling', 8);

INSERT INTO Manager_Employees (Manager_ID, Full_Name, Number_Of_Employees) 
VALUES (123, 'Shanta Vollman', 8);


             select * from Manager_Employees;


      SELECT 
          e.manager_id AS Manager_ID,
          m.full_name AS Full_Name,
          COUNT(e.employee_id) AS Number_Of_Employees
      FROM employeess e
      JOIN employeess m
          ON e.manager_id = m.employee_id
      GROUP BY e.manager_id, m.full_name, m.last_name
      HAVING COUNT(e.employee_id) > 5
      ORDER BY e.manager_id;












