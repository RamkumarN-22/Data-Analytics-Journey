create database case_study_2

CREATE TABLE LOCATION (
  Location_ID INT PRIMARY KEY,
  City VARCHAR(50)
);

INSERT INTO LOCATION (Location_ID, City)
VALUES (122, 'New York'),
       (123, 'Dallas'),
       (124, 'Chicago'),
       (16 7, 'Boston');


  CREATE TABLE DEPARTMENT (
  Department_Id INT PRIMARY KEY,
  Name VARCHAR(50),
  Location_Id INT,
  FOREIGN KEY (Location_Id) REFERENCES LOCATION(Location_ID)
);


INSERT INTO DEPARTMENT (Department_Id, Name, Location_Id)
VALUES (10, 'Accounting', 122),
       (20, 'Sales', 124),
       (30, 'Research', 123),
       (40, 'Operations', 167);

	   CREATE TABLE JOB (
  Job_ID INT PRIMARY KEY,
  Designation VARCHAR(50)
);

INSERT  INTO JOB VALUES
(667, 'CLERK'),
(668,'STAFF'),
(669,'ANALYST'),
(670,'SALES_PERSON'),
(671,'MANAGER'),
(672, 'PRESIDENT')


CREATE TABLE EMPLOYEE
(EMPLOYEE_ID INT,
LAST_NAME VARCHAR(20),
FIRST_NAME VARCHAR(20),
MIDDLE_NAME CHAR(1),
JOB_ID INT FOREIGN KEY
REFERENCES JOB(JOB_ID),
MANAGER_ID INT,
HIRE_DATE DATE,
SALARY INT,
COMM INT,
DEPARTMENT_ID  INT FOREIGN KEY
REFERENCES DEPARTMENT(DEPARTMENT_ID))

INSERT INTO EMPLOYEE VALUES
(7369,'SMITH','JOHN','Q',667,7902,'17-DEC-84',800,NULL,20),
(7499,'ALLEN','KEVIN','J',670,7698,'20-FEB-84',1600,300,30),
(7505,'DOYLE','JEAN','K',671,7839,'04-APR-85',2850,NULl,30),
(7506,'DENNIS','LYNN','S',671,7839,'15-MAY-85',2750,NULL,30),
(7507,'BAKER','LESLIE','D',671,7839,'10-JUN-85',2200,NULL,40),
(7521,'WARK','CYNTHIA','D',670,7698,'22-FEB-85',1250,500,30)

--Simple Queries:
--1. List all the employee details.
select * from EMPLOYEE

--2. List all the department details.
select * from DEPARTMENT

--3. List all job details.
select * from JOB

--4. List all the locations.
select * from LOCATION

--5. List out the First Name, Last Name, Salary, Commission for all Employees.
select first_name, last_name, salary, comm from employee

--6. List out the Employee ID, Last Name, Department ID for all employees and alias
--Employee ID as "ID of the Employee", Last Name as "Name of the Employee", Department ID as "Dep_id".
select employee_id as ID_of_the_Employee, 
last_name as Name_of_the_Employee, department_id as Dep_id
from employee

--7. List out the annual salary of the employees with their names only.
select concat(first_name, ' ', last_name) as fullname, salary*12 as annual_salary from employee

--WHERE Condition:
--1. List the details about "Smith".
select * from employee where last_name='smith'

--2. List out the employees who are working in department 20.
select * from employee where department_id=20

--3. List out the employees who are earning salary between 2000 and 3000.
select * from employee where salary between 2000 and 3000

--4. List out the employees who are working in department 10 or 20.
select * from employee where department_id in( 10, 20)

--5. Find out the employees who are not working in department 10 or 30.
select * from employee where department_id not in (10,30)

--6. List out the employees whose name starts with 'L'.
select * from employee where first_name like 'L%'

--7. List out the employees whose name starts with 'L' and ends with 'E'.
select * from employee where first_name like 'L%E'

--8. List out the employees whose name length is 4 and start with 'J'.
select * from employee where first_name like 'J___'

--9. List out the employees who are working in department 30 and draw the salaries more than 2500.
select * from employee where department_id=20 and salary >2500

--10. List out the employees who are not receiving commission.
select * from employee where comm is null

--ORDER BY Clause:
--1. List out the Employee ID and Last Name in ascending order based on the Employee ID.
select employee_id, last_name from employee order by employee_id asc

--2. List out the Employee ID and Name in descending order based on salary.
select employee_id, concat(first_name, ' ', last_name) as name, salary from employee 
order by salary desc

--3. List out the employee details according to their Last Name in ascending-order.
 
--4. List out the employee details according to their Last Name in ascending order and 
--then Department ID in descending order.
select * from employee order by last_name asc 
select * from employee order by department_id desc

--GROUP BY and HAVING Clause:
--1. List out the department wise maximum salary, minimum salary and average salary of the employees.
select department_id, max(salary) max_salary, min(salary) min_salary, avg(salary) avg_salary from employee 
group by department_id

--2. List out the job wise maximum salary, minimum salary and average salary of the employees.
select job_id, max(salary) max_salary, min(salary) min_salary, avg(salary) avg_salary from employee 
group by job_id

--3. List out the number of employees who joined each month in ascending order.
select month(hire_date) month_joined, count(*) no_of_employee from employee
group by month(hire_date) 
order by month(hire_date)  asc

--4. List out the number of employees for each month and year in ascending order based on the year and month.
select month(hire_date) month_joined, year(hire_date) year_joined, count(*) no_of_employee from employee
group by month(hire_date), year(hire_date)
order by month(hire_date), year(hire_date) asc

