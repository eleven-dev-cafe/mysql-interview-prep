# 📄 Real-World SQL Interview Questions with Queries  

</br>

## 1. Find the second highest salary  
**Table:** `Employees(id, name, salary)`  

```sql
SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);
```

</br>

## 2. Find duplicate emails in a users table  
**Table:** `Users(id, email)`  

```sql
SELECT email, COUNT(*) AS count
FROM Users
GROUP BY email
HAVING COUNT(*) > 1;
```

</br>

## 3. Find employees who don’t have any manager assigned  
**Table:** `Employees(id, name, manager_id)`  

```sql
SELECT *
FROM Employees
WHERE manager_id IS NULL;
```

</br>

## 4. Get the top 3 highest earning employees from each department  
**Table:** `Employees(id, name, salary, department_id)`  

✅ Using **Window Function**:  

```sql
SELECT id, name, salary, department_id
FROM (
  SELECT *, 
         RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
  FROM Employees
) AS ranked
WHERE rnk <= 3;
```

</br>

## 5. Calculate running total of sales per month  
**Table:** `Sales(id, amount, sale_date)`  

```sql
SELECT
  sale_date,
  amount,
  SUM(amount) OVER (ORDER BY sale_date) AS running_total
FROM Sales;
```

</br>

## 6. Find customers who placed more than 3 orders  
**Tables:**  
- `Customers(customer_id, name)`  
- `Orders(order_id, customer_id)`  

```sql
SELECT c.customer_id, c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(o.order_id) > 3;
```

</br>

## 7. Find all customers with no orders
**Tables:** 
- `Customers(customer_id, name)`  
- `Orders(order_id, customer_id)`

```sql
SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```

</br>

## 8. find total number of orders placed each month
**Table:**  `orders(order_id, customer_id, order_date)`

```sql
SELECT DATE_TRUNC('month', order_date) AS month,
       COUNT(*) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;
```

</br>

## 9. Get the count of male and female employees per department
-**Table:** `employees(id, name, gender, department)`

```sql
SELECT 
  department,
  COUNT(CASE WHEN gender = 'Male' THEN 1 END) AS male_count,
  COUNT(CASE WHEN gender = 'Female' THEN 1 END) AS female_count
FROM employees
GROUP BY department;
```

</br>


## 10. Calculate the running total of salaries ordered by employee ID.
**Table:**  `employees(id, name, salary)`

```sql
SELECT name, salary,
       SUM(salary) OVER (ORDER BY id) AS running_total
FROM employees;
```

</br>

## 11. Get the top 5 highest selling products
**Table:** `sales(sale_id, product_id, amount)`

```sql
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 5;
```

</br>

## 12. List customer names and their total orders
**Tables:** 
- `customers(customer_id, name)`
- `orders(order_id, customer_id)`

```sql
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
```

</br>

## 13. Find products priced higher than the average price
**Table:**  `products(product_id, name, price)`

```sql
SELECT *
FROM products
WHERE price > (SELECT AVG(price) FROM products);
```

</br>


## 14. Label customers as 'High', 'Medium', 'Low' spenders
**Table:** `customers(customer_id, name, total_spent)`

```sql
SELECT name,
       CASE
         WHEN total_spent > 1000 THEN 'High'
         WHEN total_spent > 500 THEN 'Medium'
         ELSE 'Low'
       END AS category
FROM customers;
```

</br>

## 15. Replace NULL phone numbers with 'Not Provided'
**Table:** `users(user_id, name, phone)`

```sql
SELECT name, COALESCE(phone, 'Not Provided') AS phone
FROM users;
```

</br>

## 16. Count orders placed in the last 30 days
**Table:**  `orders(order_id, customer_id, order_date)`

```sql
SELECT COUNT(*)
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';
```

</br>

## 17. Get total revenue by region and product
**Table:**  `sales(sale_id, region, product_id, amount)`

```sql
SELECT region, product_id, SUM(amount) AS total_revenue
FROM sales
GROUP BY region, product_id;
```

</br>
