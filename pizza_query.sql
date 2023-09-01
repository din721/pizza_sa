select * from pizza_sales;
select sum(total_price) as Total_Revenue from pizza_sales


select sum(total_price)/count(distinct order_id) as Average_order_value 
from pizza_sales

select sum(quantity) as Total_pizzas_sold
from pizza_sales

select count(distinct order_id) as Total_orders
from pizza_sales

select * from pizza_sales;


select cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as Average_pizzas_per_order
from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2)) / 
cast(count(distinct order_id) as decimal(10,2)) 
as decimal(10,2)) as Average_pizzas_per_order
from pizza_sales

select *
from pizza_sales
select DATENAME(DW, order_date) as order_day, count(distinct order_id) as Total_orders
from pizza_sales
group by DATENAME(DW, order_date)

select DATENAME(month, order_date) as Month_name, count(distinct order_id) as Total_orders 
from pizza_sales 
group by DATENAME(month, order_date)
order by Total_orders desc

select *
from pizza_sales

select pizza_category, sum(total_price) as Total_sales, 
sum(total_price)*100/(select sum(total_price) from pizza_sales where month(order_date)=1) as Percentage_of_sales
from pizza_sales
where month(order_date)=1
group by pizza_category

select pizza_size, CAST(sum(total_price) as decimal(10,2)) as Total_sales, 
CAST(sum(total_price)*100/(select sum(total_price) from pizza_sales where DATEPART(quarter, order_date)=1) as decimal(10,2)) as Percentage_of_sales
from pizza_sales
where DATEPART(quarter, order_date)=1
group by pizza_size
order by Percentage_of_sales desc

select top 5 pizza_name, sum(total_price) as Total_Revenue
from pizza_sales
group by pizza_name
order by Total_Revenue desc

SELECT top 5 pizza_name, SUM(quantity) as Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

SELECT top 5 pizza_name, COUNT(DISTINCT order_id) as Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

SELECT top 5 pizza_name, SUM(quantity) as Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold

SELECT top 5 pizza_name, COUNT(DISTINCT order_id) as Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders


SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders ASC