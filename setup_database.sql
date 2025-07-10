-- Create the Blood Bank Database
CREATE DATABASE blood_bank;
USE blood_bank;

-- Create BB_Manager Table
CREATE TABLE BB_Manager (
    M_id INT NOT NULL,
    mName VARCHAR(100) NOT NULL,
    m_phNo BIGINT,
    PRIMARY KEY (M_id)
);

-- Insert Data into BB_Manager
INSERT INTO BB_Manager (M_id, mName, m_phNo) VALUES
(102, 'Jack', 4693959671),
(103, 'Peter', 4693959601),
(104, 'Mark', 4693959677),
(105, 'Jason', 4693957671),
(106, 'Steve', 4694959671),
(107, 'Jason', 4695959671),
(108, 'Stella', 4663959671),
(109, 'Monika', 4673959671),
(110, 'John', 4693859671),
(111, 'Alice', 4692959672),
(112, 'Bob', 4692959673),
(113, 'Charlie', 4692959674),
(114, 'Diana', 4692959675),
(115, 'Ethan', 4692959676),
(116, 'Fiona', 4692959678),
(117, 'George', 4692959679),
(118, 'Hannah', 4692959680),
(119, 'Ian', 4692959681),
(120, 'Julia', 4692959682);

-- Create Blood_Donor Table
CREATE TABLE Blood_Donor (
    bd_ID INT NOT NULL,
    bd_name VARCHAR(100) NOT NULL,
    bd_age INT,
    bd_sex VARCHAR(1),
    bd_Bgroup VARCHAR(10),
    bd_reg_date DATE,
    reco_ID INT NOT NULL,
    City_ID INT NOT NULL,
    PRIMARY KEY (bd_ID)
);

-- Insert Data into Blood_Donor
INSERT INTO Blood_Donor (bd_ID, bd_name, bd_age, bd_sex, bd_Bgroup, bd_reg_date, reco_ID, City_ID) VALUES
(150221, 'Mark', 25, 'M', 'B+', '2015-12-17', 101212, 1100),
(160011, 'Abdul', 35, 'F', 'A+', '2016-11-22', 101212, 1100),
(160101, 'Smith', 22, 'M', 'O+', '2016-01-04', 101312, 1200),
(150011, 'Pat', 29, 'M', 'O+', '2015-07-19', 101412, 1300),
(150021, 'Shyam', 42, 'F', 'A-', '2015-12-24', 101412, 1300),
(150121, 'Dan', 44, 'M', 'AB+', '2015-08-28', 101212, 1200),
(160031, 'Mike', 33, 'F', 'AB-', '2016-02-06', 101212, 1400),
(160301, 'Elisa', 31, 'F', 'AB+', '2016-09-10', 101312, 1200),
(160091, 'Carrol', 24, 'M', 'B-', '2016-10-15', 101312, 1500),
(160401, 'Mark', 29, 'M', 'O-', '2016-12-17', 101212, 1200),
(150222, 'Alice', 28, 'F', 'A+', '2017-01-10', 101212, 1100),
(150223, 'Bob', 30, 'M', 'B+', '2017-02-15', 101212, 1100),
(150224, 'Charlie', 26, 'M', 'O+', '2017-03-20', 101312, 1200),
(150225, 'Diana', 31, 'F', 'AB-', '2017-04-25', 101412, 1300),
(150226, 'Ethan', 40, 'M', 'A-', '2017-05-30', 101212, 1400),
(150227, 'Fiona', 22, 'F', 'B-', '2017-06-15', 101212, 1500),
(150228, 'George', 34, 'M', 'O-', '2017-07-20', 101312, 1200),
(150229, 'Hannah', 29, 'F', 'AB+', '2017-08-10', 101412, 1300),
(150230, 'Ian', 45, 'M', 'A+', '2017-09-05', 101212, 1100),
(150231, 'Julia', 38, 'F', 'B+', '2017-10-12', 101212, 1400);

