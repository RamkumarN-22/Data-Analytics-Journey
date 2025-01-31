CREATE DATABASE Assignments

USE Assignments

---1. Create a customer table which comprises of these columns: ‘customer_id’,
--‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’
create table customer (customer_id int, first_name varchar(20),last_name varchar(20),email varchar(20),
address varchar(20),city varchar(20),state varchar(20),zip int)

--2. Insert 5 new records into the table
insert into Customer values (1,'Sana','B','sana@gmail.com','Jayanagar','Bangalore','Karnataka',5877)

insert into Customer (customer_id, first_name, last_name, email, address, city, state,zip)
values (2, 'Apurva','Wankade','apurva@yahoo.com','5th Cross','Pune','Mumbai',6894),
        (3,'Gautham','Sinha','gautham@yahoo.com','New City','San Jose','CA',12868),
        (4,'Vishal','V','vishal@gmail.com','4th Cross','Chennai','TamilNadu',6958),
        (5,'Bob','Barly','bob@hotmail.com','3rd Street','Texas','CA',84985);

--3. Select only the ‘first_name’ and ‘last_name’ columns fromthe customer table?
select first_name, last_name from customer

--4. Select those records where ‘first_name’ starts with “G” and city is ‘SanJose’
select * from customer where first_name like 'G%'and city = 'san jose'

--5. Select those records where Email has only ‘gmail’
select * from customer where email like'%gmail.com'

--6. Select those records where the ‘last_name’ doesn't end with “A”.
select * from customer where last_name not like'%A'
