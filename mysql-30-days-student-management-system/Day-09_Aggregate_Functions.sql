-- Day 9: Database Statistics using Aggregate Functions

USE amrita_college;

-- Count total students
SELECT COUNT(*) AS total_students
FROM students;

-- Calculate average marks
SELECT AVG(marks) AS average_marks
FROM students;

-- Find highest marks
SELECT MAX(marks) AS highest_marks
FROM students;

-- Find lowest marks
SELECT MIN(marks) AS lowest_marks
FROM students;