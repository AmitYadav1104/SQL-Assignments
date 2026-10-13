create table selespeople
(Snum_pk number primary key,
sname varchar2(20)not null,
city varchar2(15)not null,
comm number not null
);

select * from selespeople;

drop table selespeople;


insert into selespeople values(1001, 'Peel','London',.12);
insert into selespeople values(1002, 'Serres','San Jose',.13);
insert into selespeople values(1004, 'Monika','London',.11);
insert into selespeople values(1007, 'Rifkin','Baecelona',.15);
insert into selespeople values(1003, 'Axelrod','New York',.10);
insert into selespeople values(1005, 'franc','London',.26);


create table customers
(Cnum_pk number primary key,
cname varchar2(20) not null,
city varchar2(20) not null,
Rating number not null,
 Snum_fk number,
foreign key(Snum_fk) references selespeople(Snum_pk)
);

drop table customers;

insert into customers values(2001,'Hoffman','London',100,1001);
insert into customers values(2002,'Giovanni','Rome',200,1003);
insert into customers values(2003,'Liu','San Jose',200,1002);
insert into customers values(2004,'Grass','Berlin',300,1002);
insert into customers values(2006,'Clemens','London',100,1001);
insert into customers values(2008,'Cisneros','San Jose',300,1007);
insert into customers values(2007,'Pereira','Rome',100,1004);

select * from customers;

create table orders
(Onum_pk number primary key,
Amt number not null,
Odate date,
Cnum_fk number,
Snum_fk number,
foreign key(Cnum_fk) references customers(Cnum_pk),
foreign key (Snum_fk) references selespeople(Snum_pk)
);

select * from orders;

drop table orders;

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3001,18.69,to_date('03-Oct-96 12:30','DD-MON-YY HH24:MI:SS'),2008,1007);


insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3003,767.19,to_date('03-Oct-96 13:45','DD-MON-YY HH24:MI:SS'),2001,1001);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3002,1900.10,to_date('03-Oct-96 12:05','DD-MON-YY HH24:MI:SS'),2007,1004);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3005,5160.45,to_date('03-Oct-96 14:00','DD-MON-YY HH24:MI:SS'),2003,1002);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3006,1098.16,to_date('03-Oct-96 13:37','DD-MON-YY HH24:MI:SS'),2008,1007);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3009,1713.23,to_date('04-Oct-96 15:21','DD-MON-YY HH24:MI:SS'),2002,1003);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3007,75.75,to_date('04-Oct-96 16:02','DD-MON-YY HH24:MI:SS'),2002,1003);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3008,4723.00,to_date('05-Oct-96 12:07','DD-MON-YY HH24:MI:SS'),2006,1001);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3010,1309.95,to_date('06-Oct-96 13:12','DD-MON-YY HH24:MI:SS'),2004,1002);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3011,9891.88,to_date('06-Oct-96 13:09','DD-MON-YY HH24:MI:SS'),2006,1001);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3012,3455.78,to_date('04-Oct-96 15:21','DD-MON-YY HH24:MI:SS'),2002,1003);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3013,1245.98,to_date('04-Oct-96 16:32','DD-MON-YY HH24:MI:SS'),2002,1003);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3014,3721.53,to_date('05-Oct-96 12:45','DD-MON-YY HH24:MI:SS'),2006,1001);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3015,734.50,to_date('06-Oct-96 13:16','DD-MON-YY HH24:MI:SS'),2004,1002);

insert into orders (Onum_pk,Amt,Odate,Cnum_fk,Snum_fk)
values (3016,1729.67,to_date('06-Oct-96 13:07:','DD-MON-YY HH24:MI:SS'),2006,1001);

select * from orders;

--1  list all customers with a rating of 100.

select * from customers
where rating=100;

--2 find all records in the customers table with null values in the city coloumn.

select * from customers
where city is null;

--3 find the largest order taken by each salesperson on each date
select Snum_fk,ODATE,max(AMT) as largest_order from orders
group by Snum_fk,ODATE
order by largest_order desc;


---4 arrange the orders table by descending customers number

select * from orders
order by Cnum_fk desc;

--5find which selespeople currently have orders in the orders table

select distinct SNAME,Snum_pk from selespeople s inner join orders o
on s.Snum_pk= o.Snum_fk;
 
