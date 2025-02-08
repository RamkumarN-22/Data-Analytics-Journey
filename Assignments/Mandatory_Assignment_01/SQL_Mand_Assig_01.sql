	--
	create table salesman_table
	(salesmanid int, salesmanname varchar(30), commission numeric(10,2), city varchar(20), age int)

	insert into salesman_table values
	(101, 'joe', 50, 'california', 17),
	(102, 'simon', 75, 'texas', 25),
	(103, 'jessie', 105, 'florida', 35),
	(104,'danny', 100, 'texas', 22),
	(105, 'lia', 65, 'new jersy', 30)

	select * from salesman_table

	create table customer_table
	(salesmanid int, customerid int, customername varchar(30), purchaseamount int)

	insert into customer_table values
	(101, 2345, 'andrew', 550),
	(103, 1575, 'lucky', 4500),
	(104, 2345, 'Andrew', 4000),
	(107, 3747, 'remona', 2700),
	(110, 4004,'julia', 4545)

	select * from customer_table

	create table orders_table
	(orderid int, customerid int, salesmanid int, orderdate date, amount int)

	insert into orders_table values
	(5001,2345,101,'2021-07-04', 550),
	(5003, 1234, 105, '2022-02-15', 1500)

	select * from orders_table

	--1. Insert a new record in your Orders table.
	insert into orders_table values 
	(5004, 2345, 106, '2022-12-22', 1800)

	--2. Add Primary key constraint for SalesmanId column in Salesman table. Add default
	--constraint for City column in Salesman table. Add Foreign key constraint for SalesmanId
	--column in Customer table. Add not null constraint in Customer_name column for the
	--Customer table.

	--q1--Add Primary key constraint for SalesmanId column in Salesman table.

	sp_help salesman_table

	alter table salesman_table 
	alter column salesmanid int not null

	alter table salesman_table 
	add constraint pk_salesmanid 
	primary key (salesmanid)

	--q2--Add default constraint for City column in Salesman table.
	alter table salesman_table 
	add constraint df_city 
	default 'unknown' for city

	sp_help customer_table

	--q3--Add Foreign key constraint for SalesmanId column in Customer table.
	select * from customer_table

	begin transaction
	delete from customer_table where salesmanid in (107, 110)
	commit

	alter table customer_table
	add constraint fk_salesmanid
	foreign key (salesmanid)
	references salesman_table (salesmanid)

	sp_help customer_table

	--q4--Add not null constraint in Customer_name column for the Customer table.
	sp_help customer_table

	alter table customer_table 
	alter column customername varchar(30) not null


	--3. Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase
	--amount value greater than 500.

	select * 
	from customer_table 
	where customername like '%n' 
	and  purchaseamount > 500

	--4. Using SET operators, retrieve the first result with unique SalesmanId values from two
	--tables, and the other result containing SalesmanId with duplicates from two tables.

	--q1--retrieve the first result with unique SalesmanId values from two tables
	select salesmanid from salesman_table 
	union
	select salesmanid from customer_table

	--q2--and the other result containing SalesmanId with duplicates from two tables
	select salesmanid from salesman_table
	intersect
	select salesmanid from customer_table

	--5. Display the below columns which has the matching data.
	--Orderdate, Salesman Name, Customer Name, Commission, and City which has the
	--range of Purchase Amount between 500 to 1500.
	select * from salesman_table
	select * from customer_table
	select * from orders_table

	select c.orderdate, a.salesmanname, b.customername, a.commission, a.city, b.purchaseamount 
	from salesman_table a inner join customer_table b on a.salesmanid=b.salesmanid
	inner join orders_table c on b.customerid=c.customerid 
	where b.purchaseamount between 500 and 1500

	--6. Using right join fetch all the results from Salesman and Orders table.	select * from salesman_table a right outer join orders_table b	on a.salesmanid=b.salesmanid