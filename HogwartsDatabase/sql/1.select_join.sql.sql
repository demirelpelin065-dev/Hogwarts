-- select_join.sql
USE HogwartsDB;
GO

-- 1. Vilka kurser varje elev går och betyg
SELECT s.StudentName, c.CourseName, e.GradeReceived
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

-- 2. Elever och deras professorer
SELECT s.StudentName, c.Lecturer, c.CourseName
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;
