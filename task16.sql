CREATE DATABASE task16;
USE task16; 
-- CUSTOMERS
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

-- PRODUCTS
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- ORDERS
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER ITEMS (many products per order)
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    item_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

--Insert Sample Data
Customers
INSERT INTO customers VALUES
(1, 'Ravi Kumar', 'ravi@email.com', '2023-01-10'),
(2, 'Anita Sharma', 'anita@email.com', '2023-03-05'),
(3, 'John Peter', 'john@email.com', '2024-01-01'),
(4, 'Meena Das', 'meena@email.com', '2022-11-15');

Products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 800),
(102, 'Phone', 'Electronics', 500),
(103, 'Headphones', 'Accessories', 80),
(104, 'Keyboard', 'Accessories', 50);

Orders
INSERT INTO orders VALUES
(1001, 1, '2024-01-10', 880),
(1002, 2, '2024-02-15', 500),
(1003, 1, '2024-03-12', 850),
(1004, 3, '2024-03-20', 80);

Order Items
INSERT INTO order_items VALUES
(1, 1001, 101, 1, 800),
(2, 1001, 103, 1, 80),
(3, 1002, 102, 1, 500),
(4, 1003, 101, 1, 800),
(5, 1003, 104, 1, 50),
(6, 1004, 103, 1, 80);

--BUSINESS ANALYTICS QUERIES
--Top-Selling Products
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

--Monthly Revenue Trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;


(MySQL alternative)

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

--Inactive Customers (no orders in last 6 months)
SELECT c.*
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING MAX(o.order_date) < CURRENT_DATE - INTERVAL '6 months'
   OR MAX(o.order_date) IS NULL;

--High-Value Customers (total spending)
SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.total_amount) > 1000
ORDER BY total_spent DESC;

--QUERY OPTIMIZATION
--Indexes (important for performance)
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_orders_date ON orders(order_date);
CREATE INDEX idx_orderitems_product ON order_items(product_id);