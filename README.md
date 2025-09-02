# MySQL Interview Prep 📊

![GitHub stars](https://img.shields.io/github/stars/eleven-dev-cafe/mysql-interview-prep?style=social)
![GitHub forks](https://img.shields.io/github/forks/eleven-dev-cafe/mysql-interview-prep?style=social)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)(CONTRIBUTING.md)
[![Made with MySQL](https://img.shields.io/badge/Made%20with-MySQL-blue.svg)](https://www.mysql.com/)

A structured collection of **SQL challenges and solutions** to help you practice and prepare for **MySQL interview questions**.  
Includes schema setup, sample data, challenges, solutions, and detailed documentation.

</br>

## 📖 Overview

This repository is designed to help developers **practice SQL queries for interviews** and strengthen their **MySQL fundamentals**.  
It contains:  

- ✅ Real-world SQL challenges  
- ✅ Step-by-step solutions  
- ✅ Setup scripts (schema + sample data)  
- ✅ Interview tips & tricks  

Perfect for developers preparing for **Data Analyst, Backend, or Full-Stack interviews**.

</br>

## ⚡Quick Start

Follow these steps to set up the database and practice queries:
</br>

### 1️⃣ Clone the Repository
```bash
git clone https://github.com\eleven-dev-cafe/mysql-interview-prep.git
cd mysql-interview-prep
```

### 2️⃣ Setup the Database
Run these commands in your terminal (**outside** MySQL client):

**For CMD (Windows):**
```cmd
mysql -u root -p -e "CREATE DATABASE interview_prep;"
mysql -u root -p interview_prep < setup\schema.sql
mysql -u root -p interview_prep < setup\sample-data.sql
```

**For PowerShell:**
```cmd
mysql -u root -p -e "CREATE DATABASE interview_prep;"
Get-Content .\setup\schema.sql | mysql -u root -p interview_prep
Get-Content .\setup\sample-data.sql | mysql -u root -p interview_prep
```

**From MySQL Client:**
```cmd
CREATE DATABASE interview_prep;
USE interview_prep;
SOURCE setup/schema.sql;
SOURCE setup/sample-data.sql;
```

### 3️⃣ Load Schema & Data
```bash
mysql -u root -p interview_prep < setup\schema.sql
mysql -u root -p interview_prep < setup\sample-data.sql
```

### 4️⃣ Run a Challenge Query (Top 5 Products)
```bash
mysql -u root -p interview_prep < challanges\01-find-duplicates.sql
```

### 5️⃣ Expected Output (Example)
