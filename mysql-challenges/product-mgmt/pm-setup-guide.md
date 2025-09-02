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
cd mysql-interview-prep\mysql-challenges\product-mgmt
```

### 2️⃣ Setup the Database
Run these commands in your terminal (**outside** MySQL client):

**For CMD (Windows):**
```cmd
mysql -u root -p -e "CREATE DATABASE product_db;"
mysql -u root -p product_db < setup\pm-schema.sql
mysql -u root -p product_db < setup\pm-sample-data.sql
```

**For PowerShell:**
```cmd
mysql -u root -p -e "CREATE DATABASE product-db;"
Get-Content .\setup\pm-schema.sql | mysql -u root -p product-dbp
Get-Content .\setup\pm-sample-data.sql | mysql -u root -p product-db
```

**From MySQL Client:**
```cmd
CREATE DATABASE product-db;
USE product-db;
SOURCE setup/pm-schema.sql;
SOURCE setup/pm-sample-data.sql;
```

### 3️⃣Run All Challenge Query(Practice out)
**Challenge 01:** `Duplicate Emails`
```bash
mysql -u root -p product_db < solutions\pm-solution-01.sql
```

**Challenge 02:** `Customers With More Than 3 Orders`
```bash
mysql -u root -p product_db < solutions\pm-solution-02.sql
```

**Challenge 03:** `Customers With No Orders`
```bash
mysql -u root -p product_db < solutions\pm-solution-03.sql
```

**Challenge 04:** `Top 5 Highest Selling Products`
```bash
mysql -u root -p product_db < solutions\pm-solution-04.sql
```

**Challenge 05:** `Total Revenue by Region and Product`
```bash
mysql -u root -p product_db < solutions\pm-solution-05.sql
```
