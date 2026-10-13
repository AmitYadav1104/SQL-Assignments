CREATE TABLE Customer_table(
CID NUMBER PRIMARY KEY,
CNAME VARCHAR2(100),
CADD VARCHAR2(100),
C_CONTACT NUMBER,
C_CREDITDAYS NUMBER,
CJ_DATE DATE,
SEX VARCHAR2(100)
);

INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1001,'Cyona blake','NEW YORK',1235684,20,to_date('20-JAN-2011', 'dd-mm-yyyy'),'FEMALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1002,'JOHN SMITH','NEW JERSI',1341684,20,to_date('21-FEB-2011', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1003,'JORDAN WOOD','PRAG',1805184,20,to_date('22-MAR-2011', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1004,'CHRISTNA','MANHATTON',1125684,31,to_date('23-APR-2013', 'dd-mm-yyyy'),'FEMALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1005,'TOM HILL','LONDON',1239284,10,to_date('25-JUN-2015', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1006,'KAMILA JOSEF','PARISE',124568,9,to_date('28-JUL-2011', 'dd-mm-yyyy'),'FEMALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1007,'ANDRU SYMON','TAXES',125654,15,to_date('01-APR-2016', 'dd-mm-yyyy'),'MALE');
INSERT INTO Customer_table(CID,CNAME,CADD,C_CONTACT,C_CREDITDAYS,CJ_DATE,SEX)
VALUES (1008,'SUNJU SAMSUNG','NEW YORK',12346341,4,to_date('20-JAN-2016', 'dd-mm-yyyy'),'MALE');

SELECT * FROM Customer_table;

----------------------------------------------------------------------------------------------------

CREATE TABLE Vendors_table(
VID NUMBER PRIMARY KEY,
VNAME VARCHAR2(100),
VADD VARCHAR(100),
VCONTACT NUMBER,
VCREDITDAYS NUMBER,
VJ_DATE DATE
);

INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2001,'KIRAN PATIL','PUNE',20535535,20,to_date('20-JAN-2010', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2002,'PRAKASH JAIN','MUMBAI',2063564,10,to_date('05-NOV-2011', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2003,'SWAPNIL THETE','NASHIK',25355352,15,to_date('18-MAR-2010', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2004,'AMOL SHENDE','SATARA',23674776,18,to_date('07-APR-2015', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2005,'KARAN SINTRE','BULDHANA',256756,30,to_date('22-APR-2009', 'dd-mm-yyyy'));
INSERT INTO Vendors_table(VID,VNAME,VADD,VCONTACT,VCREDITDAYS,VJ_DATE)
VALUES (2006,'RAM KULKARNI','OSMANABAD',20367454,21,to_date('09-JUL-2010', 'dd-mm-yyyy'));

SELECT * FROM Vendors_table;

-----------------------------------------------------------------------------------------------------

CREATE TABLE Employee_table(
EID NUMBER PRIMARY KEY,
ENAME VARCHAR2(100),
EJOB VARCHAR2(100),
EADD VARCHAR2 (100),
ECONTACT NUMBER,
ESAL NUMBER,
EDOJ DATE,
EDOL DATE
);

INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3001,'STEVEN KING','PAINTER','NEW YORK',10367454,1200,to_date('09-JUL-2010', 'dd-mm-yyyy'),NULL);
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3002,'DAVID AUSTIN','FITTER','MAN HATON',10367434,1100,to_date('19-AUG-2010', 'dd-mm-yyyy'),NULL);
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3003,'BRUCE ERNST','MECHANIC','NEW JERSEY', 10367264,2200,to_date('08-SEP-2010', 'dd-mm-yyyy'),NULL);
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3004,'LUIS POPP','MECHANIC','NEW JERSEY',10367264,1700,to_date('19-OCT-2009', 'dd-mm-yyyy'),to_date('06-SEP-2010', 'dd-mm-yyyy'));
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3005,'SHERI GOMES','FITTER','PARIS',10327264,1000,to_date('19-OCT-2009', 'dd-mm-yyyy'),to_date('01-AUG-2010', 'dd-mm-yyyy'));
INSERT INTO Employee_table(EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL)
VALUES (3000,'JAMES PHILLIP','FITTER','PARIS',10322264,NULL,to_date('01-JAN-2008', 'dd-mm-yyyy'),NULL);

