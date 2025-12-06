create database SUBQUERY;
use SUBQUERY;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    salary INT,
    created_at DATETIME,
    updated_at DATETIME
);

CREATE TABLE employee_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    old_salary INT,
    new_salary INT,
    action VARCHAR(255),
    timestamp DATETIME
);
CREATE TABLE archived_employees (
    id INT,
    name VARCHAR(100),
    salary INT,
    deleted_at DATETIME
);
CREATE TABLE stats (
    emp_count INT
);
INSERT INTO stats(emp_count) VALUES (0);

INSERT INTO employees(name, salary, created_at)
VALUES
('Priya', 50000, NOW()),
('Arjun', 60000, NOW()),
('Meena', 45000, NOW()),
('Vikram', 70000, NOW()),
('Sita', 55000, NOW()),
('Rahul', 40000, NOW());

SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 10;

SELECT department
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

SELECT job_title
FROM employees
GROUP BY job_title
HAVING MAX(salary) > 80000;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 500000;

SELECT * FROM employees;

SELECT employee_id, employee_name, salary FROM employees;

SELECT employee_name AS Name, salary AS MonthlySalary
FROM employees;

SELECT * FROM employees
WHERE salary > 55000;

SELECT * FROM employees
WHERE department = 'IT';

SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 60000;

SELECT *
FROM employees
WHERE employee_name LIKE 'A%';

SELECT * FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
ORDER BY department ASC, salary DESC;

SELECT * FROM employees
LIMIT 10;

SELECT *
FROM employees
LIMIT 10 OFFSET 10;

SELECT DISTINCT department
FROM employees;
SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

SELECT department, job_title, COUNT(*) AS count_emp
FROM employees
GROUP BY department, job_title;

SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

SELECT department
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT department
FROM employees
GROUP BY department
HAVING SUM(salary) > 500000;

SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 5
   AND AVG(salary) > 60000;

SELECT department
FROM employees
GROUP BY department
HAVING MAX(salary) > 90000;

SELECT employee_name, department, salary
FROM employees
WHERE salary > 50000
GROUP BY employee_name, department, salary
HAVING salary > 50000
ORDER BY salary DESC
LIMIT 10;

SELECT department, AVG(salary) AS avg_sal
FROM employees
GROUP BY department
ORDER BY avg_sal DESC;

SELECT department, SUM(salary) AS total_sal
FROM employees
WHERE department <> 'HR'
GROUP BY department
HAVING SUM(salary) > 300000;

SELECT DISTINCT department
FROM employees
WHERE salary > 60000;

SELECT department,
       COUNT(*) AS total_emp,
       AVG(salary) AS avg_sal,
       MAX(salary) AS max_sal,
       MIN(salary) AS min_sal
FROM employees
GROUP BY department;

SELECT *
FROM employees
WHERE salary > 50000
  AND department IN (
        SELECT department
        FROM employees
        GROUP BY department
        HAVING AVG(salary) > 60000
  );

SELECT department,
       COUNT(*) AS total_employees,
       AVG(salary) AS avg_salary,
       SUM(salary) AS total_salary
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) > 3
ORDER BY total_salary DESC;




