-- Insert into users
INSERT INTO users (name, email, phone, total_spent, created_at) VALUES
('Alex', 'alex@mail.com', '1234567890', 1200.50, '2024-07-10'),
('Ben', 'ben@mail.com', NULL, 600.00, '2024-07-12'),
('Clara', 'clara@mail.com', '9876543210', 400.75, '2024-07-15'),
('Alex', 'alex@mail.com', '1234567890', 800.00, '2024-07-18'); -- duplicate email

-- Insert into products
INSERT INTO products (name, price, region) VALUES
('Laptop', 800.00, 'North'),
('Phone', 500.00, 'South'),
('Tablet', 300.00, 'East'),
('Monitor', 200.00, 'West');

-- Insert into orders
INSERT INTO orders (customer_id, amount, order_date) VALUES
(1, 200.00, '2024-08-01'),
(1, 500.00, '2024-08-03'),
(2, 100.00, '2024-08-02'),
(3, 150.00, '2024-08-05');

-- Insert into sales
INSERT INTO sales (product_id, amount, date, region) VALUES
(1, 800.00, '2024-08-01', 'North'),
(2, 500.00, '2024-08-02', 'South'),
(3, 300.00, '2024-08-03', 'East'),
(4, 200.00, '2024-08-04', 'West'),
(1, 400.00, '2024-08-05', 'North'),
(2, 250.00, '2024-08-06', 'South');