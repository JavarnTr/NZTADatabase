Drop Table if exists Driver Cascade;
Drop Table if exists Licence Cascade;
Drop Table if exists Vehicle Cascade;
Drop Table if exists Government_Vehicle Cascade;
Drop Table if exists Clean_Car Cascade;
Drop Table if exists Payments Cascade;
Drop Table if exists Warrant_of_Fitness Cascade;
Drop Table if exists Registration Cascade;
Drop Table if exists Penalty Cascade;
Drop Table if exists Applicant Cascade;
Drop Table if exists Instructor Cascade;
Drop Table if exists Driver_Test Cascade;



Create Table Driver (
	DriverID INT PRIMARY KEY,
	Name VARCHAR(30),
	DOB DATE,
	Phone INT,
	Email VARCHAR(30),
	Address VARCHAR(30)
);

Create Table Licence (
	LicenceID INT PRIMARY KEY,
	Class VARCHAR(20),
	Expiry DATE,
	Conditions VARCHAR(50),
	DriverID INT references Driver(DriverID)
);

Create Table Vehicle (
	VehicleID INT PRIMARY KEY,
	Model VARCHAR(20),
	Make VARCHAR(20),
	Colour VARCHAR(20),
	FuelType VARCHAR(20),
	ManufactureYear DATE,
	Class VARCHAR(20),
	Conditions VARCHAR(50),
	Country VARCHAR(20),
	Value MONEY,
	DriverID INT references Driver(DriverID)
);

Create Table Government_Vehicle (
	GovernmentVehicleID INT PRIMARY KEY,
	Purpose VARCHAR(20),
	VehicleID INT references Vehicle(VehicleID)
);

Create Table Clean_Car (
	CleanCarID INT PRIMARY KEY,
	Emissions VARCHAR(30),
	VehicleID INT references Vehicle(VehicleID)
);

Create Table Payments (
	PaymentID INT PRIMARY KEY,
	Reason VARCHAR(50),
	Date DATE,
	Amount MONEY,
	DriverID INT references Driver(DriverID)
);

Create Table Warrant_of_Fitness (
	WarrantID INT PRIMARY KEY,
	IssueDate DATE,
	Expiry DATE,
	Cost MONEY,
	Issues VARCHAR(100),
	VehicleID INT references Vehicle(VehicleID),
	PaymentID INT references Payments(PaymentID)
);

Create Table Registration (
	RegistrationID INT PRIMARY KEY,
	Date DATE,
	Expiry DATE,
	Cost MONEY,
	VehicleID INT references Vehicle(VehicleID),
	PaymentID INT references Payments(PaymentID)
);

Create Table Penalty (
	PenaltyID INT PRIMARY KEY,
	Reason VARCHAR(50),
	Date DATE,
	Amount MONEY,
	PayDate DATE,
	DriverID INT references Driver(DriverID),
	PaymentID INT references Payments(PaymentID)
);

Create Table Applicant (
	ApplicantID INT PRIMARY KEY,
	DOB DATE,
	Email VARCHAR(50),
	DriverID INT references Driver(DriverID)
);

Create Table Instructor (
	InstructorID INT PRIMARY KEY,
	Name VARCHAR(30),
	Phone INT,
	Address VARCHAR(50),
	Qualification VARCHAR(50)
);

Create Table Driver_Test (
	TestID INT PRIMARY KEY,
	Date DATE,
	Result VARCHAR(100),
	Type VARCHAR(20),
	ApplicantID INT references Applicant(ApplicantID),
	PaymentID INT references Payments(PaymentID),
	InstructorID INT references Instructor(InstructorID)
);