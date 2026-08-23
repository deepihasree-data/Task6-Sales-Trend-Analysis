-- TASK 6: Sales Trend Analysis Using Aggregations
-- Objective: Analyze monthly revenue and order volume

-- 1. Monthly Revenue and Order Volume
SELECT
    strftime('%Y-%m', order_date) AS sales_month,
    SUM(total_amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM ecommerce_sales
GROUP BY strftime('%Y-%m', order_date)
ORDER BY sales_month;

-- 2. Highest Revenue Months
SELECT
    strftime('%Y-%m', order_date) AS sales_month,
    SUM(total_amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM ecommerce_sales
GROUP BY strftime('%Y-%m', order_date)
ORDER BY monthly_revenue DESC
LIMIT 5;

-- 3. Total Revenue and Total Orders
SELECT
    SUM(total_amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM ecommerce_sales;