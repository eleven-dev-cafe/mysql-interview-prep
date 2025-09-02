# Challenge 04: Get the Top 5 Highest Selling Products  

## Problem  
Find the top 5 products with the highest total sales.  

**Columns to display:**  
- `product_id`  
- `total_sales`  

<br>  

## Sample Table  

### sales  
| sale_id | product_id | amount |  
|---------|------------|--------|  
| 1       | 101        | 500    |  
| 2       | 102        | 300    |  
| 3       | 101        | 200    |  
| 4       | 103        | 700    |  
| 5       | 104        | 1000   |  
| 6       | 105        | 600    |  
| 7       | 106        | 400    |  

<br>  

## Example Output  
| product_id | total_sales |  
|------------|-------------|  
| 104        | 1000        |  
| 103        | 700         |  
| 105        | 600         |  
| 101        | 700         |  
| 106        | 400         |  

<br>  

## Hint  
> Use `SUM(amount)` to calculate total sales per product.  
> Group results by `product_id`.  
> Order by `total_sales DESC` and limit to top 5.  
