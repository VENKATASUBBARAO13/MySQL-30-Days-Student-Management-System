-- Day 11: Year-wise Toppers

USE amrita_college;

-- 4th year topper
SELECT *
FROM students
WHERE year_of_study = 4
ORDER BY marks DESC
LIMIT 1;

-- 3rd year topper
SELECT *
FROM students
WHERE year_of_study = 3
ORDER BY marks DESC
LIMIT 1;

-- 4th year topper name and marks only
SELECT name, marks
FROM students
WHERE year_of_study = 4
ORDER BY marks DESC
LIMIT 1;

-- 3rd year topper name and marks only
SELECT name, marks
FROM students
WHERE year_of_study = 3
ORDER BY marks DESC
LIMIT 1;