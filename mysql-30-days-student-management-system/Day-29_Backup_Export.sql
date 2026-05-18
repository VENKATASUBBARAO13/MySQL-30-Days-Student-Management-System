-- Day 29: Database Backup and Export Verification

USE amrita_college;

-- Show all tables before backup
SHOW TABLES;

-- Verify student data
SELECT * FROM students;

-- Verify department data
SELECT * FROM departments;

-- Verify logs table
SELECT * FROM student_logs;

-- Backup/export is done from MySQL Workbench:
-- Server -> Data Export -> Select amrita_college
-- Export to Self-Contained File -> Start Export