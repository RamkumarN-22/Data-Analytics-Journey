--1. Create a view named ‘customer_san_jose’ which comprises of only those customers who are from San Jose
create view customer_san_jose as
select * from Customer where city='san jose'

select * from customer_san_jose

--2. Inside a transaction, update the first name of the customer to Francis where the last name is sinha:
--a. Rollback the transaction

begin transaction

update customer 
set first_name='Fransis'
where last_name='sinha'

rollback

--b. Set the first name of customer to Alex, where the last name is sinha
begin transaction

update customer 
set first_name='Alex'
where last_name='sinha'

commit

--3. Inside a TRY... CATCH block, divide 100 with 0, print the default error message. 
begin try
    -- This will cause a divide-by-zero error
    select 100 / 0 as result;
end try
begin catch
    -- Display error details using SELECT
    select 
        ERROR_NUMBER() as ErrorNumber,
        ERROR_MESSAGE() as ErrorMessage;
end catch;

--4. Create a transaction to insert a new record to Orders table and save it.
begin transaction
insert into orders values(601,'2023-02-06',4000,8)
commit

select * from Orders
