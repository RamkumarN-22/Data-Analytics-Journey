--1. Arrange the ‘Orders’ dataset in decreasing order of amount
select * from orders order by amount desc

--2. Create a table with the name ‘Employee_details1’ consisting of these
--columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another tablewiththe name 
--‘Employee_details2’ consisting of the same columns asthefirst table. 
create table Employee_details1 (Emp_id char(10),Emp_name varchar(50), Emp_salary numeric(10,2))
select * from Employee_details1
insert into Employee_details1 values (101,'ramkumar',3000), (102,'anu',56000),(103,'ravi',4737)

create table Employee_details2 (Emp_id char(10),Emp_name varchar(50), Emp_salary numeric(10,2))
insert into Employee_details2 values (101,'ramkumar',3000), (102,'keerthi',56000),(104,'ragav',4737)

--3. Apply the UNION operator on these two tables
select * from Employee_details1 
union 
select * from Employee_details2

--4. Apply the INTERSECT operator on these two tables
select * from Employee_details1 
intersect 
select * from Employee_details2

--5. Apply the EXCEPT operator on these two tables
select * from Employee_details1 
except 
select * from Employee_details2
