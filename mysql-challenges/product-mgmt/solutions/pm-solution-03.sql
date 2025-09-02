/*
Solution 03: Customers With No Orders

Explanation:
1. FROM Customers c → Start with all customers
2. LEFT JOIN Orders o → Attach order data if available
3. ON c.customer_id = o.customer_id → Match customers to their orders
4. WHERE o.order_id IS NULL → Keep only customers with no orders
*/

SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
