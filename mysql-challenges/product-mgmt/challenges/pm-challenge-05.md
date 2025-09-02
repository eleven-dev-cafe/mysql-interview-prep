# Challenge 05: Get Total Revenue by Region and Product  

## Problem  
Calculate the total revenue for each **region** and **product** combination.  

**Columns to display:**  
- `region`  
- `product_id`  
- `total_revenue`  

<br>  

## Sample Table  

### sales  
| sale_id | region  | product_id | amount |  
|---------|---------|------------|--------|  
| 1       | North   | 101        | 500    |  
| 2       | North   | 101        | 300    |  
| 3       | South   | 102        | 400    |  
| 4       | South   | 103        | 700    |  
| 5       | East    | 101        | 600    |  
| 6       | East    | 102        | 200    |  

<br>  

## Example Output  
| region | product_id | total_revenue |  
|--------|------------|---------------|  
| North  | 101        | 800           |  
| South  | 102        | 400           |  
| South  | 103        | 700           |  
| East   | 101        | 600           |  
| East   | 102        | 200           |  

<br>  

## Hint  
> Use `SUM(amount)` to calculate revenue.  
> Group results by both `region` and `product_id`.  
