create database joins;
use joins;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_phone VARCHAR(15)
);
INSERT INTO customers VALUES
(1, 'Priya', '9876543210'),
(2, 'Arun', '9123456780'),
(3, 'Meera', '9988776655'),
(4, 'Rahul', '9090909090'),
(5, 'Vishal', '8008008008');

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_price DECIMAL(10,2)
);
INSERT INTO products VALUES
(101, 'Laptop', 55000.00),
(102, 'Mobile', 25000.00),
(103, 'Headphones', 2000.00),
(104, 'Keyboard', 1200.00),
(105, 'Monitor', 9000.00);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO orders VALUES
(501, 1, 101, '2025-01-10'),
(502, 2, 102, '2025-01-11'),
(503, 1, 103, '2025-01-12'),
(504, 4, 101, '2025-01-13'),
(505, 3, 105, '2025-01-14');

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100)
);
INSERT INTO students VALUES
(1, 'Priya'),
(2, 'Arun'),
(3, 'Kavya'),
(4, 'Rohit'),
(5, 'Meena');

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);
INSERT INTO courses VALUES
(11, 'HTML'),
(12, 'CSS'),
(13, 'JavaScript'),
(14, 'SQL'),
(15, 'React');

CREATE TABLE student_courses (
    id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);INSERT INTO student_courses VALUES
(1, 1, 11),
(2, 1, 14),
(3, 2, 12),
(4, 3, 13),
(5, 4, 15);

SELECT 
    c.customer_name,
    p.product_name,
    o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;

SELECT 
    p.product_name,
    p.product_price,
    COUNT(o.order_id) AS total_orders
FROM products p
INNER JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name, p.product_price;

SELECT 
    c.customer_name,
    o.order_id,
    o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT 
    p.product_name,
    p.product_price,
    o.order_id
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;

SELECT 
    o.order_id,
    o.order_date,
    c.customer_name
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;

SELECT 
    o.order_id,
    o.order_date,
    p.product_name
FROM orders o
RIGHT JOIN products p ON o.product_id = p.product_id;



