-- ==========================
-- Sample Data
-- ==========================

-- Departments
INSERT INTO departments (department_name) VALUES
('Engineering'),
('HR'),
('Sales'),
('Finance');

-- Managers
INSERT INTO managers (name, department_id) VALUES
('Michael Scott', 3),   -- Sales
('Sarah Connor', 1),    -- Engineering
('Jane Doe', 2);        -- HR

-- Employees
INSERT INTO employees (first_name, last_name, email, gender, salary, department_id, manager_id) VALUES
('Alice', 'Johnson', 'alice@mail.com', 'Female', 75000, 1, 2), -- Engg, Sarah is manager
('Bob', 'Smith', 'bob@mail.com', 'Male', 50000, 2, 3),        -- HR, Jane is manager
('Charlie', 'Brown', 'charlie@mail.com', 'Male', 72000, 1, 2), -- Engg, Sarah
('Diana', 'Prince', 'diana@mail.com', 'Female', 68000, 3, 1), -- Sales, Michael
('Evan', 'Lee', 'evan@mail.com', 'Male', 45000, 2, 3),        -- HR, Jane
('Fiona', 'Davis', 'fiona@mail.com', 'Female', 90000, 4, NULL), -- Finance, no manager
('George', 'Miller', 'george@mail.com', 'Male', 88000, 1, 2), -- Engg, Sarah
('Hannah', 'Taylor', 'hannah@mail.com', 'Female', 64000, 3, 1); -- Sales, Michael
