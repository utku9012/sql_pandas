USE CarRentalDB

SELECT RentDate FROM Rental

--Distribution of Payment Methods
SELECT p.Payment_Method,COUNT(r.RentalID) AS NUMBER FROM  Payment p
INNER JOIN Rental r ON  p.RentalID = r.RentalID
GROUP BY p.Payment_Method

--All rentals with brand and model information 
SELECT DISTINCT r.RentalID, r.CustomerID, r.VehicleID, v.Brand, v.Model, r.RentDate, r.ReturnDate, r.Amount FROM Rental r INNER JOIN Vehicle v ON r.VehicleID = v.VehicleID

--Car rentals by branches
SELECT r.RentalID, c.FirstName, c.LastName, v.VehicleID, v.Brand, v.Model, v.ModelYear, r.RentDate, r.ReturnDate
FROM Rental r
INNER JOIN Customer c ON r.CustomerID = c.CustomerID
INNER JOIN Vehicle v ON r.VehicleID = v.VehicleID
WHERE r.BranchID = 1;

--Which vehicles are available in which branches
SELECT v.VehicleID, v.Brand, v.Model, v.ModelYear, v.Color, v.LicensePlateNumber, v.SegmentID, v.BranchID, b.BranchName
FROM Vehicle v
INNER JOIN Branch b
on v.BranchID = b.BranchID
WHERE v.BranchID = 4

--Rental information about a spesific car by ID
SELECT r.RentalID, c.FirstName, c.LastName, r.RentDate, r.ReturnDate, r.Amount
FROM Rental r
INNER JOIN Customer c ON r.CustomerID = c.CustomerID
WHERE r.VehicleID = 25;

--Newer models than 2020
SELECT * FROM Vehicle
WHERE ModelYear > 2020

--Cars that are Blue
SELECT *
FROM Vehicle
WHERE Color = 'Blue'

--Rentals of a specific Customer
SELECT r.RentalID, v.Brand, v.Model, r.RentDate, r.ReturnDate, r.Amount
FROM Rental r
INNER JOIN Vehicle v ON r.VehicleID = v.VehicleID
WHERE r.CustomerID = 20;

--Most rented 20 cars
SELECT TOP 20 v.Brand, v.Model, COUNT(r.RentalID) AS RentalCount
FROM Rental r
INNER JOIN Vehicle v ON r.VehicleID = v.VehicleID
GROUP BY v.Brand, v.Model
ORDER BY RentalCount DESC;

--Count of total personals for each Department
SELECT Department, Count(*) as 'Personel by Department'
FROM Employee
GROUP BY Department
ORDER BY Department ASC

--Rentals that bring more than 10000 liras 
SELECT * 
FROM Rental 
WHERE Amount >= 10000
ORDER BY Amount DESC

--Total Sales for each segment
SELECT SegmentLabel, sum(Amount) as 'Total Amount'
FROM Vehicle v
INNER JOIN Rental r on v.VehicleID = r.VehicleID
INNER JOIN VehicleTypes vt on v.SegmentID = vt.SegmentID
GROUP BY SegmentLabel

--Cars rented in March
SELECT r.RentalID, v.Brand, v.Model, c.FirstName, c.LastName, r.RentDate, r.ReturnDate
FROM Rental r
INNER JOIN Vehicle v ON r.VehicleID = v.VehicleID
INNER JOIN Customer c ON r.CustomerID = c.CustomerID
WHERE r.RentDate BETWEEN '2025-03-01' AND '2025-03-31';

--Total Revenue in April
SELECT sum(Amount) as 'Total Revenue'
FROM Vehicle v
INNER JOIN Rental r on v.VehicleID = r.VehicleID
WHERE r.RentDate BETWEEN '2025-04-01' AND '2025-04-30';

