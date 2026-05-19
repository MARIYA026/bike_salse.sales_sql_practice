select * from bike_sales.sales ;

select * from bike_sales.sales 
where country = 'Canada' ;

select * from bike_sales.sales
where country = 'Australia' ;

select count(*) from bike_sales.sales;

describe bike_sales.sales;

select * from bike_sales.sales 
order by customer_age
DESC; 

select country , count(*)
from bike_sales.sales
group by country;

select country , count(*) as total_orders
from bike_sales.sales
group by country 
having count(*) > 1;

select state , count(*)
from bike_sales.sales 
where country = 'Australia'
group by state 
having count(*) > 1 ;

select customer_gender , count(*) as total
from bike_sales.sales 
group by customer_gender ;

select customer_gender , avg(customer_age) as avg_age
from bike_sales.sales 
group by customer_gender ; 

select customer_gender , 
round(avg(customer_age)) as avg_age
from bike_sales.sales 
group by customer_gender ;

select age_group, count(*) as total
from bike_sales.sales 
group by age_group
order by total DESC ;

select * from bike_sales.sales 
where customer_age > 40;

select customer_gender , age_group, count(*) as total
from bike_sales.sales 
group by customer_gender , age_group 
order by total DESC;

select min(customer_age) , max(customer_age)
from bike_sales.sales;

select country , sum(revenue) as total_revenue 
from bike_sales.sales 
group by country;

select country , sum(order_quantity) as total
from bike_sales.sales
group by country;

select product , avg(unit_price) as avg_price
from bike_sales.sales
group by product ; 

select country , sum(profit) as total_profit
from bike_sales.sales 
group by country ;

select country , 
sum(cost) as total_cost , 
sum(profit) as total_profit , 
sum(revenue) as total_revenue 
from bike_sales.sales
group by country ; 

select year , count(*) as total
from bike_sales.sales 
group by year
order by year;

select month , count(*) as total 
from bike_sales.sales
group by month
order by total DESC;

select date , sum(revenue) as daily_revenue
from bike_sales.sales 
group by date
order by daily_revenue DESC;

select year , age_group , count(*) as total 
from bike_sales.sales
group by year , age_group
order by year ;

select year , 
sum(profit) as total_profit ,
sum(revenue) as total_revenue 
from bike_sales.sales
group by year 
order by year ; 
