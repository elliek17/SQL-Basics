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