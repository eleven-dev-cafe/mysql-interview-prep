/*
Solution 04: Top 5 Highest Selling Products

Explanation:
1. SELECT product_id, SUM(amount) → Get total sales per product
2. GROUP BY product_id → Aggregate by product
3. ORDER BY total_sales DESC → Rank products by total sales
4. LIMIT 5 → Keep only the top 5 products
*/

SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 5;