DROP DATABASE seminarmarks;
CREATE DATABASE IF NOT EXISTS seminarmarks;
USE seminarmarks;


-- -----------------------------------------------------
-- Table Students
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Students (
  idStudent INT NOT NULL,
  StudentFirstName VARCHAR(45) NOT NULL,
  StudentLastName VARCHAR(45) NOT NULL,
  StudentNumber VARCHAR(45) NULL,
  PRIMARY KEY (idStudent));


-- -----------------------------------------------------
-- Table Markers
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Markers (
  idMarker INT NOT NULL,
  MarkerFirstName VARCHAR(45) NOT NULL,
  MarkerLastName VARCHAR(45) NOT NULL,
  PRIMARY KEY (idMarker));
  
  
  -- -----------------------------------------------------
-- Table Marks
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Marks (
  idMark INT NOT NULL,
  Mark1 VARCHAR(45) NOT NULL,
  Mark2 VARCHAR(45) NOT NULL,
  Mark3 VARCHAR(45) NOT NULL,
  Cohor VARCHAR(45) NOT NULL,
  Seminar VARCHAR(45) NOT NULL,
  
  
  idStudent VARCHAR(45) NOT NULL,
  idMarker VARCHAR(45) NOT NULL,
  idUser VARCHAR(45) NOT NULL,
  
  
  PRIMARY KEY (idMark));
 
  

-- -----------------------------------------------------
-- Table Users
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Users (
  idusers INT NOT NULL,
  username VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  PRIMARY KEY (idusers),
  UNIQUE INDEX username_UNIQUE (username ASC));