select Sname, Snum_pk from selespeople
where Snum_pk in ( select Snum_pk from orders);

select distinct SNAME,Snum_pk from selespeople s inner join customers c
on s.city = c.city inner join orders o
on c.Snum_fk= o.Snum_fk;
--6->list of all customers matched with the selespersons serving them.

select SNAME, CNAME,s.city  from selespeople s inner join customers c
on s.Snum_pk=c.Snum_fk;

select c.Cname,(select s.Sname from selespeople s where s.Snum_pk=c.Snum_Pk) as selespeople_name
from customers; 
--7-> find the names and number of selespeople who had more than 1 customers
select s.SNAME,s.Snum_pk, count(c.Cnum_pk)as total_cust from selespeople s inner join customers c
on s.Snum_pk=c.Snum_fk
group by s.SNAME,s.Snum_pk
having count(c.Cnum_pk)>1;


--8-> count the orders of each of the salespeople and output the results in desc order.
select s.SNAME,s.Snum_pk, count(o.Onum_pk)as order1 from selespeople s left join orders o
on s.Snum_pk=O.Snum_fk
group by s.SNAME,s.Snum_pk
order by order1 desc;

--9list the customer name if and only if one or more of the customers in the customers tables are located in san Jose.
select * from customers
where city = 'San Jose';

--10-> match salespeople to customers according to what city they lived in.
select SNAME,CNAME,s.city from selespeople s inner join customers c
on s.city=c.city;


select * from orders;

--11-> find the largest order taken by each selesperson.

select SNAME,Snum_pk, max(AMT)as largest_order from selespeople s inner join orders o
on s.Snum_pk=o.Snum_Fk
group by SNAME,Snum_pk
         
--12->	Find customers in San Jose who has a rating above 200

select CNAME from customers
where city='San Jose' and Rating=200;

--13>	List the names and commissions of all salespeople in london.

select  SNAME,COMM as commission from selespeople
where city='London';

select * from selespeople;

--14-> 14.	List all the orders of salesperson Monika from the orders table.
select * from selespeople s inner join orders o
on s.Snum_pk=o.Snum_fk
where SNAME='Monika';

--15-> find all customers with orders on oct 3.
select CNAME from  customers c inner join orders o
on c.Cnum_pk=o.Cnum_fk
where to_char(o.ODATE, 'DD-Mon-YY') = '03-Oct-96';

select * from customers
select * from selespeople
select * from orders

--16 16.	Give the sums of the amounts from the orders table, grouped by date,

select trunc(ODATE) as order_date, sum(AMT)as total_amount from orders
group by trunc(ODATE);

--trunc= remove the timepart and keep only dates

--17-17.	Eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount.
select trunc(ODATE),sum(AMT) as total_amount,max(AMT) as max_amount from orders
group by trunc(ODATE)
having sum(AMT)>= max(AMT)+2000;

--18 18.Select all orders that had amounts that were greater than at least one of the orders from October 6.
select * from orders o 
where o.AMT > any( select AMT from orders 
where trunc(ODATE)=DATE '1996-10-06');


select * from orders;

--19.Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.

select * from selespeople s
where exists(select 1 from customers c where s.Snum_pk=c.Snum_fk and rating=300);

select s.Sname,s.Snum_pk,c.Rating from selespeople s inner join customers c
on s.Snum_pk=c.Snum_Fk
where rating=300;

--20.	Find all pairs of customers having the same rating.

select c1.Cnum_pk as Cnum_pk1,
c1.Cname as Cname1,
c2.Cnum_pk as Cnum_pk2,
c2.Cname as Cname2,
c1.rating
from customers c1 inner join customers c2
on c1.rating=c2.rating
and c1.Cnum_pk > c2.Cnum_pk
order by c1.rating;

--21.	Find all customers with CNUM, 1000 above the SNUM of Serres.
select Cnum_pk,
       Cname from customers
       where Cnum_pk >= ( select Snum_pk+1000 from selespeople
       where sname= 'Serres');
       
--22.	Give the salespeople’s commissions as percentage instead of decimal numbers.
select Snum_pk,Sname,comm*100 || '%' as percentage from selespeople;

select Snum_pk,Sname,to_char(comm*100, 'FM99.00') || '%' as percentage from selespeople;

