-- Day 4: Retrieving and Filtering Data

USE amrita_college;

-- Retrieve all students
SELECT * FROM students;

-- Retrieve only 4th year students
SELECT *
FROM students
WHERE year_of_study = 4;