SELECT * FROM Employee_table;

------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Sparepart_table(
SPID NUMBER PRIMARY KEY,
SPNAME VARCHAR2(250),
SPRATE NUMBER,
SPUNIT VARCHAR2(100)
);

INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4001, 'TWO WHEELER TUBE', 250, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4002, 'TWO WHEELER ENGINE OIL', 400, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4003, 'FOUR WHEELER ENGINE OIL', 5000, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4004, 'TWO WHEELER CARBORATOR', 680, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4005, 'TWO WHEELER CLUTCH WIRE', 129, 'MTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4006, 'TWO WHEELER TAIIL LIGHT', 100, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4007, 'TWO WHEELER INDICATORS', 150, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4008, 'FOUR WHEELER GASKIT', 1340, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4009, 'WHITE COLOUR', 340, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4010, 'BLACK COLOUR', 240, 'LTRS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4011, 'TWO WHEELER SIDE MIRROR', 250, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4012, 'FOUR WHEELER SIDE MIRROR', 450, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4013, 'TWO WHEELER SHOCKUP', 1320, 'PAIR');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4014, 'FOUR WHEELER BUMPER', 6000, 'NOS');
INSERT INTO Sparepart_table(SPID,SPNAME,SPRATE,SPUNIT)
VALUES (4015, 'FOUR WHEELER FRONT GLASS', 7000, 'PCS');

SELECT * FROM Sparepart_table;

--------------------------------------------------------------------------------------------------------


CREATE TABLE Purchase_table(
PID NUMBER PRIMARY KEY,
VID NUMBER ,
SPID NUMBER ,
PQTY NUMBER,
SPRATE NUMBER,
SPGST DECIMAL(10, 2),
PDATE DATE,
TRANCOST NUMBER,
TOTAL DECIMAL(10, 2),
RCV_EID NUMBER,
FOREIGN KEY (VID) REFERENCES Vendors_table(VID),
FOREIGN KEY (SPID) REFERENCES Sparepart_table(SPID),
FOREIGN KEY (RCV_EID) REFERENCES Employee_table(EID)
);

INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5001, 2001, 4001, 10, 250, 350,to_date('01-JAN-2011', 'dd-mm-yyyy'), 1300, 4150, 3001);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5002, 2002, 4002, 4, 400, 288,to_date('02-MAR-2011', 'dd-mm-yyyy'), 100, 1988, 3001);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5003, 2003, 4004, 8, 680, 761.6,to_date('12-JUN-2011', 'dd-mm-yyyy'), 50, 6251.6, 3003);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5004, 2004, 4005, 10, 129, 154.8,to_date('22-AUG-2011', 'dd-mm-yyyy'), 125, 1569.8, 3004);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5005, 2005, 4006, 20, 100, 300,to_date('07-SEP-2011', 'dd-mm-yyyy'), 20, 2320, 3003);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5006, 2006, 4007, 30, 150, 630,to_date('12-OCT-2011', 'dd-mm-yyyy'), 60, 5190, 3004);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5007, 2001, 4003, 20, 5000, 14000,to_date('07-SEP-2011', 'dd-mm-yyyy'), 1000, 115000, 3001);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5008, 2006, 4005, 1, 129, 15.48,to_date('12-OCT-2011', 'dd-mm-yyyy'), 50, 194.48, 3005);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5009, 2006, 4005, 1, 129, 15.48,to_date('15-OCT-2011', 'dd-mm-yyyy'), 50, 194.48, 3005);
INSERT INTO Purchase_table(PID,VID,SPID,PQTY,SPRATE,SPGST,PDATE,TRANCOST,TOTAL,RCV_EID)
VALUES (5010, 2006, 4009, 5, 340, 0,to_date('20-OCT-2011', 'dd-mm-yyyy'), 0, 2938, 3005);

SELECT * FROM Purchase_table;

--------------------------------------------------------------------------------------------------------------