--23.	Find the largest order taken by each salesperson on each date, eliminating those MAX orders,
 --which are less than $3000.00 in value.
 
 select s.Snum_pk,o.Odate, max(AMT) as largest_amt from selespeople s inner join orders o 
 on s.Snum_PK = O.Snum_FK
 group by s.Snum_PK,o.Odate
 having max(AMT) >= 3000;
 
 select Snum_FK,Odate,max(AMT)as largest_amt from orders
 group by Snum_FK,Odate
 having max(AMT)>=3000;
 
 --24.	List the largest orders on October 3, for each salesperson.
 select Snum_fk,max(AMT) as largest_order from orders 
 where trunc(ODATE) =TO_DATE('1996-10-03', 'YYYY-MM-DD')
group by Snum_fk;

select s.Snum_pk,max(AMT) as largest_amt from selespeople s inner join orders o
on s.Snum_pk = o.Snum_Fk
where trunc(ODATE) = Date '1996-10-03'
group by s.Snum_pk;

--25.	Find all customers located in cities where Serres (SNUM 1002) has customers.
 
 select * from customers
 where city in (select city from customers 
 where Snum_fk = 1002);
 
 SELECT c1.*
FROM customers c1
WHERE EXISTS (
        SELECT 1
        FROM customers c2
        WHERE c2.snum_fk = 1002
        AND c2.city = c1.city
      );
      
 select * from customers
 
 --26.	Select all customers with a rating above 200.00.
 select * from customers
 where rating > 200;
 
 --2727.	Count the number of salespeople currently listing orders in the Orders table.
 
 select count(distinct Snum_fk) as selesperson_count from orders;
 
 select * from orders
 
 --28.	Write a query that produces all customers serviced by salespeople 
 --with a commission above 12%. Output the customer’s name and the
 -- salesperson‘s rate of commission.
 
 select Cname,s.comm as selespersons_rate_comm from selespeople s inner join customers c
 on s.Snum_pk=c.Snum_Fk
 where comm > 0.12
 order by Cname,selespersons_rate_comm;
 
 --29.	Find salespeople who have multiple customers.
 
 select s.Snum_pk,s.Sname, count(Cnum_pk)as customer_count from selespeople s
 inner join customers c 
 on s.Snum_pk=c.Snum_Fk
 group by s.Snum_pk, 
          S.Sname
    having count(Cnum_pk)>1;
    
 --30.	Find salespeople with customers located in their city.
 select s.Sname,c.Cname, s.city from selespeople s inner join
 customers c
 on s.Snum_pk=c.Snum_Fk
 where s.city =c.city;
 
 
 --31.	Find all salespeople whose name starts with ‘P’ and the fourth character is ‘I’.
 
 select Sname from selespeople
 where Sname like 'P__I%';
 
 --32.	Write a query that uses a sub query to obtain all orders for the customer named ‘Cisneros’.
 -- Assume you do not know his customer number.
 select * from orders
 where Cnum_fk = (select Cnum_pk from customers
 where Cname= 'Cisneros');
 
 --33.	Find the largest orders for ‘Serres’ and ‘Rifkin’.
 
 select o.Onum_pk,
        s.Sname,
        o.AMT from orders o inner join selespeople s
        on o.Snum_fk=s.Snum_pk
        where o.AMT = ( select max(o2.AMT) from orders o2 
        where o2.Snum_fk=o.Snum_fk)
        and s.sname in ('Serres', 'Rifkin');
        
--34.	Extract the Salespeople table in the following order: SNUM, SNAME, COMMISSION, CITY.

select Snum_pk,Sname,Comm,city from selespeople;

--35.	Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.

select * from customers 
where Cname between 'A' and 'G';

select * from customers
where Cname >= 'A'
and Cname < 'H';

--36.	Select all the possible combinations of customers that you can assign.

select c1.Cname as Cname1,
       c2.Cname as Cname2 from customers c1 inner join customers c2
       on c1.Cnum_pk < c2.Cnum_pk;
       
--37.	Select all orders that are greater than the average for October 4.

select * from orders
where AMT > (select avg(AMT) from orders where trunc(Odate)= Date '1996-10-04');

select avg(AMT) from orders
where trunc(Odate) = To_date('1996-10-04', 'YYYY-MM-DD');

--38.	Write a select command using a correlated sub query that selects the names and numbers 
--of all customers with ratings equal to the maximum for their city.

