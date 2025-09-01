-- Create table for users
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    total_spent DECIMAL(10,2),
    created_at DATE
);

-- Create table for orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES users(user_id)
);

-- Create table for products
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10,2),
    region VARCHAR(50)
);

-- Create table for sales
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    amount DECIMAL(10,2),
    date DATE,
    region VARCHAR(50),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
