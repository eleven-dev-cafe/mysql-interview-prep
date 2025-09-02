/*
Solution 02: Customers With More Than 3 Orders

Explanation:
1. JOIN Customers c with Orders o → Match customers to their orders
2. GROUP BY c.customer_id, c.name → Aggregate orders per customer
3. HAVING COUNT(o.order_id) > 3 → Keep only customers with more than 3 orders
*/

SELECT c.customer_id, c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(o.order_id) > 3;