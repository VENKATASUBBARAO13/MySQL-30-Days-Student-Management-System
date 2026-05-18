-- Day 22: Understanding RIGHT JOIN

USE amrita_college;

-- Show all departments with matching students
SELECT s.roll_no, s.name, d.dept_name
FROM students s
RIGHT JOIN departments d
ON s.dept_id = d.dept_id;

-- Department names with student marks
SELECT d.dept_name, s.name, s.marks
FROM students s
RIGHT JOIN departments d
ON s.dept_id = d.dept_id
ORDER BY d.dept_name;

-- Find departments without students
SELECT d.dept_name
FROM students s
RIGHT JOIN departments d
ON s.dept_id = d.dept_id
WHERE s.roll_no IS NULL;