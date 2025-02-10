select * from Jomato

--1. Create a user-defined functions to stuff the Chicken into ‘Quick Bites’. Eg: ‘Quick Chicken Bites’.

create function func_add_stuff(@x varchar (20))
returns table 
as
return
select concat('quick ',  @x,  ' bites') as quick_bites

select * from dbo.func_add_stuff('chicken')

--2. Use the function to display the restaurant name and cuisine type which has the maximum number of rating.

create function check_max_rating ()
returns table
as
return
select restaurantname, cuisinestype, no_of_rating from jomato
where no_of_rating =(select max(no_of_rating) from jomato)

select * from dbo.check_max_rating ()

--3. Create a Rating Status column to display the rating as ‘Excellent’ if it has more the 4
--start rating, ‘Good’ if it has above 3.5 and below 4 star rating, ‘Average’ if it is above 3
--and below 3.5 and ‘Bad’ if it is below 3 star rating and

select*, 
case 
when rating >4 then 'Excellent'
when rating between 3.5 and 4 then 'Good'
when rating between 3 and 3.5 then 'Average'
when rating <3 then 'Bad'
else 'no rating'
end as rating_status
from jomato

--4. Find the Ceil, floor and absolute values of the rating column and display the current
--date and separately display the year, month_name and day.

select 
ceiling(rating) as ceil_value, 
floor(rating) as floor_value, 
abs(rating) as absolute_value,
getdate() as curren_date,
year(getdate()) as year_value,
datename(month, getdate()) as month_name,
day(getdate()) as day_value
from jomato

--5. Display the restaurant type and total average cost using rollup.select restauranttype, sum(averagecost) as tot_avg_cost from jomato group by rollup (restauranttype)