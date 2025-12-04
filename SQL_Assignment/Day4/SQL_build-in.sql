create database BuiltIn;
use BuiltIn;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    salary DECIMAL(10,2) NOT NULL,
    join_date DATE NOT NULL
);

INSERT INTO employees (employee_name, email, department, city, salary, join_date)
VALUES 
('Rohit Sharma', 'rohit@gmail.com', 'HR', 'Mumbai', 45000, '2025-01-02'),
('Sneha Pillai', 'sneha@gmail.com', 'IT', 'Pune', 65000, '2025-01-10'),
('Arjun Patel', 'arjun@gmail.com', 'Finance', 'Delhi', 52000, '2025-01-15'),
('Meera Nair', 'meera@gmail.com', 'IT', 'Pune', 70000, '2024-12-25'),
('Karan Singh', 'karan@gmail.com', 'HR', 'Mumbai', 48000, '2025-01-05');

UPDATE employees
SET employee_name = UPPER(employee_name)
WHERE emp_id = 1;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT *
FROM employees
WHERE join_date >= CURDATE() - INTERVAL 30 DAY;

SELECT employee_name,
       salary,
       ROUND(salary, 2) AS rounded_salary
FROM employees;

SELECT *
FROM employees
WHERE LENGTH(employee_name) > 5;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

UPDATE employees
SET salary = salary * 1.10;

ALTER TABLE employees
ADD bonus INT;

SELECT employee_name,
       join_date,
       YEAR(join_date) AS join_year
FROM employees
ORDER BY join_date ASC;

