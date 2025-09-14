## Run sql using/in cmd(any terminal):

### 1️⃣ Run SQL from Command Line with Password
```bash
mysql -u username -pYourPassword database_name -e "SQL_QUERY;"
```


### 2️⃣ Run SQL Using Interactive Password Prompt (Recommended)
```bash
mysql -u root -p interview_prep -e "SELECT * FROM employees;"
```  

### 3️⃣ Using a Password Session / Temporary Environment Variable
```bash
export MYSQL_PWD='MySecretPassword'
mysql -u root interview_prep -e "SELECT * FROM employees;"
```

### 4️⃣ Using MySQL Profile / Option File
You can store credentials in a config file (my.cnf on Linux/macOS or my.ini on Windows) under a profile

Example C:\Users\YourUser\my.ini (Windows)
```ini
[client]
user=root
password=MySecretPassword
host=localhost
database=interview_prep
```
Run MySQL without typing user/password: only `mysql`

### Security risk with each method

| Method                       | User     | Password | Security |
| ---------------------------- | -------- | -------- | -------- |
| Command line `-u -pPassword` | Yes      | Yes      | Low      |
| Temp env varible             | yes      | Yes      | Low      |
| Command line `-u -p` prompt  | Yes      | Yes      | High     |
| Profile file (user+pass)     | Optional | Yes      | High     |
