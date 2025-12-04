CREATE DATABASE schoolDB;
USE schoolDB;

CREATE TABLE datatype_example (
    id INT,                              
    big_number BIGINT,                   
    amount DECIMAL(10,2),                
    percentage FLOAT,                    
    code CHAR(5),                        
    fullname VARCHAR(100),               
    about TEXT,                          
    birth_date DATE,                     
    login_time TIME,                     
    created_at DATETIME,                 
    updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,   
    is_active BOOLEAN,                   
    file_data BLOB                       
);

CREATE TABLE constraints_example (
    student_id INT PRIMARY KEY AUTO_INCREMENT,   
    fullname VARCHAR(50) NOT NULL,               
    email VARCHAR(100) UNIQUE,                   
    age INT CHECK (age >= 18),                   
    course_id INT,                               
    registered_on DATE DEFAULT (CURRENT_DATE),
    is_active BOOLEAN DEFAULT TRUE,              

    -- FOREIGN KEY constraint
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

