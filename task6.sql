CREATE DATABASE IF NOT EXISTS online_sales_large;
USE online_sales_large;
CREATE TABLE IF NOT EXISTS online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(10)
);
SELECT COUNT(*) FROM online_sales;
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    month
ORDER BY 
    month;
    










