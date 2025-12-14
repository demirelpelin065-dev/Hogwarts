-- insert_data.sql
USE HogwartsDB;
GO

-- Students
INSERT INTO Students (StudentName, HogwartsHouse, YearGroup) VALUES
('Harry Potter', 'Gryffindor', 5),
('Hermione Granger', 'Gryffindor', 5),
('Draco Malfoy', 'Slytherin', 5),
('Luna Lovegood', 'Ravenclaw', 4),
('Neville Longbottom', 'Gryffindor', 5);
GO

-- Courses
INSERT INTO Courses (CourseName, Lecturer, Credits) VALUES
('Defence Against the Dark Arts', 'Remus Lupin', 10),
('Potions', 'Severus Snape', 8),
('Charms', 'Filius Flitwick', 6);
GO

-- Enrollments
INSERT INTO Enrollments (StudentID, CourseID, GradeReceived) VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'A'),
(2, 3, 'A'),
(3, 2, 'C'),
(4, 3, 'B'),
(5, 1, 'B');
GO
