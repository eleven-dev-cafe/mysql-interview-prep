/*
Solution 04: Top 3 Earners per Department

Explanation:
1. SELECT *, RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) → Assign rank in each department
2. Use a subquery → So we can filter by rank
3. WHERE rnk <= 3 → Keep only the top 3 employees per department
*/

SELECT id, name, salary, department_id
FROM (
  SELECT *, 
         RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
  FROM Employees
) AS ranked
WHERE rnk <= 3;
