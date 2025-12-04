create database Aggregation_emp;
use Aggregation_emp;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    join_date DATE NOT NULL
);

INSERT INTO employees (employee_name, department, city, salary, join_date)
VALUES
('Rohit Sharma', 'HR', 'Mumbai', 45000, '2025-01-02'),
('Sneha Pillai', 'IT', 'Pune', 65000, '2025-01-10'),
('Arjun Patel', 'Finance', 'Delhi', 52000, '2024-12-20'),
('Meera Nair', 'IT', 'Pune', 70000, '2024-12-25'),
('Karan Singh', 'HR', 'Mumbai', 48000, '2025-01-05'),
('Divya Suresh', 'Finance', 'Chennai', 82000, '2025-01-15'),
('Vikram Rao', 'Marketing', 'Bangalore', 40000, '2024-11-28'),
('Pooja Mehta', 'Marketing', 'Bangalore', 75000, '2025-01-12'),
('Nikhil Verma', 'IT', 'Hyderabad', 90000, '2025-01-18'),
('Aisha Khan', 'HR', 'Delhi', 55000, '2024-12-10'),
('Samuel Roy', 'Finance', 'Chennai', 60000, '2025-01-20'),
('Lakshmi Das', 'IT', 'Mumbai', 72000, '2024-12-30');

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT *
FROM employees
WHERE join_date >= CURDATE() - INTERVAL 30 DAY;

SELECT UPPER(employee_name) AS name_upper
FROM employees;

SELECT city, COUNT(*) AS total_employees
FROM employees
GROUP BY city;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT *
FROM employees
WHERE LENGTH(employee_name) > 5;

SELECT employee_name,
       DATEDIFF(CURDATE(), join_date) AS days_worked
FROM employees;

SELECT REPLACE(employee_name, 'a', '@') AS modified_name
FROM employees;

SELECT employee_name,
       YEAR(join_date) AS join_year,
       MONTH(join_date) AS join_month
FROM employees;

SELECT city, MAX(salary) AS highest_salary
FROM employees
GROUP BY city;






