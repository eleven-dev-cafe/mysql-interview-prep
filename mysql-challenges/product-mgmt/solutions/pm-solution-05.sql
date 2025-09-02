/*
Solution 05: Total Revenue by Region and Product

Explanation:
1. SELECT region, product_id, SUM(amount) → Get total revenue
2. FROM sales → Use the sales table
3. GROUP BY region, product_id → Aggregate revenue by both region and product
*/

SELECT region, product_id, SUM(amount) AS total_revenue
FROM sales
GROUP BY region, product_id;