--1. Create an ‘Orders’ table which comprises of these columns: ‘order_id’,
--‘order_date’, ‘amount’, ‘customer_id’
create table Orders (order_id int, order_date date, amount int, customer_id int)

--2. Insert 5 new records.
insert into Orders (order_id, order_date, amount, customer_id)
values  
(101,'7/4/2021',2450,1),
(201,'9/13/2018',100,3),
(301,'2/2/2022',2000,5),
(401,'1/5/2019',3500,6),
(501,'6/3/2021',300,7)

--3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.
select * from customer A inner join orders B 
on A.customer_id=B.customer_id 

--4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the‘customer_id’ column.
select * from customer A left  outer join orders B
on A.customer_id=B.customer_id   

select * from customer A right outer join orders B
on A.customer_id=B.customer_id 

--5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column.
select * from customer A full outer join orders B
on A.customer_id=B.customer_id

--6. Update the ‘Orders’ table and set the amount to be 100 where‘customer_id’ is 3.
select * from orders
update orders set amount=1000 where customer_id=3
