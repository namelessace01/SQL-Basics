-- Use the "CREATE DATABASE" command followed by the "database_name" to create a database.
CREATE DATABASE Interns;

-- I used "USE DATABASE" to select the database I want to use, this is good practice since a time can come where you have a lot of database.
USE DATABASE Interns;

-- Use the "CREATE TABLE" command followed by the "table_name" to create a table.
CREATE TABLE Biodata
-- Your above command will generate an error if you do not add at least one column.
    (
        Matric_Number VARCHAR(25) NOT NULL PRIMARY KEY,
        First_Name VARCHAR(80),
        Last_Name VARCHAR(80) NOT NULL,
        Gender VARCHAR(7) NOT NULL DEFAULT 'Male',
        Institution TEXT NOT NULL,
        Course_of_Study VARCHAR(150) NOT NULL DEFAULT 'Computer Science',
        Email VARCHAR(80) NOT NULL UNIQUE KEY,
        Phone_Number VARCHAR(9) NOT NULL UNIQUE KEY,
    );

CREATE TABLE Scores;
    (
        Matric_Number VARCHAR(25) NOT NULL,
        Scores INT NOT NULL DEFAULT '0'
    );

-- Use the "ALTER TABLE" command to add an additional column as illustrated.
ALTER TABLE Biodata ADD Date_of_Birth VARCHAR(30) NOT NULL;

-- Use the "INSERT INTO" command followed by the "table_name" to input values into the specified table.
INSERT INTO Scores
    (
        Matric_Number, Scores
    )
-- Your above code requires values so...
-- Use the "VALUES" command to complete the "INSERT INTO" command.
VALUES
    (
        'CSC/21/0572', 62
    );