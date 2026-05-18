-- Day 2: Create Students Table

USE amrita_college;

CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    joining_date DATE,
    year_of_study INT,
    marks INT
);