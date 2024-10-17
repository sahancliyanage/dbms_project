CREATE DATABASE teclms;
USE teclms;

CREATE TABLE technical_officer(
    To_id CHAR(8) PRIMARY KEY,
    Admin_id CHAR(8),
    Email VARCHAR(50),
    Phone INT,
    Password VARCHAR(20),
    FOREIGN KEY(Admin_id) REFERENCES Admin(Admin_id)
);

CREATE TABLE Admin(
    Admin_id CHAR(8) PRIMARY KEY,
    Dean_id CHAR(8),
    Name VARCHAR(30),
    Email VARCHAR(50),
    Phone INT,
    Password VARCHAR(20),
    FOREIGN KEY(Dean_id) REFERENCES Dean(Dean_id)
);

CREATE TABLE Dean(
    Dean_id CHAR(8) PRIMARY KEY,
    Name VARCHAR(30),
    Email VARCHAR(50),
    Phone INT,
    Password VARCHAR(20)
);

CREATE TABLE Lecture(
    Lec_id CHAR(8) PRIMARY KEY,
    Dep_id CHAR(8),
    Name VARCHAR(30),
    Email VARCHAR(50),
    Phone INT,
    Password VARCHAR(20),
    FOREIGN KEY(Dep_id) REFERENCES Department(Dep_id)
);

CREATE TABLE Student(
    Student_id CHAR(8) PRIMARY KEY,
    Name VARCHAR(30),
    Email VARCHAR(50),
    Phone INT,
    Password VARCHAR(20)
);

CREATE TABLE Admin(
    Admin_id CHAR(8) PRIMARY KEY,
    Dean_id CHAR(8),
    Name VARCHAR(30),
    Email VARCHAR(50),
    Phone INT,
    Password VARCHAR(20),
    FOREIGN KEY(Dean_id) REFERENCES Dean(Dean_id)
);
