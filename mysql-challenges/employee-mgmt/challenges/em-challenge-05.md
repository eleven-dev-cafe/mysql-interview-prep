# Challenge 05: Get the Count of Male and Female Employees per Department  

## Problem  
Find the number of male and female employees in each department.  

**Columns to display:**  
- `department`  
- `male_count`  
- `female_count`  

<br>  

## Sample Table  

### employees  
| id  | name     | gender | department |  
|-----|----------|--------|------------|  
| 1   | Alice    | Female | HR         |  
| 2   | Bob      | Male   | HR         |  
| 3   | Charlie  | Male   | IT         |  
| 4   | Diana    | Female | IT         |  
| 5   | Eva      | Female | IT         |  

<br>  

## Example Output  
| department | male_count | female_count |  
|------------|------------|--------------|  
| HR         | 1          | 1            |  
| IT         | 1          | 2            |  

<br>  

## Hint  
> Use `COUNT(CASE WHEN ...)` to count conditionally based on gender.  
> Group results by department.  
