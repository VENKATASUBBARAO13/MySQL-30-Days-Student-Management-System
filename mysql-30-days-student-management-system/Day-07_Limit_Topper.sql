-- Day 7: Finding the Topper using LIMIT

USE amrita_college;

-- Find overall topper
SELECT *
FROM students
ORDER BY marks DESC
LIMIT 1;

-- Find top 3 students
SELECT *
FROM students
ORDER BY marks DESC
LIMIT 3;

-- Show topper name and marks only
SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 1;