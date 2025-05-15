CREATE DATABASE CarRentalDB
USE CarRentalDB

DROP DATABASE CarRentalDB

EXEC sp_who2
KILL 74

CREATE TABLE VehicleTypes (
	SegmentID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	SegmentLabel NVARCHAR(10),
	SegmentDesc NVARCHAR(1000),
	DailyFee DECIMAL(8,2),
);

CREATE TABLE Branch ( 
	BranchID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	BranchName NVARCHAR(150),
	Country NVARCHAR(50),
	BranchLocation NVARCHAR(100),
	PhoneNo NVARCHAR(100) NOT NULL,
);

CREATE TABLE Vehicle (
	VehicleID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Brand NVARCHAR(20) NOT NULL,
	Model NVARCHAR(40) NOT NULL,
	ModelYear INT,
	Color NVARCHAR(15),
	LicensePlateNumber NVARCHAR(25) UNIQUE NOT NULL,
	SegmentID INT NOT NULL,
	BranchID INT,
	FOREIGN KEY(SegmentID) REFERENCES VehicleTypes(SegmentID),
	FOREIGN KEY(BranchID) REFERENCES Branch(BranchID),
);


CREATE TABLE Customer (
	CustomerID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FirstName NVARCHAR (30) NOT NULL,
	LastName NVARCHAR (40) NOT NULL,
	Country NVARCHAR (45),
	DateOfBirth DATE,
	Email NVARCHAR (100) UNIQUE,
	City NVARCHAR(100),
	District NVARCHAR(100),
	PhoneNo NVARCHAR(100) NOT NULL,
	DriverLicenseNumber INT NOT NULL,
);

CREATE TABLE Rental ( 
	RentalID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	CustomerID INT NOT NULL,
	VehicleID INT NOT NULL,
	BranchID INT, /*location for pickup and return*/
	RentDate DATE,
	ReturnDate DATE,
	Amount DECIMAL(8,2),
	FOREIGN KEY(BranchID) REFERENCES Branch(BranchID),
	FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
	FOREIGN KEY(VehicleID) REFERENCES Vehicle(VehicleID),
);

CREATE TABLE Rental_Log (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    RentalID INT,
	CustomerID INT,
	VehicleID INT,
	BranchID INT,
	RentDate DATE,
	ReturnDate DATE,
    ActionType VARCHAR(50), --INSERT,UPDATE,DELETE
    ActionDate DATETIME, 
    OldRentDate DATE,
    OldReturnDate DATE,
    PerformedBy VARCHAR(100),
);

CREATE TABLE Employee (
	EmployeeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FirstName NVARCHAR (30) NOT NULL,
	LastName NVARCHAR (40) NOT NULL,
	DateOfBirth DATE,
	Email NVARCHAR (100) UNIQUE,
	Position NVARCHAR(50),
	Department NVARCHAR(50),
	BranchID INT,
	FOREIGN KEY(BranchID) REFERENCES Branch(BranchID),
);

CREATE TABLE Payment (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY ,
    RentalID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    Payment_Method VARCHAR(50),
    FOREIGN KEY(RentalID) REFERENCES Rental(RentalID)
);

ALTER TABLE Branch 
ADD City NVARCHAR(100);

ALTER TABLE Branch 
ADD District NVARCHAR(100);

ALTER TABLE Branch 
DROP COLUMN BranchLocation;

CREATE TRIGGER trg_CalculateTotalPrice
ON Rental
AFTER INSERT
AS
BEGIN
    UPDATE r
    SET r.Amount = vt.DailyFee * DATEDIFF(DAY, r.RentDate, r.ReturnDate)
    FROM Rental r

    INNER JOIN Vehicle v ON r.VehicleID = v.VehicleID
	INNER JOIN VehicleTypes vt ON v.SegmentID = vt.SegmentID
	INNER JOIN INSERTED i ON r.RentalID = i.RentalID;
END;

CREATE TRIGGER trg_AfterRentalInsert_Payment
ON Rental
AFTER INSERT
AS
BEGIN
    INSERT INTO Payment (RentalID, PaymentDate, Payment_Method)
    SELECT 
        i.RentalID,
        i.RentDate,
        CASE 
            WHEN ABS(CHECKSUM(NEWID())) % 3 = 0 THEN 'Cash'
            WHEN ABS(CHECKSUM(NEWID())) % 3 = 1 THEN 'Debit Card'
            ELSE 'Credit Card'
        END AS Payment_Method
    FROM INSERTED i;
END;

CREATE TRIGGER trg_Rental_Insert_Log 
ON Rental
AFTER INSERT
AS
BEGIN
	DECLARE @RentalID INT, @CustomerID INT, @VehicleID INT, @BranchID INT, @RentDate DATE, @ReturnDate DATE;

	SELECT  @RentalID = RentalID, @CustomerID = CustomerID, @VehicleID = VehicleID, @BranchID = BranchID, @RentDate = RentDate, @ReturnDate = ReturnDate FROM inserted;

    INSERT INTO Rental_Log (RentalID, CustomerID, VehicleID, BranchID, RentDate, ReturnDate, ActionDate, ActionType, PerformedBy)
    SELECT RentalID, CustomerID, VehicleID, BranchID, RentDate, ReturnDate, GETDATE(), 'INSERT', SYSTEM_USER
    FROM inserted;
END;

CREATE TRIGGER trg_Rental_Update_Log /* insert ve update ayný anda çalýþýyor ve logda 2 kere kayýt ediyor  */
ON Rental
AFTER UPDATE
AS
BEGIN
	DECLARE @RentalID INT, @CustomerID INT, @VehicleID INT, @BranchID INT, @OldRentDate DATE, @OldReturnDate DATE;
	DECLARE @RentDate DATE, @ReturnDate DATE;

	SELECT  @RentalID = RentalID, @CustomerID = CustomerID, @VehicleID = VehicleID, @BranchID = BranchID, @OldRentDate = RentDate, @OldReturnDate = ReturnDate FROM deleted;
	SELECT  @RentDate = RentDate, @ReturnDate = ReturnDate FROM inserted;

	INSERT INTO Rental_Log ( RentalID,CustomerID,VehicleID,BranchID,RentDate,ReturnDate,ActionDate,ActionType,PerformedBy,OldRentDate,OldReturnDate)
	SELECT RentalID,CustomerID,VehicleID,BranchID,@RentDate,@ReturnDate,GETDATE(),'UPDATE',SYSTEM_USER,@OldRentDate,@OldReturnDate
	FROM inserted;
END;


