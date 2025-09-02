/*
Solution 02: Duplicate Emails

Explanation:
1. SELECT email, COUNT(*) → Count how many times each email appears
2. GROUP BY email → Group rows by unique email
3. HAVING COUNT(*) > 1 → Keep only emails that occur more than once
*/

SELECT email, COUNT(*) AS count
FROM Customers
GROUP BY email
HAVING COUNT(*) > 1;
