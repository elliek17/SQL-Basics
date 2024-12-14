1
SELECT name FROM students;

2
SELECT * FROM students
WHERE Age > 30;

3
SELECT name FROM students
WHERE Age = 30 AND Gender = "F";

4
SELECT Points FROM students
WHERE name = "Alex";

5
INSERT INTO students(name, Age, Gender)
VALUES ("Elina", "22", "F");

6
UPDATE students
SET Points = Points + 50 
WHERE name = "Basma"; 

7
UPDATE students
SET Points = Points - 30 
WHERE name = "Alex"; 


Create a table
CREATE TABLE "graduates" (
	"ID" INTEGER NOT NULL Primary key AUTOINCREMENT,
	"Name" TEXT NOT NULL UNIQUE,
	"Age" INTEGER,
	"Gender" TEXT,
	"Points" INTEGER,
	"Graduation" date);

10
INSERT INTO graduates (name, Age, Gender, Points)
SELECT name, Age, Gender, Points from students
WHERE name = "Layal";

11
UPDATE graduates
SET Graduation = "2018-09-08"
WHERE name = "Layal";

12
DELETE FROM students WHERE name = "Layal";

14
CREATE TABLE "company_employees" (
	"ID" INTEGER NOT NULL Primary key AUTOINCREMENT,
	"Name" TEXT NOT NULL UNIQUE,
	"Company" TEXT,
	"Company_date" date);

INSERT INTO company_employees (Name, Company, Company_date)
SELECT employees.name, employees.company, companies.date
FROM companies
INNER JOIN employees ON companies.name=employees.Company;


15
SELECT name FROM company_employees
WHERE Company_date < 2000;

16
SELECT company FROM employees
WHERE Role = "Graphic Designer";