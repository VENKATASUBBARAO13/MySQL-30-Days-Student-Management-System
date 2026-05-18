-- Day 19: Connecting Students and Departments using Foreign Key

USE amrita_college;

-- Add department ID column to students table
ALTER TABLE students
ADD dept_id INT;

-- Add foreign key relationship
ALTER TABLE students
ADD CONSTRAINT fk_department
FOREIGN KEY (dept_id)
REFERENCES departments(dept_id);

-- Disable safe updates temporarily if MySQL Workbench blocks update
SET SQL_SAFE_UPDATES = 0;

-- Assign Computer Science department to 4th year students
UPDATE students
SET dept_id = 1
WHERE year_of_study = 4;

-- Assign Electronics department to 3rd year students
UPDATE students
SET dept_id = 2
WHERE year_of_study = 3;

-- Verify updated student table
SELECT roll_no, name, year_of_study, dept_id
FROM students;