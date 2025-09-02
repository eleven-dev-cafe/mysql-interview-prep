# 📘 SQL Challenges – Practice with Sample Data  

This repository contains **SQL Challenges** with ready-to-use **sample datasets** for practicing queries.  
It includes two main domains:  

- 🧑‍💼 **Employee Management**  
- 🛒 **Product Management**  

Each challenge includes:  
- Problem Statement  
- Sample Tables  
- Example Output  
- Hint  
- Solution (with explanation)  

<br>  

## 📂 Datasets  

### 1. Employee Management (`employee_mgmt_sample.sql`)  
Contains schema and sample data for employees, departments, and managers.  

**Tables:**  
- `departments(department_id, department_name)`  
- `employees(employee_id, first_name, last_name, email, gender, salary, department_id, manager_id)`  
- `managers(manager_id, name, department_id)`  

✅ Supports queries like:  
- Employees in each department  
- Second highest salary  
- Employees without managers  
- Gender distribution per department  
- Top 3 earners per department  

<br>  

### 2. Product Management (`product_mgmt_sample.sql`)  
Contains schema and sample data for customers, orders, products, sales, and order_items.  

**Tables:**  
- `customers(customer_id, name, email, phone, total_spent, created_at)`  
- `orders(order_id, customer_id, amount, order_date)`  
- `products(product_id, name, price, region)`  
- `sales(sale_id, product_id, amount, date, region)`  
- `order_items(order_item_id, order_id, product_id, quantity, price)`  

✅ Supports queries like:  
- Duplicate emails  
- Customers with more than 3 orders  
- Customers with no orders  
- Top 5 highest selling products  
- Total revenue by region and product  

<br>  

## 🚀 How to Use  
`Prequation`
- Make sure you installed and configured MySQL on your local pc.
- For Installation, configuration guidance Contact me.
- You can also run real queries in **MySQL Clent**

### 1️⃣ Clone the Repository
```bash
git clone https://github.com\eleven-dev-cafe/mysql-interview-prep.git
cd mysql-interview-prep\mysql-challenges\employee-mgmt
```

### 2️⃣ Setup the Database
Run these commands in your terminal (**outside** MySQL client):

**For CMD (Windows):**
```cmd
mysql -u root -p -e "CREATE DATABASE employee_db;"
mysql -u root -p employee_db < setup\em-schema.sql
mysql -u root -p employee_db < setup\em-sample-data.sql
```

**For PowerShell:**
```cmd
mysql -u root -p -e "CREATE DATABASE employee-db;"
Get-Content .\setup\schema.sql | mysql -u root -p employee_db
Get-Content .\setup\sample-data.sql | mysql -u root -p employee_db
```

**From MySQL Client:**
```cmd
CREATE DATABASE employee_db;
USE employee_db;
SOURCE setup/schema.sql;
SOURCE setup/sample-data.sql;
```

### 3️⃣Run a Challenge Query (Top 5 Products)
```bash
mysql -u root -p employee_db < challanges\em-challenge-01.sql
```
`Note:` 
> Run more queries from challenges in your cammand line Interface.

<br>

## 📑 Challenges

Challenges are documented in Markdown (.md) files with the following structure:
- Challenge 01: Employees with Department Name
- Challenge 02: Find Duplicate Emails
- Challenge 03: Employees Without Managers
- Challenge 04: Top 3 Earners Per Department
- Challenge 05: Total Revenue by Region & Product

<br>

## 📝 Notes

- Datasets are designed to match queries exactly, so they should run without modification.
- Use JOIN, GROUP BY, HAVING, and Window Functions for advanced queries.
- Each solution includes a step-by-step explanation as SQL comments.

<br>

## 📌 Next Steps

- Add more advanced queries (CTEs, recursive queries)
- Extend Product Management dataset with categories & discounts
- Extend Employee dataset with projects & performance reviews

<br>

**🔹 With these datasets, you can practice and master SQL queries with realistic examples.**