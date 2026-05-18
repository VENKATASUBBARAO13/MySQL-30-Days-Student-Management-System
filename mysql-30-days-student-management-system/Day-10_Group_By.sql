-- Day 10: Batch-wise Performance Analysis using GROUP BY

USE amrita_college;

-- Average marks by year
SELECT year_of_study, AVG(marks) AS average_marks
FROM students
GROUP BY year_of_study;

-- Count students by year
SELECT year_of_study, COUNT(*) AS total_students
FROM students
GROUP BY year_of_study;

-- Highest marks by year
SELECT year_of_study, MAX(marks) AS highest_marks
FROM students
GROUP BY year_of_study;

-- Lowest marks by year
SELECT year_of_study, MIN(marks) AS lowest_marks
FROM students
GROUP BY year_of_study;