-- Use / create the database
CREATE DATABASE RelationalDBProject;
GO

USE RelationalDBProject;
GO

-- 1? Create Roles Table
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL
);

-- 2? Create Status Table
CREATE TABLE Status (
    StatusID INT PRIMARY KEY,
    StatusName VARCHAR(50) NOT NULL
);

-- 3? Create Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

-- 4? Create Accounts Table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    UserID INT,
    StatusID INT,
    AccountBalance DECIMAL(10,2),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (StatusID) REFERENCES Status(StatusID)
);

--  Insert sample data into Roles
INSERT INTO Roles VALUES (1, 'Admin'), (2, 'Customer');

--  Insert sample data into Status
INSERT INTO Status VALUES (1, 'Active'), (2, 'Suspended');

--  Insert sample data into Users
INSERT INTO Users VALUES 
(101, 'Ram Kumar', 'ramkumar@example.com', 1),
(102, 'Priya Sharma', 'priya@example.com', 2);

--  Insert sample data into Accounts
INSERT INTO Accounts VALUES 
(201, 101, 1, 25000.00),
(202, 102, 2, 12000.50);

--  Optional: View data
SELECT * FROM Roles;
SELECT * FROM Status;
SELECT * FROM Users;
SELECT * FROM Accounts;

--  Deletion Section (as per project requirement)
-- First delete child records to maintain FK constraints

DELETE FROM Accounts;
DELETE FROM Users;
DELETE FROM Roles;
DELETE FROM Status;
