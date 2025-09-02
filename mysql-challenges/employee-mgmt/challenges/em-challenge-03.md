# Challenge 03: Find Employees Without Managers  

## Problem  
Find all employees who **don’t have any manager assigned**.  
Some employees may have a `manager_id` but if that ID does not exist in the `Managers` table, they should also be considered without managers.  

**Columns to display:**  
- Employee `id`, `name`  

</br>

## Sample Tables  

### Employees  
| id  | name     | manager_id |  
|-----|----------|------------|  
| 1   | Alice    | NULL       |  
| 2   | Bob      | 10         |  
| 3   | Charlie  | 2          |  
| 4   | Diana    | NULL       |  

### Managers  
| manager_id | manager_name |  
|------------|--------------|  
| 2          | John         |  
| 3          | Sarah        |  

</br>

## Example Output  
| id  | name   |  
|-----|--------|  
| 1   | Alice  |  
| 2   | Bob    |  
| 4   | Diana  |  

</br>

## Hint  
> Use a **LEFT JOIN** between Employees and Managers.  
> Filter where no manager record exists (`m.manager_id IS NULL`).