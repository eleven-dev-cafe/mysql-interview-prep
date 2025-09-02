# Challenge 03: Find All Customers With No Orders  

## Problem  
Find all customers who have not placed any orders.  

**Columns to display:**  
- `customer_id`  
- `name`  

<br>  

## Sample Tables  

### Customers  
| customer_id | name    |  
|-------------|---------|  
| 1           | Alice   |  
| 2           | Bob     |  
| 3           | Charlie |  

### Orders  
| order_id | customer_id |  
|----------|-------------|  
| 101      | 1           |  
| 102      | 1           |  
| 103      | 2           |  

<br>  

## Example Output  
| customer_id | name    |  
|-------------|---------|  
| 3           | Charlie |  

<br>  

## Hint  
> Use a **LEFT JOIN** from Customers to Orders.  
> Filter rows where `order_id IS NULL` → these customers have no matching orders.  
