-- Day 21: Understanding LEFT JOIN

USE amrita_college;

-- Show all students with department names
SELECT s.roll_no, s.name, d.dept_name
FROM students s
LEFT JOIN departments d
ON s.dept_id = d.dept_id;

-- Show student marks with department names
SELECT s.name, s.marks, d.dept_name
FROM students s
LEFT JOIN departments d
ON s.dept_id = d.dept_id
ORDER BY s.marks DESC;

-- Find students without department
SELECT s.roll_no, s.name
FROM students s
LEFT JOIN departments d
ON s.dept_id = d.dept_id
WHERE d.dept_id IS NULL;