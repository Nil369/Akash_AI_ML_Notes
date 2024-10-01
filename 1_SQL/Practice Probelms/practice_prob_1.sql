/*
Q1: Create a database for your company named XYZ.

Step1: create a table inside this DB to store employee info (id, name and salary)!

Step2: Add following information in the DB:

1, "adam", 25000
2, "bob", 30000
3, "casey", 40000

Step3: Select & view all your table data.
*/

CREATE DATABASE xyz;

USE xyz;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);

INSERT INTO employee
(id,name,salary)
VALUES
(1, "adam",25000),
(2, "bob",30000),
(3, "casey",40000);

SELECT * FROM employee;