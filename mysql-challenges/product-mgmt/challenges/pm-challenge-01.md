# Challenge 02: Find Duplicate Emails in a Customer Table  

## Problem  
Find all emails that appear more than once in the `customers` table.  

**Columns to display:**  
- `email`  
- `count` (number of times the email appears)  

<br>  

## Sample Table  

### customers  
| id  | email              |  
|-----|--------------------|  
| 1   | alice@mail.com     |  
| 2   | bob@mail.com       |  
| 3   | alice@mail.com     |  
| 4   | charlie@mail.com   |  
| 5   | bob@mail.com       |  

<br>  

## Example Output  
| email            | count |  
|------------------|-------|  
| alice@mail.com   | 2     |  
| bob@mail.com     | 2     |  

<br>  

## Hint  
> Use `GROUP BY` on the `email` column.  
> Apply `HAVING COUNT(*) > 1` to filter only duplicates.
