--1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table
select min(amount) min_amount,max(amount) max_amount, avg(amount) avg_amount from orders

--2. Create a user-defined function which will multiply the given number with10
create function fun_1 (@x int)
returns int
as
begin
 set @x=@x*10
 return @x
end

select dbo.fun_1 (10)

--3. Use the case statement to check if 100 is less than 200, greater than 200 
--or equal to 200 and print the corresponding value.
select 
case 
when 100<200 then '100 is less than 200' 
when 100>200 then '100 is greater than 200' 
else  '100 is equal to 200'
end

--4. Using a case statement, find the status of the amount. 
--Set the status of the amount as high amount, low amount or medium amount based upon the condition
select*, 
case 
when amount<1000 then 'low amount'
when amount>2000 then 'high amount'
when amount between 1000 and 2000 then 'medium amount'
else 'no value' end
from orders 

--5. Create a user-defined function, to fetch the amount greater than then given input.
create function greaterthan (@input int)
returns table
as return select amount from orders where amount=@input

select * from dbo.greaterthan (1500)