-- Create BloodSpecimen Table
CREATE TABLE BloodSpecimen (
    specimen_number INT NOT NULL,
    b_group VARCHAR(10) NOT NULL,
    status INT,
    dfind_ID INT NOT NULL,
    M_id INT NOT NULL,
    CONSTRAINT specimenumber_pk PRIMARY KEY (specimen_number)
);

-- Insert Data into BloodSpecimen
INSERT INTO BloodSpecimen (specimen_number, b_group, status, dfind_ID, M_id) VALUES
(1001, 'B+', 1, 11, 101),
(1002, 'O+', 1, 12, 102),
(1003, 'AB+', 1, 11, 102),
(1004, 'O-', 1, 13, 103),
(1005, 'A+', 0, 14, 101),
(1006, 'A-', 1, 13, 104),
(1007, 'AB-', 1, 15, 104),
(1008, 'AB-', 0, 11, 105),
(1009, 'B+', 1, 13, 105),
(1010, 'O+', 0, 12, 105),
(1011, 'O+', 1, 13, 103),
(1012, 'O-', 1, 14, 102),
(1013, 'B-', 1, 14, 102),
(1014, 'AB+', 0, 15, 101),
(1015, 'A+', 1, 16, 101),
(1016, 'B-', 1, 17, 102),
(1017, 'O-', 1, 18, 103),
(1018, 'AB+', 1, 19, 104),
(1019, 'A-', 0, 20, 105),
(1020, 'B+', 1, 21, 101),
(1021, 'O+', 1, 22, 102),
(1022, 'AB-', 1, 23, 103),
(1023, 'A+', 1, 24, 104),
(1024, 'B-', 0, 25, 105);

-- Create City Table
CREATE TABLE City (
    City_ID INT NOT NULL,
    City_name VARCHAR(255) NOT NULL,
    CONSTRAINT CityID_pk PRIMARY KEY (City_ID)
);

-- Insert Data into City
INSERT INTO City (City_ID, City_name) VALUES
(1200, 'Austin'),
(1300, 'Irving'),
(1400, 'Houston'),
(1500, 'Richardson'),
(1600, 'Plano'),
(1700, 'Frisco'),
(1800, 'Arlington'),
(1900, 'San Antonio'),
(2000, 'Tyler'),
(2100, 'Dallas'),
(2200, 'Fort Worth'),
(2300, 'El Paso'),
(2400, 'Corpus Christi'),
(2500, 'Lubbock'),
(2600, 'Brownsville'),
(2700, 'McAllen'),
(2800, 'Killeen'),
(2900, 'Waco'),
(3000, 'Abilene');

-- Create Hospital_Info_1 Table
CREATE TABLE Hospital_Info_1 (
    hosp_ID INT NOT NULL,
    hosp_name VARCHAR(255) NOT NULL,
    City_ID INT NOT NULL,
    M_id INT NOT NULL,
    PRIMARY KEY (hosp_ID)
);

-- Insert Data into Hospital_Info_1
INSERT INTO Hospital_Info_1 (hosp_ID, hosp_name, City_ID, M_id) VALUES
(1, 'MayoClinic', 1100, 101),
(2, 'ClevelandClinic', 1200, 103),
(3, 'NYU', 1300, 103),
(4, 'Baylor', 1400, 104),
(5, 'Charlton', 1800, 103),
(6, 'Greenoaks', 1300, 106),
(7, 'Forestpark', 1300, 102),
(8, 'Parkland', 1200, 106),
(9, 'Pinecreek', 1500, 109),
(10, 'WalnutHill', 1700, 105);

-- Create Hospital_Info_2 Table
CREATE TABLE Hospital_Info_2 (
    hosp_ID INT NOT NULL,
    hosp_name VARCHAR(255) NOT NULL,
    hosp_needed_Bgrp VARCHAR(10),
    hosp_needed_qnty INT,
    PRIMARY KEY (hosp_ID, hosp_needed_Bgrp)
);