select c1.Cname,
       c1.Cnum_pk,c1.rating,c1.city from customers c1
       where c1.rating = (select max(c2.Rating) from customers c2 
       where c2.city=c1.city);
       
--39.	Write a query that totals the orders for each day and places the results in descending order.

select trunc(Odate),sum(Amt) as total from orders
group by trunc(Odate)
order by total desc;

--40.	Write a select command that produces the rating followed by 
--the name of each customer in San Jose.

select Cname, rating from customers
where city = 'San Jose';

--41.	Find all orders with amounts smaller than any amount for a customer in San Jose.
 
select * from orders
where AMT < any (select o2.AMT from orders o2 inner join
 customers c 
 on o2.Snum_fk=c.Snum_fk 
where city = 'San Jose');

--42.	Find all orders with above average amounts for their customers.

select * from orders o1
where o1.AMT > (select avg(o2.AMT) from orders o2 
where o2.Cnum_fk = o1.Cnum_fk );

--43.	Write a query that selects the highest rating in each city.

select city,max(rating) from customers
group by city;

--44.	Write a query that calculates the amount of the salesperson’s 
--commission on order by a customer with a rating above 100.00.

select o.Onum_pk,
       o.AMT,
       s.Sname,
       s.comm,(o.AMT*s.comm) as commission_amt from orders o inner join
       customers c 
       on c.Snum_fk = o.Snum_fk inner join selespeople s
       on c.Snum_fk=s.Snum_pk
       where rating > 100;
       
--45.	Count the customers with rating above San Jose’s average.

select count(*)as customer_count from customers 
where rating > (select avg(rating) from customers 
where city='San Jose');

--46.	Write a query that produces all pairs of salespeople
-- with themselves as well as duplicate rows with the order reversed.

select s1.Sname,s2.Sname from selespeople s1 join
selespeople s2 
on s1.Snum_pk != s2.Snum_pk;
--on 1 =1 ;

select s1.Sname,s2.Sname from selespeople s1 cross join
selespeople s2 

--47.	Find all salespeople that are located in either Barcelona or London.

select * from selespeople
where city in ('Barcelona' , 'London');

select * from selespeople
where city ='Barcelona' or city='London';

--48.	Find all salespeople with only one customer.

select s.Sname from selespeople s inner join customers c
on s.Snum_pk=c.Snum_Fk
group by s.Sname
having count(c.Cnum_pk)= 1;

--49.	Write a query that joins the Customer table to itself
-- to find all pairs of customers served by a single salesperson.

select c1.Cname,
       c2.Cname,
       c1.Snum_fk from customers c1 join customers c2
       on c1.Snum_fk=c2.Snum_fk
       and c1.Cnum_pk != c2.Cnum_pk;
       
--50.	Write a query that will give you all orders for more than $1000.00.

select * from orders
where AMT > 1000;

--51.	Write a query that lists each order number followed 
--by the name of the customer who made that order.

select Onum_pk,Cname from orders o inner join customers c
on o.Cnum_fk=c.Cnum_pk;

--52.	Write 2 queries that select all salespeople (by name and number)
-- who have customers in their cities who they do not service,
 -- one using a join and one a correlated subquery. Which solution
   --is more elegant?
 select distinct s.Snum_pk,s.Sname,s.city from customers c 
 inner join selespeople s
 on c.city=s.city
 where c.Snum_fk <> s.Snum_pk;
 
 select s.Snum_pk,                              ---this one
        s.Sname
        from selespeople s
        where exists (select 1 from customers c 
        where s.city = c.city
        and s.Snum_pk <> c.Snum_fk);
        
--53.	Write a query that selects all customers whose ratings 
--are equal than ANY (in the SQL sense) of Serres.
select * from customers
where rating = any
(select c.rating from customers c 
      inner join selespeople s
      on c.snum_fk=s.Snum_Pk
      where Sname = 'Serres');
      
select * from customers
where rating in
(select c.rating from customers c 
      inner join selespeople s
      on c.snum_fk=s.Snum_Pk
      where Sname = 'Serres');
      
