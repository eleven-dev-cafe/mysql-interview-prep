### Challenge 01: Find Duplicate Emails

**Table: users**

| user_id | name   | email              |
|---------|--------|--------------------|
| 1       | Alex   | alex@mail.com      |
| 2       | Ben    | ben@mail.com       |
| 3       | Clara  | alex@mail.com      |

**SQL Query**
```sql
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
