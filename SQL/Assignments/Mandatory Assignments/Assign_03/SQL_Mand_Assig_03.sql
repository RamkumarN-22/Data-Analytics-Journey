--1. Create a stored procedure to display the restaurant name, type and cuisine where the
--table booking is not zero.
select * from jomato

create procedure proc_01
as
begin
select restaurantname, restauranttype, cuisinestype,tablebooking from jomato 
where tablebooking=0
end

exec proc_01
--2. Create a transaction and update the cuisine type ‘Cafe’ to ‘Cafeteria’. Check the result
--and rollback it.

begin transaction

update jomato 
set cuisinestype='cafeteria' where cuisinestype='cafe'

rollback

select cuisinestype from jomato

--3. Generate a row number column and find the top 5 areas with the highest rating of restaurants.
select area,restaurantname,rating, row_number() over (order by rating desc) rownum
from jomato
order by rating desc
offset 0 rows fetch next 5 rows only

--4. Use the while loop to display the 1 to 50.
declare @num int = 1
while @num <= 50
begin
print @num
set @num = @num+1
end

--5. Write a query to Create a Top rating view to store the generated top 5 highest rating of restaurants.
create view top_highestratedrestaurant as 
select top 5 restaurantname,area,rating
from jomato 
order by rating desc

select * from top_highestratedrestaurant

--6. Create a trigger that give an message whenever a new record is inserted.create trigger trg_afterinserton jomatoafter insertasbeginprint 'New restaurant record has been inserted succesfully'endinsert into jomato (restaurantname,area,rating)values ('Paavbaaji', 'Chandra layout',4.9)