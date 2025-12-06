create database Triggers;
use Triggers;

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
    action VARCHAR(255),
    old_salary INT,
    new_salary INT,
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
INSERT INTO stats (emp_count) VALUES (0);
INSERT INTO employees (name, salary, created_at, updated_at)
VALUES
('PRIYA', 50000, NOW(), NOW()),
('ARJUN', 60000, NOW(), NOW()),
('MEENA', 45000, NOW(), NOW()),
('VIKRAM', 70000, NOW(), NOW()),
('SITA', 55000, NOW(), NOW()),
('RAHUL', 40000, NOW(), NOW());

CREATE TRIGGER log_new_employee
AFTER INSERT ON employees
FOR EACH ROW
INSERT INTO employee_logs(employee_id, action, timestamp)
VALUES (NEW.id, 'NEW EMPLOYEE ADDED', NOW());

CREATE TRIGGER auto_timestamp
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.created_at = NOW();

CREATE TRIGGER log_salary_changes
AFTER UPDATE ON employees
FOR EACH ROW
INSERT INTO employee_logs(employee_id, old_salary, new_salary, action, timestamp)
VALUES (NEW.id, OLD.salary, NEW.salary, 'SALARY UPDATED', NOW());


