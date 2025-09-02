# Challenge 01: Find Employees in Each Department

## Problem
List all employees along with their department name.  

**Columns to display:**
- `employee_id`
- `first_name`
- `last_name`
- `department_name`

**Sort results by** `department_name`.

---

## Sample Tables

### departments
| department_id | department_name |
|---------------|----------------|
| 1             | Engineering    |
| 2             | HR             |
| 3             | Sales          |

### employees
| employee_id | first_name | last_name | department_id |
|-------------|------------|-----------|---------------|
| 101         | Alice      | Johnson   | 1             |
| 102         | Bob        | Smith     | 2             |
| 103         | Charlie    | Brown     | 1             |
| 104         | Diana      | Prince    | 3             |

---

## Example Output
| employee_id | first_name | last_name | department_name |
|-------------|------------|-----------|----------------|
| 101         | Alice      | Johnson   | Engineering    |
| 103         | Charlie    | Brown     | Engineering    |
| 102         | Bob        | Smith     | HR             |
| 104         | Diana      | Prince    | Sales          |

---

## Hint
> Use **JOIN** to combine employees and departments.  
> Remember to sort the results by department name.
