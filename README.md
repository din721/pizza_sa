# pizza_sales_analysis
Problem statement:
================== 
1. KPIs requirement: KPIs are aggregation of values at high level, it gives us an overall idea of the business.
--------------------
We had to analyze key indicators for our pizza sales data to gain insights into our business performance. Specifically, the following metrics as per client's requirements:
(i)  Total revenue: Sum of total price of all pizza orders.
(ii) Average order value: Average amount spent per order, calculated by dividing total revenue by total number of orders.
(iv) Total pizzas sold: Sum of quantities of all pizzas sold.
(v ) Total orders: Total no. of orders placed.
(vi) Average pizzas per order: Average no. of pizzas sold per order, calculated by dividing total no. of pizzas sold by total no. of orders.

2. Chart requirement:
---------------------
The client wanted to understand various aspects of their pizzas sales data to gain insights & key trends. Specifically below:
(i) Daily trend for total orders: Create a bar chart that displays daily trend of total orders over specific time-period. It is to identify patterns of fluctuations in order volumes	on daily basis.
(ii) Monthly trend for total orders: Create a line chart that illustrates the hourly trend of total orders throughout the day. It is to idnetify peak hours or periods of high order activity. 
(iii) Percentage of sales by pizza category: Create a pie-chart that shows the distribution of sales across different pizza categiries. It is to provide insights into popularity of various pizza categories and 
      their contribution to overall sales.
(iv) Percentage of sales by pizza size: Generate a pie-chart that represents the % of sales attributed to different pizza sizes. This is to understand customer preferences for pizza sizes and their impact on 
     sales.
(v) Total pizzas sold by category: Create a funnel chart that presents total no. of pizzas sold for each pizza category. This is to compare the sales performance of different pizza categories.
(vi) Top 5 best sellers by Revenue, Total Quantity and Total Orders: Create a bar chart highlighting the top 5 best-selling pizzas based on Revenue, Total Quantity and Total Orders. This is to identify the most 
    popular pizza options.
(vii) Bottom 5 best sellers by Revenue, Total Quantity and Total Orders: Create a bar chart highlighting the bottom 5 worst-selling pizzas based on Revenue, Total Quantity and Total Orders. This is to identify 
      underperforming or less popular pizza options.

Tools used:
-----------
> Microsoft SQL Server Management Studio or any SQL tool[For MSSMS to run, we need to install SQL server as well from "https://www.microsoft.com/en-in/sql-server/sql-server-downloads" express edition]
> MS Excel
> Power BI Desktop View

SQL Server connection issue:
----------------------------
MSSSQL16.MSSSQLSERVER
A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: Named Pipes Provider, error: 40 - Could not open a connection to SQL Server) (Framework Microsoft SqlClient Data Provider)

Resolved by:
------------
> Search > Sql server configuration manager > SQL server network configuration > Protocols for MSSQLSERVER > All Protocol Names to 'Enabled' Status
> Also, giving server name as 'PC-DCPIE' with 'Windows Authentication' under Authentication; Tick Encrypt connection & Trust server certificate > add 'TrustServerCertificate=True;' under  
  Additional Connection Parameters

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
