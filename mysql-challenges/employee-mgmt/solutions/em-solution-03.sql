/*
Solution 03: Employees Without Managers

Explanation:
1. FROM Employees e → Start with the Employees table
2. LEFT JOIN Managers m → Bring in manager details if available
3. ON e.manager_id = m.manager_id → Match employees with their manager
4. WHERE m.manager_id IS NULL → Keep only employees who don't have a valid manager
*/

SELECT
    e.employee_id,
    e.first_name,
    e.last_name
FROM Employees e
LEFT JOIN Managers m
    ON e.manager_id = m.manager_id
WHERE m.manager_id IS NULL;
