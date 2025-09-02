# Challenge 02: Find Customers Who Placed More Than 3 Orders  

## Problem  
Find all customers who have placed more than 3 orders.  

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
| 103      | 1           |  
| 104      | 1           |  
| 105      | 2           |  
| 106      | 2           |  
| 107      | 3           |  

<br>  

## Example Output  
| customer_id | name  |  
|-------------|-------|  
| 1           | Alice |  

<br>  

## Hint  
> Use `JOIN` between Customers and Orders.  
> Group by customer to count their orders.  
> Apply `HAVING COUNT(o.order_id) > 3` to filter only those with more than 3 orders.  
