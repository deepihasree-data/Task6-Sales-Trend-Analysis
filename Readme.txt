TASK 6: SALES TREND ANALYSIS USING AGGREGATIONS
================================================

OBJECTIVE
---------
Analyze monthly revenue and order volume using SQL aggregation
functions and date-based grouping.


TOOL USED
---------
SQLite Online


DATASET
-------
Ecommerce Sales Dataset

Table Name:
ecommerce_sales


COLUMNS USED
------------
order_id       - Unique order identifier
order_date     - Date of the order
total_amount   - Total amount of the order
product_id     - Product identifier


SQL CONCEPTS USED
-----------------
1. SELECT
2. SUM()
3. COUNT(DISTINCT)
4. GROUP BY
5. ORDER BY
6. LIMIT
7. MIN()
8. MAX()
9. AVG()
10. strftime()


ANALYSIS PERFORMED
------------------
1. Calculated monthly revenue.
2. Calculated monthly order volume.
3. Grouped sales data by year and month.
4. Identified the top 5 months by revenue.
5. Identified the top 5 months by order volume.
6. Calculated overall revenue and total orders.
7. Identified the highest and lowest revenue months.


MAIN SQL QUERY
--------------
SELECT
    strftime('%Y-%m', order_date) AS sales_month,
    SUM(total_amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM ecommerce_sales
GROUP BY strftime('%Y-%m', order_date)
ORDER BY sales_month;


RESULTS
-------
The analysis covered sales data from January 2026 to May 2026.

Monthly Revenue and Order Volume:

January 2026:
Revenue = 141000
Orders = 2

February 2026:
Revenue = 11500
Orders = 2

March 2026:
Revenue = 134400
Orders = 3

April 2026:
Revenue = 20600
Orders = 2

May 2026:
Revenue = 6800
Orders = 1


KEY FINDINGS
------------
1. January 2026 recorded the highest monthly revenue of 141000.

2. March 2026 recorded the highest order volume with 3 orders.

3. March 2026 generated the second-highest monthly revenue of 134400.

4. May 2026 recorded the lowest monthly revenue of 6800.

5. Revenue varied significantly between the months.

6. Monthly aggregation helped identify high-performing and
   low-performing sales periods.


FILES INCLUDED
--------------
Task6_Sales_Trend_Analysis.sql
Monthly_Sales_Result.png
Top_5_Revenue_Months.png
Total_Sales_Summary.png
README.txt


CONCLUSION
----------
SQL aggregation functions were used to analyze monthly sales
performance. Grouping the data by month made it possible to
identify revenue trends and changes in order volume over time.