--Personal information of customers that have rented a B Segment car 
SELECT DISTINCT c.FirstName,c.LastName,c.PhoneNo, v.VehicleID, vt.SegmentLabel
FROM Customer c 
INNER JOIN Rental r ON c.CustomerID = r.CustomerID
INNER JOIN Vehicle v ON r.VehicleID = v.VehicleID
INNER JOIN VehicleTypes vt ON v.SegmentID = vt.SegmentID
WHERE vt.SegmentLabel ='B'

--Vehicle information by VehicleID
SELECT Brand,Model,ModelYear,LicensePlateNumber 
FROM Vehicle
WHERE VehicleID = 45

--Which branch earned the most revenue in February?
SELECT b.BranchID, b.BranchName, SUM(Amount) as 'Total Revenue'
FROM Branch b
INNER JOIN Rental r ON b.BranchID = r.BranchID
WHERE r.RentDate BETWEEN '2025-02-01' AND '2025-02-28'
GROUP BY b.BranchID, b.BranchName
ORDER BY 'Total Revenue' DESC

--Payment details of a specific Rental record
SELECT p.PaymentID,p.RentalID,p.PaymentDate,p.Payment_Method,r.Amount
FROM Payment p
INNER JOIN Rental r ON p.RentalID = r.RentalID
WHERE r.RentalID = 90

--Views

--Customer/Country Segmentation
CREATE VIEW CustomerCountryGroupBY
AS
SELECT Country,Count(CustomerID) AS 'Customer Count' FROM Customer
GROUP BY Country

SELECT * FROM CustomerCountryGroupBY

--Vehicle Availability Status
CREATE VIEW VehicleStatus AS
SELECT
    v.VehicleID,
    v.LicensePlateNumber,
    v.Brand,
    v.Model,
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Rental r
            WHERE r.VehicleID = v.VehicleID AND r.ReturnDate >= convert(date, getdate())
        ) THEN 'Rented'
        ELSE 'Available'
    END AS Status
FROM Vehicle v;

--Available cars today
SELECT * FROM VehicleStatus WHERE Status = 'Available'

--Procedures

----New Rental Record Procedure
CREATE PROCEDURE AddNewRental
	@_CustomerID INT,
	@_VehicleID INT,
	@_BranchID INT,
	@_RentDate DATE,
	@_ReturnDate DATE
AS
BEGIN
	INSERT INTO Rental (CustomerID, VehicleID, BranchID, RentDate, ReturnDate)
	VALUES ( @_CustomerID, @_VehicleID, @_BranchID, @_RentDate, @_ReturnDate);
END;

EXEC AddNewRental @_CustomerID = 42, @_VehicleID = 28, @_BranchID = 4, @_RentDate = '2025-04-21', @_ReturnDate = '2025-04-25';

SELECT * FROM Rental_Log

--New Customer Record Procedure
CREATE PROCEDURE AddNewCustomer
	@_FirstName NVARCHAR (30),
	@_LastName NVARCHAR (40),
	@_Country NVARCHAR (45),
	@_DateOfBirth DATE,
	@_Email NVARCHAR (100),
	@_City NVARCHAR(100),
	@_District NVARCHAR(100),
	@_PhoneNo NVARCHAR(100),
	@_DriverLicenseNumber INT
AS
BEGIN
	INSERT INTO Customer (FirstName, LastName, Country, DateOfBirth, Email, City , District, PhoneNo, DriverLicenseNumber)
	VALUES (@_FirstName, @_LastName, @_Country, @_DateOfBirth, @_Email, @_City , @_District, @_PhoneNo, @_DriverLicenseNumber);
END;

EXEC AddNewCustomer1 @_FirstName = 'Mete' , @_LastName = 'Ermeniçe' , @_Country = 'Turkey' , @_DateOfBirth = '2003-12-12', @_Email = 'mete.kraloyunda@hotmail.com', @_City = 'Edirne' , @_District = 'Keþan', @_PhoneNo = '05355508727', @_DriverLicenseNumber = 507692

SELECT * FROM Customer 
ORDER BY DateOfBirth DESC