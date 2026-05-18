-- Day 17: Deleting Student Records

USE amrita_college;

-- Check record before deletion
SELECT *
FROM students
WHERE roll_no = 301;

-- Delete incorrect record
DELETE FROM students
WHERE roll_no = 301;

-- Verify deletion
SELECT *
FROM students
WHERE roll_no = 301;

-- View updated students table
SELECT * FROM students;