CREATE TABLE ser_det (
SID NUMBER PRIMARY KEY,
CID NUMBER,
EID NUMBER,
SPID NUMBER,
TYP_VEH VARCHAR2(50),
VEH_NO VARCHAR2(20),
TYP_SER VARCHAR2(100),
SER_DATE DATE,
QTY DECIMAL(5, 1),
SP_RATE DECIMAL(10, 1),
SP_AMT DECIMAL(10, 1),
SP_GST DECIMAL(10, 1),
SER_AMT DECIMAL(10, 1),
COMM DECIMAL(10, 1),
TOTAL DECIMAL(10, 1),
FOREIGN KEY (CID) REFERENCES Customer_table(CID),
FOREIGN KEY (EID) REFERENCES Employee_table(EID),
FOREIGN KEY (SPID) REFERENCES Sparepart_table(SPID)
);

INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6001, 1001, 3001, 4001, 'TWO WHEELER', 'MH15CA3228', 'TUBE DAMAGED', to_date('02-JAN-2011', 'dd-mm-yyyy'), 1, 250, 250, 35, 50, 0, 335);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6002, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING', to_date('04-MAR-2011', 'dd-mm-yyyy'), 1, 400, 400, 52, 300, 50, 752);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6003, 1003, 3004, 4005, 'TWO WHEELER', 'MH12PQ1313', 'CLUCH WIRE',to_date('22-AUG-2011', 'dd-mm-yyyy'), 1, 129, 129, 0, 10, 0, 139);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6004, 1002, 3002, 4002, 'TWO WHEELER', 'MH-16U5713', 'FULL SERVICING',to_date('05-MAY-2011', 'dd-mm-yyyy'), 1, 400, 400, 52, 300, 50, 752);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6005, 1004, 3001, 4009, 'TWO WHEELER', 'MH-14PA335', 'COLOR',to_date('21-OCT-2011', 'dd-mm-yyyy'), 2.5, 340, 850, 119, 500, 150, 1469);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6006, 1006, 3001, 4009, 'TWO WHEELER', 'MH-12WE334', 'COLOR',to_date('01-DEC-2011', 'dd-mm-yyyy'), 2.5, 340, 850, 119, 500, 150, 1469);
INSERT INTO ser_det(SID,CID,EID,SPID,TYP_VEH,VEH_NO,TYP_SER,SER_DATE,QTY,SP_RATE,SP_AMT,SP_GST,SER_AMT,COMM,TOTAL)
VALUES (6007, 1007, 3001, 4001, 'FOUR WHEELER', 'MH17BB1345', 'TUBE DAMAGED',to_date('01-JAN-2012', 'dd-mm-yyyy'), 1, 250, 250, 35, 150, 0, 435);

SELECT * FROM ser_det;
---------------------------------Garage System Questions--------------------------------------------------------

select * from customer_table ;
select * from vendors_table ;
select * from employee_table;
select* from sparepart_table;
select * from purchase_table;
select * from ser_det;


--Q.1 List all the customers serviced.
select * from customer_table
where cid in (select cid from ser_det);

select s.cid, c.cname from ser_det s join customer_table c on s.cid=c.cid;

--Q.2 Customers who are not serviced.
select * from customer_table
where cid not in (select cid from ser_det);

select s.cid, c.cname from customer_table c left join ser_det s on s.cid=c.cid
WHERE s.CID IS NULL;

select * from customer_table c
where not exists ( select 1 from ser_det s
                  where s.cid=c.cid);

--Q.3 Employees who have not received the commission.
select * from employee_table
where eid in (select eid from ser_det
              where comm=0);
--Q.4 Name the employee who have maximum Commission.
select *
from(select e.ename,
             s.eid ,
             comm, 
             dense_rank()over ( order by comm desc) drn
from ser_det s join employee_table e 
on s.eid=e.eid)
where drn = 1 ;

select e.ename, s.comm from employee_table e join ser_det s on e.eid=s.eid
where s.comm=(select max(comm) from ser_det)


--Q.5 Show employee name and minimum commission amount received by an employee.
select e.ename,s.comm from ser_det s join employee_table e 
on s.eid=e.eid 
where s.comm <> 0;

--Q.6 Display the Middle record from any table.
select * 
from(select s.* , row_number() over(order by rownum) rn from sparepart_table s)
where rn=trunc((select count(*) from sparepart_table)/2) ;


--Q.7 Display last 4 records of any table.
select *
from(select c.*, row_number()over(order by rownum) rn from customer_table c)
where rn>(select count(*) from customer_table)-4;

