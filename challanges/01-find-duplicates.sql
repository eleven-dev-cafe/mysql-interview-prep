-- Find duplicate emails in users table
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
