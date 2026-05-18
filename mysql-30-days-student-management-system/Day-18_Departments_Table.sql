-- Day 18: Creating Departments Table

USE amrita_college;

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert department records
INSERT INTO departments VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical'),
(4, 'Civil');

-- View departments
SELECT * FROM departments;