select * from customer_table;
--Q.8 Count the number of records without count function from any table
select max(rn)
from(select c.* , row_number()over(order by cid) rn from customer_table c);

--Q.9 Delete duplicate records from "Ser_det" table on cid.(note Please rollback after execution).


--Q.10 Show the name of Customer who have paid maximum amount 
select  s.cid,c.cname, s.total
from ser_det s join customer_table c on s.cid=c.cid 
where s.total =(select max(total)from ser_det);

select * from customer_table;
--Q.11 Display Employees who are not currently working.
select * from employee_table 
where eid not in (select eid from ser_det);

--Q.12 How many customers serviced their two wheelers.
select count(cid) from ser_det
where typ_veh='TWO WHEELER';

--Q.13 List the Purchased Items which are used for Customer Service with Unit of that Item.
select s.cid,p.pid, sp.spid,sp.spname ,sp.spunit 
from sparepart_table sp join purchase_table p on sp.spid=p.spid 
join ser_det s on p.spid=s.spid

--Q.14 Customers who have Colored their vehicles.
select s.cid,c.cname, s.typ_ser from ser_det s join customer_table c on s.cid=c.cid 
where s.typ_ser = 'COLOUR';

--Q.15 Find the annual income of each employee inclusive of Commission
select eid, ename ,(esal*12) Ann_sal 
from employee_table

--Q.16 Vendor Names who provides the engine oil.
select * from vendors_table
where vid in (select vid 
              from purchase_table
              where spid in(select spid
                            from sparepart_table
                            where spname in('TWO WHEELER ENGINE OIL','FOUR WHEELER ENGINE OIL')));
                            
                            
select v.vid, v.vname, sp.spname from vendors_table v join purchase_table p on v.vid=p.vid 
join sparepart_table sp on p.spid=sp.spid
where sp.spname in('TWO WHEELER ENGINE OIL','FOUR WHEELER ENGINE OIL');


--Q.17 Total Cost to purchase the Color and name the color purchased.
select sp.spname, p.total from sparepart_table sp join purchase_table p on sp.spid=p.spid 
where sp.spname in('BLACK COLOUR','WHITE COLOUR');


--Q.18 Purchased Items which are not used in "Ser_det".
select * from sparepart_table
where spid in (select spid from purchase_table
               where spid not in (select spid from ser_det));


--Q.19 Spare Parts Not Purchased but existing in Sparepart
select * from sparepart_table 
where spid not in (select spid from purchase_table);


--Q.20 Calculate the Profit/Loss of the Firm. consider one month salary of each employee for Calculation.
select sum(s.total)-sum(e.esal) 
from employee_table e join ser_det s on e.eid=s.eid 

--Q.21 Specify the names of customers who have serviced their vehicles more than one time.
select c.cname,count(s.cid) service_count from customer_table c join ser_det s on c.cid=s.cid 
group by c.cname 
having count(s.cid)>1;

--Q.22 List the Items purchased from vendors locationwise.
select sp.spname, v.vadd from vendors_table v join purchase_table p on v.vid=p.vid 
join sparepart_table sp on p.spid=sp.spid

--Q.23 Display count of two wheeler and four wheeler from ser_details
select typ_veh,count(*) count_veh from ser_det
where typ_veh ='TWO WHEELER'
group by typ_veh
union all
select typ_veh,count(*) from ser_det
where typ_veh ='FOUR WHEELER'
group by typ_veh;

--Q24 Display name of customers who paid highest SPGST and for which item 
select * 
from(select c.cname, sp.spname, s.sp_g,dense_rank()over (order by s.sp_g desc)drn from sparepart_table sp join ser_det s on sp.spid=s.spid
join customer_table c on s.cid=c.cid)
where drn=1;

--Q25 Display vendors name who have charged highest SPGST rate  for which item
select * 
from(select v.vname,sp.spname,p.spgst, dense_rank() over(order by p.spgst desc)drn from vendors_table v join purchase_table p on v.vid=p.vid
join sparepart_table sp on p.spid=sp.spid)
where drn=1;

--Q26  list name of item and employee name who have received item 

select sp.spname, e.ename from employee_table e join purchase_table p on e.eid=p.rcv_eid 
join sparepart_table sp on p.spid=sp.spid  


