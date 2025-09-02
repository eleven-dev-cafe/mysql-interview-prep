# Challenge 04: Get the Top 3 Highest Earning Employees from Each Department  

## Problem  
Find the top 3 employees with the highest salaries **in each department**.  

**Columns to display:**  
- `id`  
- `name`  
- `salary`  
- `department_id`  

</br>

## Sample Table  

### Employees  
| id  | name     | salary | department_id |  
|-----|----------|--------|---------------|  
| 1   | Alice    | 9000   | 1             |  
| 2   | Bob      | 7000   | 1             |  
| 3   | Charlie  | 8000   | 1             |  
| 4   | Diana    | 7500   | 1             |  
| 5   | Eva      | 6000   | 2             |  
| 6   | Frank    | 8500   | 2             |  
| 7   | Grace    | 6200   | 2             |  
| 8   | Henry    | 4000   | 2             |  

</br>

## Example Output  
| id  | name     | salary | department_id |  
|-----|----------|--------|---------------|  
| 1   | Alice    | 9000   | 1             |  
| 3   | Charlie  | 8000   | 1             |  
| 4   | Diana    | 7500   | 1             |  
| 6   | Frank    | 8500   | 2             |  
| 7   | Grace    | 6200   | 2             |  
| 5   | Eva      | 6000   | 2             |  

</br>

## Hint  
> Use a **window function (RANK or ROW_NUMBER)** to assign rankings within each department.  
> Partition results by `department_id` and order by `salary DESC`.  
> Finally, filter to keep only employees where rank ≤ 3.  