--54.	Write2 queries that will produce all orders taken on October3 or October 04.
  
   select * from orders
   where trunc(Odate) in 
   (To_date('03-Oct-96' , 'DD-Mon-YY'),
   To_date ('04-Oct-96', 'DD-Mon-YY'));
   
     select * from orders
   where trunc(Odate)between
   to_date('03-Oct-96' , 'DD-Mon-YY')and
   To_date ('04-Oct-96', 'DD-Mon-YY');
   
 --55.	Write a query that produces all pairs of orders by a given customer. 
 --Name that customer and eliminate duplicates.
 
 select  c.Cname, o1.Onum_pk as order1 ,o2.Onum_pk as order2 from orders o1
        join orders o2
        on o1.Cnum_fk=o2.Cnum_fk
        and o1.Onum_pk < o2.Onum_pk 
        join customers c
        on o1.Cnum_fk=c.cnum_pk;
       
 --56.	Find only those customers whose ratings are higher than every customer in Rome.

SELECT * FROM CUSTOMERS
WHERE RATING > ALL (SELECT RATING FROM CUSTOMERS 
                WHERE CITY='Rome');
                
--57.	Write a query on the customers table whose output will exclude all customers
-- with a rating < = 100.00, unless they are located in Rome.

SELECT * FROM CUSTOMERS
WHERE RATING <= 100 OR CITY='Rome';

--58.	Find all rows from the Customer table for which the salesperson number is 1001.

SELECT * FROM CUSTOMERS
WHERE SNUM_FK=1001;

--59.	Find the total amount in Orders for each salesperson for which this total is greater than the amount of the largest order in the table.

SELECT SNUM_FK, SUM(AMT) AS TOTAL_AMT FROM ORDERS
GROUP BY SNUM_FK
HAVING SUM(AMT)> (SELECT MAX(AMT)AS LARGEST FROM ORDERS);

--60.	Write a query that selects all orders that have Zeroes or NULL in the Amount field.

SELECT * FROM ORDERS
WHERE AMT IS NULL OR AMT=0;

--61.	Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically,
-- and the latter has a rating of less than 200.

SELECT S.SNAME,
       C.CNAME,C.RATING FROM SELESPEOPLE S CROSS JOIN
       CUSTOMERS C 
       WHERE S.SNUM_PK = C.SNUM_FK
       AND S.SNAME < C.CNAME
       AND RATING < 200;                      ---####
       
       SELECT * FROM CUSTOMERS
       
 --62.	List all salespeople’s names and the commission they have earned.
 SELECT SNAME,COMM FROM SELESPEOPLE;
 
 --63.	Write a query that produces the names and cities of all customers with the same rating as Hoffman. 
 --Write the query using Hoffman’s CNUM rather than his rating, 
 --so that it would still be usable if his rating changed.
 
 SELECT CNAME,CITY FROM CUSTOMERS
 WHERE RATING = (SELECT RATING FROM CUSTOMERS 
                 WHERE CNUM_PK= (SELECT CNUM_PK FROM CUSTOMERS 
                                 WHERE CNAME = 'Hoffman'));
                                 
 --64.	Find all salespeople for whom there are customers that follow them in alphabetical order.
 
 SELECT S.SNAME,C.CNAME FROM SELESPEOPLE S JOIN CUSTOMERS C
 ON SNUM_PK = SNUM_FK AND 
       S.SNAME < C.CNAME;
       
--65.	Write a query that produces the names and ratings of all customers of all who have above average orders.

SELECT DISTINCT C.CNAME,C.RATING FROM CUSTOMERS C INNER JOIN ORDERS O 
ON CNUM_PK=CNUM_FK
WHERE AMT > (SELECT AVG(AMT) FROM ORDERS O );

SELECT C.CNAME,
       C.RATING FROM CUSTOMERS C
       WHERE EXISTS (SELECT 1 FROM ORDERS O 
                     WHERE O.CNUM_FK=C.CNUM_PK
                     AND AMT > (SELECT AVG(AMT) FROM ORDERS));
                     
SELECT CNAME,
       RATING FROM CUSTOMERS
       WHERE CNUM_PK IN (SELECT CNUM_FK FROM ORDERS
                         WHERE AMT > (SELECT AVG(AMT) FROM ORDERS));
                         
--66.	Find the sum of all purchases from the Orders table.

SELECT SUM(AMT) FROM ORDERS;

--67.	Write a select command that produces the order number, amount, and date for all rows in the Order table.

SELECT ONUM_PK,AMT,ODATE FROM ORDERS;

--68.	Count the number of not null rating fields in the Customer table including duplicates.

