# Challenge 02: Find the Second Highest Salary  

## Problem  
Retrieve the **second highest salary** from the `Employees` table.  

**Columns to display:**  
- `second_highest_salary`  

---

## Sample Table  

### Employees  
| id  | name     | salary |  
|-----|----------|--------|  
| 1   | Alice    | 5000   |  
| 2   | Bob      | 7000   |  
| 3   | Charlie  | 6000   |  
| 4   | Diana    | 8000   |  

---

## Example Output  
| second_highest_salary |  
|-----------------------|  
| 7000                  |  

---

## Hint  
> Use a **subquery** to first find the maximum salary.  
> Then, find the maximum salary that is **less than** this maximum. 