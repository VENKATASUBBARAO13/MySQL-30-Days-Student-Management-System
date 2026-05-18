-- Day 26: Managing Safe Operations using Transactions

USE amrita_college;

-- Start transaction
START TRANSACTION;

-- Update student marks
UPDATE students
SET marks = 85
WHERE roll_no = 103;

-- Verify update before commit
SELECT roll_no, name, marks
FROM students
WHERE roll_no = 103;

-- Save changes permanently
COMMIT;

-- Example rollback flow:
-- START TRANSACTION;
-- UPDATE students SET marks = 10 WHERE roll_no = 104;
-- ROLLBACK;