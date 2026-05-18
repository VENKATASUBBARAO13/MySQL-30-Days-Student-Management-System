-- Day 8: Calculating Average Marks

USE amrita_college;

-- Calculate average marks of all students
SELECT AVG(marks) AS average_marks
FROM students;

-- Show all students with marks
SELECT name, marks
FROM students;

-- Show students whose marks are above 70
SELECT name, marks
FROM students
WHERE marks > 70;