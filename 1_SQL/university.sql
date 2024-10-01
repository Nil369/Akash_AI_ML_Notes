-- Create the 'university' database and use it
CREATE DATABASE university;
USE university;

-- Create 'student' table
CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);

-- Create 'course' table to demonstrate foreign key constraints
CREATE TABLE course (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  rollno INT,
  -- Adding a foreign key constraint linking rollno to the student table
  FOREIGN KEY (rollno) REFERENCES student(rollno) 
  ON DELETE CASCADE -- On delete of a student, the course entries will also be deleted (cascading)
  ON UPDATE CASCADE -- On update of rollno in the student table, the course entries will also update (cascading)
);

-- Insert data into 'student' table
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
  (101, 'anil', 78, 'C', 'Pune'),
  (102, 'bhumika', 93, 'A', 'Mumbai'),
  (103, 'chetan', 85, 'B', 'Mumbai'),
  (104, 'dhruv', 96, 'A', 'Delhi'),
  (105, 'emanuel', 12, 'F', 'Delhi'),
  (106, 'farah', 82, 'B', 'Delhi');

-- Insert data into 'course' table (relating to foreign key)
INSERT INTO course (course_id, course_name, rollno) 
VALUES 
  (1, 'Mathematics', 101), 
  (2, 'Science', 102), 
  (3, 'History', 103);

-- Select queries
SELECT name, marks FROM student;
SELECT DISTINCT city FROM student;

-- Select all students from Mumbai
SELECT * FROM student WHERE city = 'Mumbai';

-- Select students with marks greater than 80
SELECT * FROM student WHERE marks > 80;

-- Select students with marks greater than 90 or living in Mumbai
SELECT * FROM student WHERE marks > 90 OR city = 'Mumbai';

-- Select students with marks between 80 and 90
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

-- Select students from Delhi and Mumbai
SELECT * FROM student WHERE city IN ('Delhi', 'Mumbai');

-- Select students not from Delhi and Mumbai
SELECT * FROM student WHERE city NOT IN ('Delhi', 'Mumbai');

-- Select top 3 students based on marks
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- Grouping and Aggregate functions
SELECT city, COUNT(rollno) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC;
SELECT grade, COUNT(rollno) FROM student GROUP BY grade ORDER BY grade;

-- HAVING clause: count of students from cities with maximum marks > 90
SELECT city, COUNT(rollno) FROM student GROUP BY city HAVING MAX(marks) > 90;

-- UPDATE query to update marks for a student
UPDATE student SET marks = 88 WHERE rollno = 101;

-- DELETE query to remove a student record
DELETE FROM student WHERE rollno = 105;

-- ALTER statement to add a new column 'age' to the 'student' table
ALTER TABLE student ADD age INT;

-- ALTER statement to modify the 'name' column's datatype in the 'student' table
ALTER TABLE student MODIFY name VARCHAR(100);

-- TRUNCATE statement to delete all data from the 'course' table without deleting the table structure
TRUNCATE TABLE course;

-- Join (Inner Join) between 'student' and 'course' tables to retrieve students with their courses
SELECT student.name, course.course_name 
FROM student 
JOIN course ON student.rollno = course.rollno;

-- Left Join to retrieve all students, even those who are not enrolled in any course
SELECT student.name, course.course_name 
FROM student 
LEFT JOIN course ON student.rollno = course.rollno;

-- Create a view to display students with marks greater than 80
CREATE VIEW high_scorers AS 
SELECT name, marks 
FROM student 
WHERE marks > 80;

-- Query the view
SELECT * FROM high_scorers;

-- Drop the view
DROP VIEW high_scorers;

