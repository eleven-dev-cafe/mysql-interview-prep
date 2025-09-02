/*
Solution 05: Male and Female Count per Department

Explanation:
1. SELECT department → Group results by department
2. COUNT(CASE WHEN gender = 'Male' THEN 1 END) → Count only male employees
3. COUNT(CASE WHEN gender = 'Female' THEN 1 END) → Count only female employees
4. GROUP BY department → Aggregate results per department
*/

SELECT 
  d.department_name,
  COUNT(CASE WHEN gender = 'Male' THEN 1 END) AS male_count,
  COUNT(CASE WHEN gender = 'Female' THEN 1 END) AS female_count
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

