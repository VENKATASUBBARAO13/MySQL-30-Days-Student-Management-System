-- Day 23: Creating SQL Views

USE amrita_college;

-- Create a view for student and department report
CREATE VIEW student_department_view AS
SELECT s.roll_no, s.name, s.year_of_study, s.marks, d.dept_name
FROM students s
JOIN departments d
ON s.dept_id = d.dept_id;

-- Retrieve data from view
SELECT * FROM student_department_view;

-- Filter final-year students from view
SELECT name, dept_name, marks
FROM student_department_view
WHERE year_of_study = 4;