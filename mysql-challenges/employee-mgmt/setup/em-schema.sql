-- ==========================
-- Employee Management Schema
-- ==========================

-- Drop tables if already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS managers;

-- Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

-- Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    department_id INT,
    manager_id INT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Managers Table (separate table for challenge 03 scenario)
CREATE TABLE managers (
    manager_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