-- Insert Data into Hospital_Info_2
INSERT INTO Hospital_Info_2 (hosp_ID, hosp_name, hosp_needed_Bgrp, hosp_needed_qnty) VALUES
(1, 'MayoClinic', 'A+', 20),
(1, 'MayoClinic', 'AB+', 0),
(1, 'MayoClinic', 'A-', 40),
(1, 'MayoClinic', 'B-', 10),
(1, 'MayoClinic', 'AB-', 20),
(2, 'ClevelandClinic', 'A+', 40),
(2, 'ClevelandClinic', 'AB+', 20),
(2, 'ClevelandClinic', 'A-', 10),
(2, 'ClevelandClinic', 'B-', 30),
(2, 'ClevelandClinic', 'B+', 0),
(2, 'ClevelandClinic', 'AB-', 10),
(3, 'NYU', 'A+', 0),
(3, 'NYU', 'AB+', 0),
(3, 'NYU', 'A-', 0),
(3, 'NYU', 'B-', 20),
(3, 'NYU', 'B+', 10),
(3, 'NYU', 'AB-', 0),
(4, 'Baylor', 'A+', 10),
(5, 'Charlton', 'B+', 30),
(4, 'Baylor', 'A-', 40),
(7, 'Forestpark', 'B-', 40),
(8, 'Parkland', 'B+', 10),
(9, 'Pinecreek', 'AB-', 20);

-- Create Recipient Table
CREATE TABLE Recipient (
    reci_ID INT NOT NULL,
    reci_name VARCHAR(255) NOT NULL,
    reci_age VARCHAR(10),
    reci_Brgp VARCHAR(10),
    reci_Bqnty FLOAT,
    reco_ID INT NOT NULL,
    City_ID INT NOT NULL,
    M_id INT NOT NULL,
    reci_sex VARCHAR(10),
    reci_reg_date DATE,
    PRIMARY KEY (reci_ID)
);

-- Insert Data into Recipient
INSERT INTO Recipient (reci_ID, reci_name, reci_age, reci_Brgp, reci_Bqnty, reco_ID, City_ID, M_id, reci_sex, reci_reg_date) VALUES
(10001, 'Mark', '25', 'B+', 1.5, 101212, 1100, 101, 'M', '2015-12-17'),
(10002, 'Dan', '60', 'A+', 1, 101312, 1100, 102, 'M', '2015-12-16'),
(10003, 'Steve', '35', 'AB+', 0.5, 101312, 1200, 102, 'M', '2015-10-17'),
(10004, 'Parker', '66', 'B+', 1, 101212, 1300, 104, 'M', '2016-11-17'),
(10005, 'Jason', '53', 'B-', 1, 101412, 1400, 105, 'M', '2015-04-17'),
(10006, 'Preetham', '45', 'O+', 1.5, 101512, 1500, 105, 'M', '2015-12-17'),
(10007, 'Swetha', '22', 'AB-', 1, 101212, 1500, 101, 'F', '2015-05-17'),
(10008, 'Swathi', '25', 'B+', 2, 101412, 1300, 103, 'F', '2015-12-14'),
(10009, 'Lance', '30', 'A+', 1.5, 101312, 1100, 104, 'M', '2015-02-16'),
(10010, 'Marsh', '25', 'AB+', 3.5, 101212, 1200, 107, 'M', '2016-10-17');

-- Create Recording_Staff Table
CREATE TABLE Recording_Staff (
    reco_ID INT NOT NULL,
    reco_Name VARCHAR(255) NOT NULL,
    reco_phNo BIGINT,
    PRIMARY KEY (reco_ID)
);

-- Insert Data into Recording_Staff
INSERT INTO Recording_Staff (reco_ID, reco_Name, reco_phNo) VALUES
(101212, 'Walcot', 4045806553),
(101312, 'Henry', 4045806553),
(101412, 'Silva', 4045806553),
(101512, 'Adrian', 4045806553),
(101612, 'Mark', 4045806553),
(101712, 'Abdul', 4045816553),
(101812, 'Jerry', 4045826553),
(101912, 'Tim', 4045836553),
(101012, 'Lekha', 4044846553),
(101112, 'Mark', 4045856553);
