-- Day 13: Pass/Fail Result Sheet using CASE

USE amrita_college;

-- Add sample failed students for testing
INSERT INTO students VALUES
(301, 'Rohit', '9000000001', '2022-06-20', 3, 32),
(302, 'Suresh', '9000000002', '2021-06-15', 4, 28);

-- Generate pass/fail result sheet
SELECT roll_no, name, marks,
CASE
    WHEN marks >= 40 THEN 'PASS'
    ELSE 'FAIL'
END AS result
FROM students;

-- Sort pass/fail result by marks
SELECT roll_no, name, marks,
CASE
    WHEN marks >= 40 THEN 'PASS'
    ELSE 'FAIL'
END AS result
FROM students
ORDER BY marks DESC;

-- Show only failed students
SELECT roll_no, name, marks
FROM students
WHERE marks < 40;