SELECT COUNT(RATING) FROM CUSTOMERS
WHERE RATING IS NOT NULL;

--69.	Write a query that gives the names of both the salesperson and the customer for each order after the order number.

SELECT O.ONUM_PK,
       S.SNAME,
       C.CNAME FROM ORDERS O INNER JOIN CUSTOMERS C
       ON O.CNUM_FK=C.CNUM_PK INNER JOIN SELESPEOPLE S
       ON C.SNUM_FK=S.SNUM_PK;
       
--70.	List the commissions of all salespeople servicing customers in London.

SELECT SNAME,COMM FROM SELESPEOPLE
WHERE SNUM_PK IN  (SELECT SNUM_FK FROM CUSTOMERS
                    WHERE CITY='London');
                    
 SELECT DISTINCT S.COMM FROM SELESPEOPLE S INNER JOIN CUSTOMERS C
 ON S.SNUM_PK=C.SNUM_FK
 WHERE C.CITY = 'London';
 
 --71.	Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.
 
                     
 SELECT s.* FROM SELESPEOPLE S
 WHERE NOT (S.CITY = ANY ( SELECT C.CITY FROM CUSTOMERS C 
                      WHERE C.Snum_fk=S.Snum_pk));
                      
  SELECT s.* FROM SELESPEOPLE S
 WHERE S.CITY <>ALL ( SELECT C.CITY FROM CUSTOMERS C 
                      WHERE C.Snum_fk=S.Snum_pk);
                      

SELECT S.* FROM SELESPEOPLE S
INNER JOIN CUSTOMERS C                         ------##
ON S.Snum_PK=C.Snum_fk 
WHERE S.CITY <> (SELECT C2.CITY FROM CUSTOMERS C2
                    WHERE C2.Snum_fk= S.Snum_pk
                   );
                   
--72.	Write a query using the EXISTS operator that selects all salespeople 
--with customers located in their cities who are not assigned to them.

SELECT S.* FROM SELESPEOPLE S
WHERE EXISTS ( SELECT 1 FROM CUSTOMERS C
              WHERE S.CITY=C.CITY
              AND S.Snum_PK<>C.Snum_fk);
              
 SELECT DISTINCT S.* ,C.Cname FROM SELESPEOPLE S JOIN CUSTOMERS C
 ON S.CITY=C.CITY
              AND S.Snum_PK<>C.Snum_fk;
       
 SELECT S.* FROM SELESPEOPLE S
WHERE S.CITY IN( SELECT C.CITY FROM CUSTOMERS C
              WHERE S.Snum_PK<>C.Snum_fk);
              
SELECT S.* FROM SELESPEOPLE S
WHERE S.CITY =ANY( SELECT C.CITY FROM CUSTOMERS C
              WHERE S.Snum_PK<>C.Snum_fk);
              
--73.	Write a query that selects all customers serviced by Peel or Monika.

SELECT * FROM CUSTOMERS 
WHERE Snum_Fk IN(SELECT Snum_pk FROM SELESPEOPLE
                WHERE Sname IN ('Peel','Monika'));
 
   SELECT * FROM CUSTOMERS 
WHERE Snum_Fk =ANY(SELECT Snum_pk FROM SELESPEOPLE
                WHERE Sname IN ('Peel','Monika')); 
                
SELECT C.* FROM CUSTOMERS C
WHERE  EXISTS (SELECT 1 FROM SELESPEOPLE S
              WHERE C.Snum_fk=S.Snum_Pk
              AND Sname IN ('Peel','Monika'));  
              
--74.	Count the number of salespeople registering orders for each day.
-- (If a salesperson has more than one order on a given day, 
--he or she should be counted only once.). 

SELECT COUNT(DISTINCT Snum_pk),ODATE FROM SELESPEOPLE S JOIN ORDERS O
ON S.Snum_pk = O.Snum_Fk
GROUP BY ODATE; 

SELECT ODATE,
       COUNT(DISTINCT Snum_fk) AS SELESPEOPLE_COUNT
       FROM ORDERS
       GROUP BY ODATE; 
       
--75.	Find all orders attributed to salespeople in London.

SELECT * FROM ORDERS
WHERE Snum_fk IN(SELECT Snum_pk FROM SELESPEOPLE
                  WHERE CITY='London');     

