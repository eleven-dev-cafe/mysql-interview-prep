/*
Solution 02: Second Highest Salary

Explanation:
1. SELECT MAX(salary) → Get the maximum salary from Employees
2. WHERE salary < (SELECT MAX(salary)) → Ensure we only look below the highest salary
3. Subquery finds the highest, outer query finds the maximum of the remaining values
*/

SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);
