SQL ASSIGNMENT



--   SECTION I : Database and Table Management

--1.
create database company_db;

--2.
use company_db;

--3.
create table skills(skill_id int identity(1,1) primary key,skill_name varchar(100) not null,category varchar(100));

--4.
SELECT name FROM sys.databases;

--5.
SELECT name FROM sys.tables;


CREATE TABLE employee (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    e_name VARCHAR(100) NOT NULL,
    gender VARCHAR(2)
);

--6.
exec sp_rename 'employee','staff';



-- SECTION II : Data Insertion


create table employee(first_name varchar(100),last_name varchar(100), email varchar(100), hire_date date , salary decimal(10,2),dept_id int ,gender varchar(10));
--7.

INSERT INTO employee (first_name, last_name, email, hire_date, salary, dept_id, gender)
VALUES 
('Alice', 'Green', 'alice.green@company.com', '2024-01-10', 62000, 4, 'Female');

create table project(project_name varchar(100),budget decimal(10,2),dept_id int); 

--8.

INSERT INTO project (project_name, budget, dept_id)
VALUES 
('Mobile App', 60000, 2),
('Training Program', 25000, 1);

create table department(dept_name varchar(100),location varchar(100));

--9.

INSERT INTO department (dept_name, location)
VALUES ('Sales', 'Boston');

--10
INSERT INTO employee (first_name, email)
VALUES ('Tom', 'tom@company.com');


--   SECTION III Data Retrieval


--11.
select * from employee;

--12.
select dept_id as departmentId , first_name as name, email as emailAddress from employee;

--13.
SELECT * FROM project
WHERE budget > 40000
ORDER BY budget DESC;

--14.

SELECT DISTINCT location FROM department;

-- SECTION IV: Data Modification

--16.
ALTER TABLE employee
ADD phone_number VARCHAR(15);

--17.
UPDATE employee
SET salary = 65000
WHERE first_name = 'John' AND last_name = 'Doe';

--18.
UPDATE employee
SET gender = 'Other'
WHERE dept_id = 2;

--19.
ALTER TABLE employee
DROP COLUMN phone_number;

--SECTION V: filtering and conditions

--20.
SELECT * FROM employee
WHERE salary BETWEEN 60000 AND 80000;

--21.
SELECT * FROM employee
WHERE first_name LIKE 'J%';

--22.
SELECT * FROM project
WHERE dept_id IN (1,2);

--23.
SELECT * FROM employee
WHERE email IS NOT NULL;

--24.
SELECT * FROM department
WHERE location NOT IN ('New York','Chicago');

--25.
SELECT * FROM employee
WHERE YEAR(hire_date) = 2023;


--SECTION VI: aggregate functions

--26.
SELECT SUM(salary) FROM employee;

--27.
SELECT AVG(budget) FROM project;

--28.
SELECT MAX(salary) FROM employee;

--29.
SELECT COUNT(*) FROM employee
WHERE dept_id = 2;

--30.
SELECT MIN(budget) FROM project;


--SECTION VII:joins

--31.

SELECT e.*, d.dept_name
FROM employee e
JOIN department d ON e.dept_id = d.dept_id;


select * from employee;
select * from department;

ALTER TABLE department
ADD dept_id INT IDENTITY(1,1) PRIMARY KEY;

--32.
SELECT d.dept_name, COUNT(e.emp_id)
FROM department d
LEFT JOIN employee e ON d.dept_id = d.dept_id
GROUP BY d.dept_name;

--33.
SELECT p.project_name, d.dept_name
FROM project p
JOIN department d ON p.dept_id = d.dept_id;

--34.
SELECT e.*
FROM employee e
JOIN department d ON e.dept_id = d.dept_id
WHERE d.location = 'San Francisco';

select * from project;
--35.
SELECT d.dept_name
FROM department d
LEFT JOIN project p ON d.dept_id = p.dept_id
WHERE p.project_name IS NULL;

--SECTION VIII:strings and numeric functions

--36.
SELECT first_name + ' ' + last_name AS FullName
FROM employee;

--37.
SELECT UPPER(dept_name) FROM department;

--38.
SELECT SUBSTRING(email,1,3) FROM employee;

--39.
SELECT ABS(-50000);

--40.
SELECT ROUND(AVG(salary),2) FROM employee;

--SECTION XI: advanced queries

--41.
SELECT TOP 3 * FROM employee
ORDER BY hire_date DESC;

--42.
SELECT * FROM employee
ORDER BY dept_id
OFFSET 3 ROWS FETCH NEXT 3 ROWS ONLY;

--43.
SELECT first_name,
IIF(salary >= 70000, 'High', 'Low') AS category
FROM employee;

--44.
SELECT project_name,
CASE
WHEN budget >= 60000 THEN 'Large'
WHEN budget >= 40000 THEN 'Medium'
ELSE 'Small'
END
FROM project;

--45.
SELECT dept_id, SUM(budget)
FROM project
GROUP BY dept_id;

--46.
SELECT TOP 1 first_name
FROM employee
ORDER BY LEN(first_name) DESC;

--47.
SELECT *
FROM employee
WHERE hire_date >= DATEADD(DAY,-90,'2025-03-22');

-- SECTION X: deletion and cleanup

--48.
DELETE FROM employee
WHERE salary < 60000;

--49.
DROP TABLE project;

--50.
RESTORE DATABASE company_db
FROM DISK = 'C:\backup\company_db.bak'
WITH REPLACE;

DROP DATABASE company_db;