SELECT o.*
FROM ORDERS o
JOIN SELESPEOPLE s
  ON o.Snum_fk = s.Snum_pk
WHERE s.city = 'London';

--76.	Find all orders by customers not located in the same cities as their salespeople.

SELECT O.* FROM ORDERS O
WHERE O.Snum_fk IN (SELECT S.Snum_pk FROM SELESPEOPLE S
                  WHERE S.Snum_Pk NOT IN ( SELECT C.Snum_Fk FROM CUSTOMERS C
                                    WHERE C.CITY=S.CITY));
                                    
 SELECT DISTINCT O.ONUM_PK,O.AMT,O.CNUM_FK,O.SNUM_FK,C.CITY,S.CITY FROM ORDERS O
 INNER JOIN SELESPEOPLE S 
 ON O.SNUM_FK=S.SNUM_PK LEFT JOIN CUSTOMERS C
 ON C.SNUM_FK=S.SNUM_PK                            --##
 AND C.CITY=S.CITY
 WHERE C.cnum_pk IS NULL;
 
 SELECT DISTINCT O.*
FROM Orders O
JOIN Selespeople S
  ON O.snum_fk = S.snum_pk
LEFT JOIN Customers C
  ON C.snum_fk = S.snum_pk
 AND C.city = S.city
WHERE C.cnum_pk IS NULL;

--77.	Find all salespeople who have customers with more than one current order.

SELECT DISTINCT s.SNUM_PK,C.CNUM_PK,COUNT(O.ONUM_PK)
FROM Selespeople s
JOIN Customers c
  ON s.snum_pk = c.snum_fk
JOIN Orders o
  ON c.cnum_pk = o.cnum_fk
GROUP BY s.snum_pk,c.cnum_pk
HAVING COUNT(o.onum_pk) > 1;

--78.	Write a query that extracts from the Customer table every customer
-- assigned to a salesperson who currently has at least one other customer 
--(besides the customer being selected) with orders in the Orders table.

SELECT *
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Customers c2
    JOIN Orders o
      ON c2.cnum_pk = o.cnum_fk
    WHERE c2.snum_fk = c.snum_fk
      AND c2.cnum_pk <> c.cnum_pk
);

--79.	Write a query that selects all customers whose name begins with ‘C’.

SELECT * FROM CUSTOMERS 
WHERE CNAME LIKE 'C%';

--80.	Write a query on the Customers table that will find the highest rating 
--in each city. Put the output in this form:  for the city (city) the highest rating is : (rating).

SELECT
    'for the city ' || city || ' the highest rating is : ' || MAX(rating) AS result
FROM Customers
GROUP BY city;

--81.	Write a query that will produce the Snum values of all salespeople with orders currently in the Orders table without any repeats.

SELECT DISTINCT snum_fk
FROM Orders;

SELECT DISTINCT s.snum_pk
FROM Selespeople s
JOIN Orders o
  ON s.snum_pk = o.snum_fk;
  
--82.	Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customers’ names and numbers.

SELECT RATING,CNAME,CNUM_PK FROM CUSTOMERS
ORDER BY RATING DESC;

--83.	Find the average commission for salespeople in London.

SELECT AVG(COMM) FROM SELESPEOPLE
WHERE CITY='London';

--84.	Find all orders credited to the same salesperson that services Hoffman.

SELECT o.*
FROM Orders o
WHERE o.snum_fk = (
    SELECT c.snum_fk
    FROM Customers c
    WHERE c.cname = 'Hoffman'
);

--85.	Find all salespeople whose commission is in between 0.10 and 0.12 both inclusive.

SELECT * FROM SELESPEOPLE
WHERE COMM BETWEEN 0.10 AND 0.12;

--86.	Write a query that will give you the names and cities of all salespeople in London with commission above 0.10

SELECT * FROM SELESPEOPLE
WHERE CITY='London' AND 
      COMM>0.10;
      
 --87.	What will be the output from the following query? 
SELECT *
FROM Orders
WHERE AMT < 1000
   OR NOT (ODATE = TO_DATE('10/03/1996','MM/DD/YYYY')
           AND CNUM_FK > 2003);                           --##
           
           --#All orders are returned except those with amount ≥ 1000, dated 10-03-1996, and with customer numbers greater than 2003.
           
--88.	Write a query that selects each customer’s smallest order.
           
     SELECT SNUM_FK,MIN(AMT)AS SMALLEST FROM ORDERS
           GROUP BY SNUM_FK; 
           
