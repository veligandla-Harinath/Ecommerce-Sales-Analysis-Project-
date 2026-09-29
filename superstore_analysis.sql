create database ecommerce_project
;
use ecommerce_project;
show tables;
RENAME TABLE superstore_data TO superstore;
####### Business Questions #########
# What is the total sales?
#What is the total profit?
#How many orders were placed?
#Which category generates the most sales?
#Which products generate the highest profit?
#Which customers have the highest spending?
#What are the monthly sales trends?
#Which region generates the most revenue?
#Which products have high sales but low profit?
#What is the average order value?
#Which payment method is used most?
#What is the repeat-customer rate?
#Which month had the highest sales?
#Which category has the highest average order value?
#What are the top 10 products by revenue?


###### QUERIES ########

-- 1. What is the total sales? --
select sum(sales) as Total_Sales from superstore;

-- 2. What is the total profit? --
select sum(profit) as TOtal_profit from superstore;

-- 3. How many orders were placed? --
alter table superstore rename column `order id` to order_id;
alter table superstore rename column `row id` to row_id;
alter table superstore rename column `customer id` to customer_id;
alter table superstore rename column `product id` to product_id;
select count(distinct order_id) as Total_orders from superstore;

-- 4. Which category generates the most sales?--
select category, sum(sales) as Total_sales from superstore group by Category order by Total_sales desc limit 1;

-- 5. Which products generate the highest profit? --
alter table superstore rename column `product name` to product_name;
select product_name, sum(profit) as Total_profit from superstore group by product_name order by Total_profit desc limit 10;

-- 6. What are the monthly sales trends? --
alter table superstore rename column `order date` to order_date;
select month(order_date) as month, sum(sales) as total_sales from superstore group by month order by month;

-- 7. Which region generates the most revenue? --
select region , sum(sales) as total_revenue from superstore group by region order by total_revenue desc limit 1;

-- 8. Which products have high sales but low profit? --
SELECT 
    Product_name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Product_name
HAVING SUM(Sales) > 10000
   AND SUM(Profit) < 1000
ORDER BY Total_Sales DESC;

-- 9. What is the average order value? --
SELECT 
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM superstore;

-- 10. What is the repeat-customer rate? --
SELECT 
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM superstore
GROUP BY Customer_ID
HAVING COUNT(DISTINCT Order_ID) > 1;

-- 11. Which month had the highest sales? --
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Total_Sales DESC
LIMIT 1;

-- 12. Which category has the highest average order value? --
SELECT 
    Category,
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM superstore
GROUP BY Category
ORDER BY Average_Order_Value DESC
LIMIT 1;

-- 13. What are the top 10 products by revenue? --
SELECT 
    Product_name,
    SUM(Sales) AS Total_Revenue
FROM superstore
GROUP BY Product_name
ORDER BY Total_Revenue DESC
LIMIT 10;