--Q27  Display the Name and Vehicle Number of Customer who serviced his vehicle, 
     --And Name the Item used for Service, And specify the purchase date of that Item 
     --with his vendor and Item Unit and Location, And employee Name who serviced the vehicle. for Vehicle NUMBER "MH-14PA335".'

select c.cname,s.veh_no,sp.spname,p.pdate,v.vname,v.vadd,e.ename
from customer_table c join ser_det s on c.cid=s.cid 
join sparepart_table sp on s.spid=sp.spid 
join purchase_table p on sp.spid=p.spid 
join vendors_table v on v.vid=p.vid
join employee_table e on e.eid=s.eid
where veh_no='MH-14PA335';
     
     
--Q28 who belong this vehicle  "MH-14PA335" Display the customer name 
select c.cname, s.veh_no from customer_table c join ser_det s on c.cid=s.cid
where s.veh_no='MH-14PA335';

--Q29 Display the name of customer who belongs to New York and when he /she service their  vehicle on which date
select c.cname,c.cadd,s.ser_date from customer_table c join ser_det s on c.cid=s.cid
where c.cadd ='NEW YORK';
    
--Q 30 from whom we have purchased items having maximum cost?
select * 
from(select v.vname, p.total, dense_rank() over(order by p.total desc)drn 
     from vendors_table v join purchase_table p on v.vid=p.vid)
where drn=1;

--Q31 Display the names of employees who are not working as Mechanic and that employee done ser_det .
select s.eid, e.ename, e.ejob from employee_table e join ser_det s on e.eid=s.eid 
where e.ejob <> 'MECHANIC';

--Q32 Display the various jobs along with total number of employees in each job. The output should
   --contain only those jobs with more than two employees.
select ejob,count(*)
from employee_table
group by ejob
having count(*)>2; 

--Q33 Display the details of employees who done service  and give them rank according to their no of ser_det .
select e.ename ,count(s.eid)  ,rank()over(order by count(e.eid)  desc )from employee_table e join ser_det s on e.eid=s.eid 
group by e.ename

--Q 34 Display those employees who are working as Painter and fitter and who provide service and total count of service done by fitter and painter 
select e.ename, e.ejob , count(s.eid) cnt_ser from employee_table e join ser_det s on s.eid=e.eid 
group by  e.ename, e.ejob
having e.ejob in('PAINTER','FITTER') ;

 
--Q35 Display employee salary and as per highest  salary provide Grade to employee
select f.* ,case drn when 1 then 'A' else 'B' end grade
from(select e.ename, nvl(e.esal,0)sal , dense_rank() over(order by nvl(e.esal,0)desc)drn
     from employee_table e) f

--Q36  display the 4th record of emp table without using group by and rowid
select * 
from(select e.* ,row_number()over(order by rownum)rn from employee_table e)
where rn=4;

--Q37 Provide a commission 100 to employees who are not earning any commission.
select eid , case comm when 0 then 100
             else comm end updated_comm
from ser_det;

--Q38 write a query that totals no. of ser_det  for each day and place the results
      --in descending order
select ser_date, count(s_id) 
from ser_det
group by ser_date 
order by  count(s_id) desc ;
     
--Q39 Display the service details of those customer who belong from same city 
select s.* ,c.cadd 
from customer_table c join ser_det s on c.cid=s.cid
where c.cadd in(select cadd
               from customer_table
               group by cadd
               having count(cadd)>1);

--Q40 write a query join customers table to itself to find all pairs of customers service by a single employee
SELECT DISTINCT c1.cid , c1.cName AS Customer1Name, c2.cid, c2.cName AS Customer2Name, e.EID, e.EName
FROM customer_table c1 JOIN ser_det s1
ON c1.cid = s1.cid JOIN employee_table e 
ON s1.EID = e.EID JOIN ser_det s2 
ON e.EID = s2.EID JOIN customer_table c2 
ON s2.CID = c2.CID
WHERE c1.CID < c2.CID;
   
--Q41 List each service number follow by name of the customer who made that service.
select s.s_id , c.cname 
from customer_table c join ser_det s on c.cid=s.cid 