--5. List out the Department ID having at least four employees.
select department_id,count(*) no_of_employees from employee 
group by department_id having count(*)>=4

--6. How many employees joined in February month.
select month(hire_date) month_joined, count(*) no_of_employee_joined from employee 
group by month(hire_date)
having month(hire_date)=2

--7. How many employees joined in May or June month.
select month(hire_date) month_joined, count(*) no_of_employee_joined from employee 
group by month(hire_date)
having month(hire_date) in(5,6)

--8. How many employees joined in 1985?
select Year(hire_date) joined_year, count(*) no_of_employee_joined from employee 
group by year(hire_date)
having year(hire_date) =1985

--9. How many employees joined each month in 1985?
select year(hire_date) joined_year, month(hire_date) joined_month, count(*) no_of_employee_joined from employee 
group by year(hire_date), month(hire_date)
having year(hire_date) =1985

--10. How many employees were joined in April 1985?
select year(hire_date) joined_year, month(hire_date) joined_month, count(*) no_of_employee_joined from employee 
group by year(hire_date), month(hire_date)
having month(hire_date) = 4 and year(hire_date) =1985  

--11. Which is the Department ID having greater than or equal to 3 employees joining in April 1985?
select year(hire_date) joined_year, month(hire_date) joined_month, count(*) no_of_employee_joined from employee 
group by year(hire_date), month(hire_date)
having month(hire_date) = 4 and year(hire_date) =1985 and count(*)>=3

--Joins:
--1. List out employees with their department names.
select * from employee a inner join department b on a.department_id=b.department_id

--2. Display employees with their designations.
select * from EMPLOYEE a inner join job b on a.job_id=b.job_id

--3. Display the employees with their department names and city.
select * from employee a inner join department b on a.department_id=b.department_id
inner join location c on c. location_id=b.location_id

--4. How many employees are working in different departments? Display with department names.
select b.name, count(a.employee_id) as no_of_employees 
from employee a join department b
on a.department_id=b.department_id
group by b.name

--5. How many employees are working in the sales department?
select count(a.employee_id) no_of_employees 
from employee a join department b
on a.department_id=b.department_id
where name='sales' 

--6. Which is the department having greater than or equal to 3 employees and display the department names in ascending order.
select b.name, count(a.employee_id) as employee_count
from employee a
JOIN department b on a.department_id = b.department_id
group by b.name
having count(a.employee_id) >= 3
order by b.name asc

--7. How many employees are working in 'Dallas'?
select count(a.employee_id) as employee_count
from employee a
JOIN department b on a.department_id = b.department_id
JOIN location c on b.location_id = c.location_id
where c.city = 'Dallas'

--8. Display all employees in sales or operation departments.
select a.*
from employee a
JOIN department b on a.department_id = b.department_id
where b.name in ('Sales', 'Operations')

--CONDITIONAL STATEMENT
--1. Display the employee details with salary grades. Use conditional statement to create a grade column.
select a.*, 
       case 
           when salary >= 5000 then 'A'
           when salary >= 3000 then 'B'
           when salary >= 2000 then 'C'
           else 'D'
       end as salary_grade
from employee a

--2. List out the number of employees grade wise. Use conditional statement to create a grade column.
select 
    case 
        when salary >= 5000 then 'A'
        when salary >= 3000 then 'B'
        when salary >= 2000 then 'C'
        else 'D'
    end as salary_grade,
    count(*) as employee_count
from employee
group by 
    case 
        when salary >= 5000 then 'A'
        when salary >= 3000 then 'B'
        when salary >= 2000 then 'C'
        else 'D'
    end

--3. Display the employee salary grades and the number of employees between 2000 to 5000 range of salary.
select 
    case 
        when salary >= 5000 then 'A'
        when salary >= 3000 then 'B'
        when salary >= 2000 then 'C'
    end as salary_grade,
    count(*) as employee_count
from employee
where salary BETWEEN 2000 AND 5000
group by 
    case 
        when salary >= 5000 then 'A'
        when salary >= 3000 then 'B'
        when salary >= 2000 then 'C'
    end

--Subqueries:
--1. Display the employees list who got the maximum salary.
select * from employee 
where salary= (select max(salary) from employee)

--2. Display the employees who are working in the sales department.
select * from employee 
where department_id=(select department_id from department where name='sales')

--3. Display the employees who are working as 'Clerk'.
select * from employee 
where job_id=(select job_id from job where designation='clerk')

--4. Display the list of employees who are living in 'Boston'.
select * from employee 
where department_id in (select department_id from department where location_id=(select location_id from location where city='boston'))

--5. Find out the number of employees working in the sales department.
select count(*) as employee_count
from employee
where department_id = (select department_id from department where name = 'Sales')

--6. Update the salaries of employees who are working as clerks on the basis of 10%.
update employee
set salary = salary * 1.10
where job_id = (select job_id from job where designation = 'Clerk')

--7. Display the second highest salary drawing employee details.
select top 1 * 
from employee 
where salary < (select max(salary) from employee)
order by salary desc

--8. List out the employees who earn more than every employee in department 30.
select * 
from employee 
where salary > (select MAX(salary) from employee where department_id = 30)

--9. Find out which department has no employees.
select name 
from department 
where department_id NOT IN (select distinct department_id from employee)

--10. Find out the employees who earn greater than the average salary for their department.
select * 
from employee a
where salary > (select avg(salary) 
from employee 
where department_id = a.department_id)