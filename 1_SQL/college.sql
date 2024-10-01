-- Database Related Queries:

CREATE DATABASE IF NOT EXISTS college;
-- DROP DATABASE IF EXISTS employee;
-- SHOW DATABASES;
-- SHOW TABLES;

USE college;

-- table related queries:

CREATE TABLE IF NOT EXISTS student(
id INT PRIMARY KEY,
name VARCHAR(100),
age INT NOT NULL
);

-- for inserting single & short values
INSERT INTO student VALUES(1,"Akash",19);
INSERT INTO student VALUES(2,"Debashruti",19);

-- for inserting multiple values
INSERT INTO student
(id,name,age)
VALUES
(3,"Akhi",19),
(4,"Puchku",19);

SELECT * FROM student;

