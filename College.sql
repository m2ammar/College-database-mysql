-- DATABASE: College

CREATE DATABASE IF NOT EXISTS College;
USE College;

-- Table: Employee
CREATE TABLE Employee (
  ID   INT          NOT NULL,
  Name VARCHAR(50)  NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO Employee VALUES
(101, 'Ammar'),
(102, 'Saleem'),
(103, 'Aleem'),
(104, 'Saleem'),
(105, 'Shakeel'),
(106, 'Arjun'),
(107, 'Karan'),
(108, 'Habiba'),
(109, 'Hadia'),
(110, 'Shahbaz'),
(111, 'Sohail'),
(112, 'Shumail');

-- Table: Student
CREATE TABLE Student (
  ID   INT          NOT NULL,
  Name VARCHAR(50)  DEFAULT NULL,
  Age  INT          NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO Student VALUES
(1, 'Ammar', 22),
(2, 'Hammad', 12),
(3, 'Umer', 32);

-- Table: workers
CREATE TABLE workers (
  EmpID      INT          UNIQUE,
  Name       VARCHAR(50)  DEFAULT NULL,
  Department VARCHAR(30)  DEFAULT NULL,
  City       VARCHAR(50)  DEFAULT NULL,
  Salary     INT          NOT NULL
);

INSERT INTO workers VALUES
(1, 'Ammar',  'IT',        'Karachi',     30000),
(2, 'Zara',   'HR',        'Lahore',      64200),
(3, 'Ali',    'IT',        'Islamabad',   78000),
(4, 'Sarah',  'Finance',   'Karachi',    346000),
(5, 'Hassan', 'Marketing', 'Faisalabad',  45600);

-- Queries practiced on workers
SELECT * FROM workers WHERE Department IN ('IT');

UPDATE workers
SET Salary = Salary + (Salary * 0.10)
WHERE City IN ('Karachi');

SELECT Department, COUNT(EmpID) FROM workers GROUP BY Department;

ALTER TABLE workers RENAME TO weakers;
ALTER TABLE weakers RENAME TO workers;

ALTER TABLE workers DROP COLUMN Salary;
ALTER TABLE workers ADD COLUMN Salary INT NOT NULL;

UPDATE workers SET Salary = 30000  WHERE EmpID = 1;
UPDATE workers SET Salary = 64200  WHERE EmpID = 2;
UPDATE workers SET Salary = 78000  WHERE EmpID = 3;
UPDATE workers SET Salary = 346000 WHERE EmpID = 4;
UPDATE workers SET Salary = 45600  WHERE EmpID = 5;
