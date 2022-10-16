/*********************

This script creates a test database named "PersonDatabase". Please use this
test data to answer the SQL test questions. If you cant create this locally, connect to 
the test data warehouse server and use the PersonDatabase.

Note: All data in this database has been randomly generated. All demographic and risk
information is fictional. 

*********************/


USE MASTER
GO
IF EXISTS 
	(
	SELECT 1 
	FROM SYS.DATABASES
	WHERE NAME = 'PersonDatabase'
	)
	DROP DATABASE PersonDatabase
	GO

CREATE DATABASE PersonDatabase
GO

USE PersonDatabase
GO

CREATE TABLE dbo.Person
(
	PersonID INT
	, PersonName VARCHAR(255)
	, Sex VARCHAR(10)
	, DateofBirth DATETIME
	, Address VARCHAR(255)
	, IsActive INT
)

GO

CREATE TABLE dbo.Risk
(
	PersonID VARCHAR(10)
	, AttributedPayer VARCHAR(255)
	, RiskScore DECIMAL(10,6)
	, RiskLevel VARCHAR(10)
	, RiskDateTime DATETIME
)

GO

CREATE TABLE dbo.Dates(
	DateValue datetime NULL,
	DateDayofMonth int NULL,
	DateDayofYear int NULL,
	DateQuarter int NULL,
	DateWeekdayName varchar(20) NULL,
	DateMonthName varchar(20) NULL,
	DateYearMonth char(6) NULL
) 
GO




--PERSON DATA

INSERT INTO DBO.PERSON (PersonID, PersonName, Sex, DateofBirth, Address, IsActive)
VALUES (1, 'Azra (Az) Magnus', 'Male','1997-07-24', '7316 N. Durham St. Morgantown, WV 26508', 1)

INSERT INTO DBO.PERSON (PersonID, PersonName, Sex, DateofBirth, Address, IsActive)
VALUES (2, 'Palmer Hales (Billy)', 'Male','1951-07-21', '686 Myrtle Dr. Banning, CA 92220', 1)

INSERT INTO DBO.PERSON (PersonID, PersonName, Sex, DateofBirth, Address, IsActive)
VALUES (3, '(Lilly) Lilla Solano', 'F','1982-05-17', '354 Jockey Hollow Street Hoffman Estates, IL 60169', 1)

INSERT INTO DBO.PERSON (PersonID, PersonName, Sex, DateofBirth, Address, IsActive)
VALUES (4, 'Romeo Styles', 'Male','1949-06-02', '306 Beach Ave. Springfield, PA 19064', 1)

INSERT INTO DBO.PERSON (PersonID, PersonName, Sex, DateofBirth, Address, IsActive)
VALUES (5, 'Margot Steed ())', 'Female','1962-03-12', '62 South Peg Shop Street Terre Haute, IN 47802', 1)

--RISK DATA

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (1, 'Cigna',1.231, 'Bronze', getdate() - 3)

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (1, 'Medicare',4.453, 'Gold', getdate() - 5)

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (1, 'Cigna', 2.568, 'Silver', getdate())

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (1, 'Anthem', 3.945, 'Bronze', getdate())

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (2, 'Carefirst',12.51, 'Bronze', getdate() - 3)

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (2, 'Carefirst', 50.201, 'Gold', getdate())

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (4, 'Cigna', 1.231, 'Bronze', getdate())

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (4, 'Anthem', 4.63, 'Silver', getdate())

INSERT INTO DBO.Risk (PersonID, AttributedPayer, RiskScore, RiskLevel, RiskDateTime)
VALUES (5, 'Medicare', .342, 'Bronze', getdate() - 3)

