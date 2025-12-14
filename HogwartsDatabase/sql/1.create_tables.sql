-- create_tables.sql
USE HogwartsDB;
GO

-- Ta bort gamla tabeller om de finns
IF OBJECT_ID('Enrollments', 'U') IS NOT NULL DROP TABLE Enrollments;
IF OBJECT_ID('Students', 'U') IS NOT NULL DROP TABLE Students;
IF OBJECT_ID('Courses', 'U') IS NOT NULL DROP TABLE Courses;
GO

-- Skapa Students-tabellen
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentName NVARCHAR(100) NOT NULL,
    HogwartsHouse NVARCHAR(50) NOT NULL,
    YearGroup INT NOT NULL
);
GO

-- Skapa Courses-tabellen
CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    CourseName NVARCHAR(100) NOT NULL,
    Lecturer NVARCHAR(100) NOT NULL,
    Credits INT NOT NULL
);
GO

-- Skapa Enrollments-tabellen
CREATE TABLE Enrollments (
    EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    GradeReceived NVARCHAR(2) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
GO
