# MySQL 30 Days Student Management System

## 📌 Project Overview

This repository contains my **MySQL 30 Days Challenge**, where I practiced SQL concepts by building a real-world mini project:

**Student Management Database System**

The project is based on student data from **Amrita Sai Institute of Science and Technology** and covers important SQL concepts from basic queries to advanced database features.

---

## 🎯 Objective

The main goal of this project is to understand how SQL is used in real applications to store, manage, analyze, and protect data.

Instead of learning only syntax, I created a structured database system step by step for 30 days.

---

## 🏫 Database Name

```sql
amrita_college
```
---

## 🗂️ Tables Used

### 1. students

Stores student information such as roll number, name, phone number, joining date, year of study, marks, and department ID.

| Column Name | Description |
|---|---|
| roll_no | Unique roll number of the student |
| name | Student name |
| phone | Student phone number |
| joining_date | Student joining date |
| year_of_study | Current year of study |
| marks | Student marks |
| dept_id | Department ID linked with departments table |

---

### 2. departments

Stores department information.

| Column Name | Description |
|---|---|
| dept_id | Unique department ID |
| dept_name | Department name |

---

### 3. student_logs

Stores update logs created automatically using triggers.

| Column Name | Description |
|---|---|
| log_id | Unique log ID |
| student_roll | Roll number of updated student |
| action_time | Time when update happened |

---

## 📚 SQL Concepts Covered

- CREATE DATABASE
- CREATE TABLE
- INSERT
- SELECT
- WHERE
- ORDER BY
- LIMIT
- Aggregate Functions
  - COUNT
  - AVG
  - MAX
  - MIN
- GROUP BY
- Subqueries
- CASE Statement
- LIKE Operator
- UPDATE
- DELETE
- CRUD Operations
- Primary Key
- Foreign Key
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Views
- Indexes
- Constraints
- Transactions
- Stored Procedures
- Triggers
- Database Backup and Export

---

## 📅 30 Days Challenge Plan

| Day | Topic |
|---|---|
| Day 1 | Create Database |
| Day 2 | Create Students Table |
| Day 3 | Insert 4th Year Students |
| Day 4 | SELECT and Filtering |
| Day 5 | Insert 3rd Year Students |
| Day 6 | ORDER BY |
| Day 7 | LIMIT and Topper |
| Day 8 | Average Marks |
| Day 9 | Aggregate Functions |
| Day 10 | GROUP BY |
| Day 11 | Year-wise Toppers |
| Day 12 | Below Average Students |
| Day 13 | Pass/Fail using CASE |
| Day 14 | Grade System |
| Day 15 | LIKE Search |
| Day 16 | UPDATE Records |
| Day 17 | DELETE Records |
| Day 18 | Departments Table |
| Day 19 | Foreign Key |
| Day 20 | INNER JOIN |
| Day 21 | LEFT JOIN |
| Day 22 | RIGHT JOIN |
| Day 23 | Views |
| Day 24 | Indexes |
| Day 25 | Constraints |
| Day 26 | Transactions |
| Day 27 | Stored Procedures |
| Day 28 | Triggers |
| Day 29 | Backup and Export |
| Day 30 | Final Project Queries |

---

## 📁 Repository Structure

```text
MySQL-30-Days-Student-Management-System/
│
├── README.md
│
└── mysql-30-days-student-management-system/
    ├── Day-01_Create_Database.sql
    ├── Day-02_Create_Students_Table.sql
    ├── Day-03_Insert_4th_Year_Students.sql
    ├── Day-04_Select_And_Filter.sql
    ├── Day-05_Insert_3rd_Year_Students.sql
    ├── Day-06_Order_By.sql
    ├── Day-07_Limit_Topper.sql
    ├── Day-08_Avg_Marks.sql
    ├── Day-09_Aggregate_Functions.sql
    ├── Day-10_Group_By.sql
    ├── Day-11_Year_Wise_Toppers.sql
    ├── Day-12_Below_Average_Students.sql
    ├── Day-13_Pass_Fail_Case.sql
    ├── Day-14_Grade_System.sql
    ├── Day-15_Like_Search.sql
    ├── Day-16_Update_Records.sql
    ├── Day-17_Delete_Records.sql
    ├── Day-18_Departments_Table.sql
    ├── Day-19_Foreign_Key.sql
    ├── Day-20_Inner_Join.sql
    ├── Day-21_Left_Join.sql
    ├── Day-22_Right_Join.sql
    ├── Day-23_Views.sql
    ├── Day-24_Indexes.sql
    ├── Day-25_Constraints.sql
    ├── Day-26_Transactions.sql
    ├── Day-27_Stored_Procedures.sql
    ├── Day-28_Triggers.sql
    ├── Day-29_Backup_Export.sql
    └── Day-30_Final_Project_Queries.sql
```

---

## ⚙️ Tools Used

- MySQL
- MySQL Workbench
- GitHub
- SQL

---

## 🔥 Sample Queries

### Student and Department Report

```sql
SELECT s.roll_no, s.name, s.year_of_study, s.marks, d.dept_name
FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
ORDER BY s.marks DESC;
```

---

### Grade System

```sql
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
```

---

### Department-wise Student Count

```sql
SELECT d.dept_name, COUNT(s.roll_no) AS total_students
FROM departments d
LEFT JOIN students s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name;
```

---

## 🚀 Project Features

This project can:

- Store student records
- Store department details
- Manage 3rd-year and 4th-year student data
- Connect students with departments
- Generate student result reports
- Calculate average, highest, and lowest marks
- Find toppers
- Identify below-average students
- Generate pass/fail results
- Generate grades
- Search students by name patterns
- Update student records
- Delete incorrect records
- Create reusable views
- Improve query performance using indexes
- Enforce data rules using constraints
- Use transactions for safe operations
- Automate queries using stored procedures
- Track updates using triggers
- Verify database before backup/export

---

## 🧠 What I Learned

Through this challenge, I understood that SQL is not just about writing queries.

SQL is used to design, manage, analyze, and protect real-world data.

This project helped me understand how databases are used in:

- College management systems
- Result portals
- Admin dashboards
- Backend applications
- Data analytics systems
- Cloud database systems

---

## 🔮 Future Improvements

In the future, I want to improve this project by adding:

- Subjects table
- Faculty table
- Attendance table
- Fees table
- Department-wise reports
- Result generation procedure
- Dashboard using Python or Power BI
- Cloud deployment using AWS RDS

---

## 🙌 Conclusion

This project represents my complete 30-day MySQL learning journey.

Instead of only practicing random SQL queries, I built a structured Student Management Database System step by step.

This helped me understand how databases are designed and used in real-world applications.

---

## 👨‍💻 Author

**VENKATASUBBARAO13**

Aspiring Cloud Engineer | Python | MySQL | Linux | AWS | Data Analysis

---

## ⭐ Repository Purpose

This repository is created for learning, practice, and showcasing my MySQL 30 Days Challenge project.
