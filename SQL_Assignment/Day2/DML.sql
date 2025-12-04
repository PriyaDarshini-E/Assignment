CREATE DATABASE movie;
USE movie;

CREATE DATABASE construction;
USE construction;

CREATE TABLE casting (
    cast_id INT PRIMARY KEY AUTO_INCREMENT,
    actor_name VARCHAR(100) NOT NULL,
    movie_name VARCHAR(100) NOT NULL,
    role_name VARCHAR(100),
    payment DECIMAL(10,2)
);

INSERT INTO casting (actor_name, movie_name, role_name, payment)
VALUES
('Shah Rukh Khan', 'Pathaan', 'Agent Pathaan', 50000000.00),
('Deepika Padukone', 'Pathaan', 'Rubai', 20000000.00),
('Prabhas', 'Salaar', 'Deva', 45000000.00),
('Yash', 'KGF Chapter 2', 'Rocky Bhai', 60000000.00),
('Allu Arjun', 'Pushpa', 'Pushpa Raj', 30000000.00);

CREATE TABLE equipment (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT,
    equipment_name VARCHAR(100) NOT NULL,
    equipment_type VARCHAR(50),
    quantity INT,
    price_per_day DECIMAL(10,2)
);

INSERT INTO equipment (equipment_name, equipment_type, quantity, price_per_day)
VALUES
('RED Komodo 6K Camera', 'Camera', 3, 15000.00),
('Boom Microphone', 'Audio', 10, 2000.00),
('LED Studio Light', 'Lighting', 15, 1000.00),
('DJI Drone 4K', 'Drone', 2, 25000.00),
('Tripod Stand', 'Support', 20, 500.00);

CREATE TABLE salary_maintenance (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    monthly_salary DECIMAL(10,2),
    payment_date DATE,
    status VARCHAR(20) DEFAULT 'Paid'
);

INSERT INTO salary_maintenance 
(employee_name, role, monthly_salary, payment_date, status)
VALUES
('Rahul Verma', 'Camera Operator', 45000.00, '2025-01-01', 'Paid'),
('Sneha Pillai', 'Light Technician', 35000.00, '2025-01-01', 'Paid'),
('Arjun Kumar', 'Makeup Artist', 40000.00, '2025-01-01', 'Pending'),
('Meera Joshi', 'Assistant Director', 60000.00, '2025-01-01', 'Paid'),
('Karan Singh', 'Sound Engineer', 50000.00, '2025-01-01', 'Paid');

CREATE TABLE staff_attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    attendance_date DATE,
    status VARCHAR(20)   -- Present / Absent / Leave
);
SHOW TABLES;

INSERT INTO staff_attendance 
(staff_name, role, attendance_date, status)
VALUES
('Rahul Verma', 'Camera Operator', '2025-01-02', 'Present'),
('Sneha Pillai', 'Light Technician', '2025-01-02', 'Absent'),
('Arjun Kumar', 'Makeup Artist', '2025-01-02', 'Present'),
('Meera Joshi', 'Assistant Director', '2025-01-02', 'Leave'),
('Karan Singh', 'Sound Engineer', '2025-01-02', 'Present');

CREATE TABLE technician (
    tech_id INT PRIMARY KEY AUTO_INCREMENT,
    tech_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(50),   -- example: Camera, Lighting, Sound
    experience_years INT,
    contact_number VARCHAR(15)
);

INSERT INTO technician 
(tech_name, specialization, experience_years, contact_number)
VALUES
('Rohit Sharma', 'Camera', 5, '9876543210'),
('Ayesha Khan', 'Lighting', 3, '9123456780'),
('Vijay Rao', 'Sound', 7, '9988776655'),
('Priya Menon', 'Editing', 4, '9001122334'),
('Sandeep Nair', 'VFX', 6, '8899776655');


USE construction;
CREATE TABLE materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(100) NOT NULL,
    quantity INT,
    unit VARCHAR(20),
    price_per_unit DECIMAL(10,2)
);

INSERT INTO materials (material_name, quantity, unit, price_per_unit)
VALUES
('Cement', 200, 'Bags', 350.00),
('Sand', 500, 'KG', 5.00),
('Bricks', 1000, 'Pieces', 8.00),
('Steel Rods', 150, 'KG', 65.00),
('Concrete Blocks', 300, 'Pieces', 40.00);

CREATE TABLE workers (
    worker_id INT PRIMARY KEY AUTO_INCREMENT,
    worker_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    contact VARCHAR(15),
    experience_years INT
);
INSERT INTO workers (worker_name, role, contact, experience_years)
VALUES
('Ramesh Kumar', 'Mason', '9876543210', 5),
('Suresh Yadav', 'Electrician', '9988776655', 3),
('Mahesh Gupta', 'Carpenter', '9123456780', 6),
('Amit Mishra', 'Welder', '9001122334', 4),
('Shivraj Singh', 'Painter', '8899776655', 2);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    worker_name VARCHAR(100) NOT NULL,
    date DATE,
    status VARCHAR(20)   -- Present, Absent, Leave
);
INSERT INTO attendance (worker_name, date, status)
VALUES
('Ramesh Kumar', '2025-01-05', 'Present'),
('Suresh Yadav', '2025-01-05', 'Absent'),
('Mahesh Gupta', '2025-01-05', 'Present'),
('Amit Mishra', '2025-01-05', 'Leave'),
('Shivraj Singh', '2025-01-05', 'Present');

CREATE TABLE stock (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    available_quantity INT,
    location VARCHAR(50)
);
INSERT INTO stock (item_name, available_quantity, location)
VALUES
('Cement Bags', 120, 'Warehouse A'),
('Steel Rods', 80, 'Warehouse B'),
('Paint Buckets', 50, 'Warehouse C'),
('Bricks', 600, 'Yard 1'),
('Sand', 300, 'Yard 2');

CREATE TABLE salary (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    worker_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    monthly_salary DECIMAL(10,2),
    payment_date DATE,
    status VARCHAR(20) DEFAULT 'Paid'
);
INSERT INTO salary (worker_name, role, monthly_salary, payment_date, status)
VALUES
('Ramesh Kumar', 'Mason', 25000.00, '2025-01-01', 'Paid'),
('Suresh Yadav', 'Electrician', 28000.00, '2025-01-01', 'Paid'),
('Mahesh Gupta', 'Carpenter', 30000.00, '2025-01-01', 'Pending'),
('Amit Mishra', 'Welder', 32000.00, '2025-01-01', 'Paid'),
('Shivraj Singh', 'Painter', 22000.00, '2025-01-01', 'Paid');



select * from salary;

