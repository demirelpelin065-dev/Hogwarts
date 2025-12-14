-- select_basic.sql
USE HogwartsDB;
GO

-- 1. Alla studenter
SELECT * FROM Students;

-- 2. Studenter i Gryffindor
SELECT * FROM Students
WHERE HogwartsHouse = 'Gryffindor';

-- 3. Studenter sorterade efter år
SELECT * FROM Students
ORDER BY YearGroup DESC;

-- 4. Studenter vars namn börjar med H
SELECT * FROM Students
WHERE StudentName LIKE 'H%';

-- 5. Antal studenter per hus
SELECT HogwartsHouse, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY HogwartsHouse;

-- 6. Kurser med mer än 7 poäng
SELECT * FROM Courses
WHERE Credits > 7;