--89.	Write a query that selects the first customer in alphabetical order whose name begins with ‘G’.

 SELECT *
FROM (
    SELECT *
    FROM Customers
    WHERE cname LIKE 'G%'
    ORDER BY cname
)
WHERE ROWNUM = 1;

--90.	Write a query that counts the number of different not NULL city values in the Customers table.

SELECT COUNT(DISTINCT city) AS city_count
FROM Customers
WHERE city IS NOT NULL;

--91.	Find the average amount from the Orders table.

SELECT AVG(AMT) FROM ORDERS

--92.	What would be the output from the following query?
SELECT*FROM ORDERS WHERE NOT  (Odate =TO_DATE('03/10/1996','DD/MM/YYYY') OR Snum_FK>1006) AND AMT >1500;

         --##

--93.	Find all customers who are not located in San Jose & whose rating is above 200.
SELECT CNAME,CITY,RATING FROM CUSTOMERS
WHERE CITY <> 'San Jose' 
     AND RATING > 200;
     
--94.	Give a simpler way to write this query:
SELECT Snum_PK, Sname, city, Comm FROM Selespeople WHERE (Comm>0.12 and Comm <0.14);

SELECT Snum, Sname, city, Comm
FROM Salespeople
WHERE Comm BETWEEN 0.12 AND 0.14;

--95.	Evaluate the following query
SELECT * FROM orders WHERE NOT ((Odate =TO_DATE('10/03/1996','MM/DD/YYYY') AND Snum_FK>1002) OR AMT>2000);


--####

--96.	Which salespeople attend to customers not in the city they have been assigned to?

SELECT DISTINCT s.*,C.CITY
FROM Selespeople s
JOIN Customers c
  ON s.snum_pk = c.snum_fk
WHERE s.city <> c.city;

--97.	Which salespeople get commission greater than 0.11 and serving customers rated less than 250?

SELECT DISTINCT s.*
FROM Selespeople s
JOIN Customers c
  ON s.snum_pk = c.snum_fk
WHERE s.comm > 0.11
  AND c.rating < 250;
  
--98.	Which salespeople have been assigned to the same city but get different commission percentages?

SELECT DISTINCT s1.snum_pk,
       s1.sname,
       s1.city,
       s1.comm
FROM Selespeople s1
JOIN Selespeople s2
  ON s1.city = s2.city
 AND s1.comm <> s2.comm
 AND s1.snum_pk <> s2.snum_pk;
 
 SELECT *
FROM Selespeople s1
WHERE EXISTS (
    SELECT 1
    FROM Selespeople s2
    WHERE s1.city = s2.city
      AND s1.comm <> s2.comm
      AND s1.snum_pk <> s2.snum_pk);
      
--99.	Which salesperson has earned the most by way of commission?
SELECT s.snum_pk, s.sname, SUM(o.amt * s.comm) AS total_commission
FROM Selespeople s
JOIN Orders o
  ON s.snum_pk = o.snum_fk
GROUP BY s.snum_pk, s.sname
HAVING SUM(o.amt * s.comm) = (
    SELECT MAX(SUM(o2.amt * s2.comm))
    FROM Selespeople s2
    JOIN Orders o2
      ON s2.snum_pk = o2.snum_fk
    GROUP BY s2.snum_pk);
    
 
--100.	Does the customer who has placed the maximum number of orders have the maximum rating?

SELECT CNUM_FK,COUNT(ONUM_PK)AS MAXIMUM FROM ORDERS
GROUP BY CNUM_FK
HAVING COUNT(ONUM_PK)=(SELECT MAX(COUNT(ONUM_PK))FROM ORDERS O
                        GROUP BY CNUM_FK);



SELECT cnum_pk, cname, rating                    --NO CUSTOMER
FROM Customers
WHERE rating = (
    SELECT MAX(rating)
    FROM Customers
);


SELECT c.cnum_pk, c.cname, c.rating
FROM Customers c
JOIN Orders o
  ON c.cnum_pk = o.cnum_fk
GROUP BY c.cnum_pk, c.cname, c.rating
HAVING COUNT(o.onum_pk) = (
        SELECT MAX(COUNT(o.onum_pk))
        FROM Orders
        GROUP BY cnum_fk
    );
   
