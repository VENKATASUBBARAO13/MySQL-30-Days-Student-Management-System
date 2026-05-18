-- Day 6: Sorting Students by Marks

USE amrita_college;

-- Sort students from highest marks to lowest marks
SELECT *
FROM students
ORDER BY marks DESC;

-- Sort students from lowest marks to highest marks
SELECT *
FROM students
ORDER BY marks ASC;

-- Show only name and marks sorted by marks
SELECT name, marks
FROM students
ORDER BY marks DESC;