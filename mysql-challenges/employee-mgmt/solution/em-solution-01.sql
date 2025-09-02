/*
Solution 01: Employees with Department Name

Explanation:
1. FROM employees e → Use employees table alias 'e'
2. INNER JOIN departments d → Join departments table 'd' using department_id
3. SELECT → Pick employee_id, first_name, last_name, department_name
4. ORDER BY d.department_name → Sort alphabetically by department
*/

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
ORDER BY d.department_name;
