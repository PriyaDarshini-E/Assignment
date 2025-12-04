create database employees;
use employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

INSERT INTO employees (employee_name, department, city, salary)
VALUES
('Rohit Sharma', 'HR', 'Mumbai', 45000),
('Sneha Pillai', 'IT', 'Pune', 65000),
('Arjun Patel', 'Finance', 'Delhi', 52000),
('Meera Nair', 'IT', 'Pune', 70000),
('Karan Singh', 'HR', 'Mumbai', 48000);

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT city, COUNT(*) AS total_employees
FROM employees
GROUP BY city;

SELECT department, MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary_spent
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT city, COUNT(*) AS emp_count
FROM employees
GROUP BY city
HAVING COUNT(*) > 1;

SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department
HAVING MAX(salary) > 70000;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 150000;

SELECT department, AVG(salary) AS dept_avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > (SELECT AVG(salary) FROM employees);

SELECT city, AVG(salary) AS avg_salary
FROM employees
GROUP BY city
HAVING AVG(salary) > 60000;

SELECT department, COUNT(*) AS employees_above_50k
FROM employees
WHERE salary > 50000
GROUP BY department;

SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department
HAVING MIN(salary) > 40000;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;








