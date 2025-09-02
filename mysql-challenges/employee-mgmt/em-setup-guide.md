# Practice with realtime databases

## ⚡Quick Start
`Note`
- Make sure you installed and configured MySQL on your local pc.
- For Installation, configuration guidance reach me.

Follow these steps to run queries on realtime local database:
</br>

### 1️⃣ Clone the Repository
```bash
git clone https://github.com\eleven-dev-cafe/mysql-interview-prep.git
cd mysql-interview-prep\mysql-challenges\employee-mgmt
```

### 2️⃣ Setup the Database
Run these commands in your terminal (**outside** MySQL client):

**For CMD (Windows):**
```cmd
mysql -u root -p -e "CREATE DATABASE employee-db;"
mysql -u root -p employee_db < setup\em-schema.sql
mysql -u root -p employee_db < setup\em-sample-data.sql
```

**For PowerShell:**
```cmd
mysql -u root -p -e "CREATE DATABASE employee-db;"
Get-Content .\setup\schema.sql | mysql -u root -p employee-dbp
Get-Content .\setup\sample-data.sql | mysql -u root -p employee-db
```

**From MySQL Client:**
```cmd
CREATE DATABASE employee-db;
USE employee-db;
SOURCE setup/schema.sql;
SOURCE setup/sample-data.sql;
```

### 3️⃣Run All Challenge Query(Practice out)
**Challenge 01:** `Find Employees in Each Department`
```bash
mysql -u root -p employee-db < solution\em-solution-01.sql
```

**Challenge 02:** `Second Highest Salary`
```bash
mysql -u root -p employee-db < solution\em-solution-02.sql
```

**Challenge 03:** `Employees Without Managers`
```bash
mysql -u root -p employee-db < solution\em-solution-03.sql
```

**Challenge 04:** `Top 3 Earners per Department`
```bash
mysql -u root -p employee-db < solutions\em-solution-04.sql
```

**Challenge 05:** `Male and Female Count per Department`
```bash
mysql -u root -p employee-db < solutions\em-solution-05.sql
```
