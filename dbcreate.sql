DROP DATABASE seminarmarks;
CREATE DATABASE IF NOT EXISTS seminarmarks;
USE seminarmarks;


-- -----------------------------------------------------
-- Table Students
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Students (
  idStudent INT NOT NULL auto_increment,
  StudentFirstName VARCHAR(45) NOT NULL,
  StudentLastName VARCHAR(45) NOT NULL,
  StudentNumber VARCHAR(45) NULL,
  PRIMARY KEY (idStudent));


-- -----------------------------------------------------
-- Table Markers
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Markers (
  idMarker INT NOT NULL auto_increment,
  MarkerFirstName VARCHAR(45) NOT NULL,
  MarkerLastName VARCHAR(45) NOT NULL,
  PRIMARY KEY (idMarker));
  


-- -----------------------------------------------------
-- Table Users
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Users (
  idUser INT NOT NULL auto_increment,
  username VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  UNIQUE (username),
  PRIMARY KEY (idUser));
  
  -- -----------------------------------------------------
-- Table Marks
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Marks (
  idMark INT NOT NULL auto_increment,
  Mark1 INT NOT NULL,
  Mark2 INT NOT NULL,
  Mark3 INT NOT NULL,
  Cohort VARCHAR(45) NOT NULL,
  Seminar VARCHAR(45) NOT NULL,
  PRIMARY KEY (idMark),
  
  idStudent INT NOT NULL,
  idMarker INT NOT NULL,
  idUser INT NOT NULL,
  
  FOREIGN KEY (idStudent) REFERENCES Students(idStudent),
  FOREIGN KEY (idMarker) REFERENCES Markers(idMarker),
  FOREIGN KEY (idUser) REFERENCES Users(idUser));
 
  
