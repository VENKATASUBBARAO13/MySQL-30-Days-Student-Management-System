-- Day 16: Updating Student Records

USE amrita_college;

-- Update marks using primary key
UPDATE students
SET marks = 74
WHERE roll_no = 203;

-- Verify updated marks
SELECT *
FROM students
WHERE roll_no = 203;

-- Update phone number using primary key
UPDATE students
SET phone = '9888888888'
WHERE roll_no = 102;

-- Verify updated phone number
SELECT roll_no, name, phone
FROM students
WHERE roll_no = 102;