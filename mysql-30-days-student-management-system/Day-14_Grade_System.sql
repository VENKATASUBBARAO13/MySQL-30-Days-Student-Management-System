-- Day 14: Student Grading System using CASE

USE amrita_college;

-- Generate grade sheet
SELECT roll_no, name, marks,
CASE
    WHEN marks >= 80 THEN 'A'
    WHEN marks >= 60 THEN 'B'
    WHEN marks >= 50 THEN 'C'
    WHEN marks >= 40 THEN 'D'
    ELSE 'F'
END AS grade
FROM students;

-- Grade sheet sorted by marks
SELECT roll_no, name, marks,
CASE
    WHEN marks >= 80 THEN 'A'
    WHEN marks >= 60 THEN 'B'
    WHEN marks >= 50 THEN 'C'
    WHEN marks >= 40 THEN 'D'
    ELSE 'F'
END AS grade
FROM students
ORDER BY marks DESC;

-- Show only A grade students
SELECT name, marks
FROM students
WHERE marks >= 80;

-- Show failed grade students
SELECT name, marks
FROM students
WHERE marks < 40;