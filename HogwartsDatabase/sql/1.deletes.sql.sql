-- deletes.sql
USE HogwartsDB;
GO

-- Ta bort en enrollment
DELETE FROM Enrollments
WHERE EnrollmentID = 7;