select * from customer_table ;
select * from vendors_table ;
select * from employee_table;
select * from sparepart_table;
select * from purchase_table;
select * from ser_det;
--Q42 Write a query to get details of employee and provide rating on basis of  maximum ser_det provide by employee .Note (rating should be like A,B,C,D)

select v.* , case no_ser when 4 then 'A' 
                         when 2 then 'B'
                         when 1 then 'C'
                         else 'D'
                         end  Rating 
from(select e.ename ,count(s.eid) no_ser  from employee_table e join ser_det s on e.eid=s.eid 
group by e.ename
order by count(s.eid) desc )v

--Q43 Write a query to get maximum service amount of each customer with their customer details ?
select c.cname , max(s.ser_amt)
from customer_table c join ser_det s on c.cid=s.cid 
group by c.cname

--Q44 Get the details of customers with his total no of ser_det ?
select c.cname ,count(s.cid) total_no_ser from customer_table c join ser_det s on c.cid=s.cid 
group by c.cname

--Q45 From which location sparpart purchased  with highest cost ?
select * 
from (select v.vadd , max(p.total) highest_cost ,dense_rank()over(order by  max(p.total) desc )rn from vendors_table v join purchase_table p on v.vid=p.vid
group by (v.vadd))
where rn=1

--Q46 Get the details of employee with their service details who has salary is null
select e.*,s.*
from employee_table e join ser_det s on e.eid=s.eid 
where e.esal is null;


--Q47 find the sum of purchase location wise 
select v.vadd , sum(p.total) from vendors_table v join purchase_table p on v.vid=p.vid 
group by v.vadd;

--Q48 write a query sum of purchase amount in word location wise ?
select v.vadd , upper(to_char(to_date(sum(p.total),'J'),'JSP'))
from purchase_table p join vendors_table v on p.vid=v.vid group by v.vadd;




--Q49 Has the customer who has spent the largest amount money has been give highest rating
select c.cname,s.total, dense_rank()over(order by s.total desc)rating 
from customer_table c join ser_det s on c.cid=s.cid ;


--Q50 select the total amount in service for each customer for which
  --the total is greater than the amount of the largest service amount in the table
select cid,sum(total) 
from ser_det
group by cid 
having sum(total)>(select max(total) from ser_det); 
  
  
--Q51  List the customer name and sparepart name used for their vehicle and  vehicle type
select c.cname,sp.spname,s.typ_veh 
from customer_table c join ser_det s on c.cid=s.cid join sparepart_table sp on sp.spid=s.spid;

--Q52 Write a query to get spname ,ename,cname quantity ,rate ,service amount for record exist in service table 
select e.ename,c.cname,sp.spname,s.typ_veh ,s.qty,s.sp_rate,s.ser_amt 
from customer_table c join ser_det s on c.cid=s.cid join sparepart_table sp on sp.spid=s.spid  
join employee_table e on e.eid=s.eid;


--Q53 specify the vehicles owners who s tube damaged.
select c.cname, s.typ_ser from customer_table c join ser_det s on c.cid=s.cid 
where s.typ_ser='TUBE DAMAGED';

--Q.54 Specify the details who have taken full service. 
select distinct (c.cname), s.typ_ser from customer_table c join ser_det s on c.cid=s.cid 
where s.typ_ser='FULL SERVICING';

--Q.55 Select the employees who have not worked yet and left the job.
select * from employee_table 
where eid not in (select eid from ser_det) and esal is null;

--Q.56  Select employee who have worked first ever.
select e.ename , count(s.eid) from employee_table e join ser_det s on e.eid=s.eid 
group by e.ename 
having count(s.eid)=1;

--Q.57 Display all records falling in odd date
select * from ser_det
where mod(extract(day from(ser_date)),2)<>0;

--Q.58 Display all records falling in even date
select * from ser_det
where mod(extract(day from(ser_date)),2)=0;


--Q.59 Display the vendors whose material is not yet used.
select vname from vendors_table
where vid in (select vid from purchase_table
              where spid in(select spid from purchase_table
                            where spid not in(select spid from ser_det)));


--Q.60 Difference between purchase date and used date of spare part.
select months_between(s.ser_date,p.pdate) 
from purchase_table p join ser_det s on p.spid=s.spid

select upper(to_char(to_date(65765,'J'),'JSP')) from dual;
