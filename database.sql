-- Create the database
CREATE DATABASE DoctorDatabase;

-- Use the database
USE DoctorDatabase;

-- Create the Doctors table
CREATE TABLE Doctors (
  DoctorID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  SpecializationID INT,
  LocationID INT,
  PhoneNumber VARCHAR(20),
  Email VARCHAR(50),
  YearsOfExperience INT,
  AdditionalInformation TEXT
);

-- Create the Specializations table
CREATE TABLE Specializations (
  SpecializationID INT PRIMARY KEY,
  SpecializationName VARCHAR(50) NOT NULL
);

-- Create the Locations table
CREATE TABLE Locations (
  LocationID INT PRIMARY KEY,
  City VARCHAR(50) NOT NULL,
  State VARCHAR(50) NOT NULL
);

-- Create the relationships between tables
ALTER TABLE Doctors
ADD CONSTRAINT fk_Doctors_Specializations
FOREIGN KEY (SpecializationID) REFERENCES Specializations(SpecializationID);

ALTER TABLE Doctors
ADD CONSTRAINT fk_Doctors_Locations
FOREIGN KEY (LocationID) REFERENCES Locations(LocationID);

-- Insert some sample data
INSERT INTO Specializations (SpecializationID, SpecializationName)
VALUES
  (1, 'Cardiologist'),
  (2, 'Pediatrician'),
  (3, 'Dermatologist');

INSERT INTO Locations (LocationID, City, State)
VALUES
  (1, 'New York', 'NY'),
  (2, 'Los Angeles', 'CA'),
  (3, 'Chicago', 'IL');

INSERT INTO Doctors (DoctorID, Name, SpecializationID, LocationID, PhoneNumber, Email, YearsOfExperience, AdditionalInformation)
VALUES
  (1, 'Dr. Smith', 1, 1, '555-1234', 'mith@example.com', 10, 'Certified in Cardiology'),
  (2, 'Dr. Johnson', 2, 2, '555-5678', 'johnson@example.com', 5, 'Pediatrician with 5 years of experience'),
  (3, 'Dr. Lee', 3, 3, '555-9012', 'lee@example.com', 15, 'Dermatologist with 15 years of experience');