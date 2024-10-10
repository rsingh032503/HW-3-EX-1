SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;
SELECT Name FROM Students WHERE Gender='F' AND Age=30;
SELECT Points FROM Students WHERE Name='Alex';
INSERT INTO Students VALUES(7, 'Rahul', '21', 'M', 500);
UPDATE Students SET Points = 500 WHERE Name='Basma';
UPDATE Students SET Points = 100 WHERE Name='Alex';

CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
); 

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal'; 
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal'; 
DELETE FROM graduates WHERE Name='Layal'; 

SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
#2: Marc and Maria work in companies made before 2000

SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';
#3: Snapchat has a graphic designer


select name from students where points=(SELECT MAX(points) from students);
#1: Basma, Robert, Jana, and Alexandra have the highest number of points

select AVG(points) from students;
#2: the average number of points is 375

select COUNT(Name) from students where points=500;
#3: 4 students have 500 points

select Name from students WHERE Name GLOB '*s*';
#4: Basma and Hasan have names that contain s

select name from students ORDER BY points DESC;