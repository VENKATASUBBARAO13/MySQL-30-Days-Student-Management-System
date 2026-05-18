-- Day 20: Combining Tables using INNER JOIN

USE amrita_college;

-- Student details with department names
SELECT s.roll_no, s.name, s.year_of_study, d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id;

-- Final-year students with department names
SELECT s.name, s.year_of_study, d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id
WHERE s.year_of_study = 4;

-- Students with marks and departments sorted by marks
SELECT s.name, s.marks, d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id
ORDER BY s.marks DESC;