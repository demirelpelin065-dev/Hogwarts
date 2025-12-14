-- updates.sql
USE HogwartsDB;
GO

-- Uppdatera Luna Lovegoods årskurs
UPDATE Students
SET YearGroup = 5
WHERE StudentName = 'Luna Lovegood';

-- Uppdatera poäng för Charms
UPDATE Courses
SET Credits = 7
WHERE CourseName = 'Charms';
