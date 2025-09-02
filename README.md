# MySQL Interview Prep 📊

![GitHub stars](https://img.shields.io/github/stars/eleven-dev-cafe/mysql-interview-prep?style=social)
![GitHub forks](https://img.shields.io/github/forks/eleven-dev-cafe/mysql-interview-prep?style=social)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)

> Comprehensive MySQL interview prep with queries, challenges, and solutions.

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

### 2️⃣ Setup Database
```bash
CREATE DATABASE interview_prep;
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
