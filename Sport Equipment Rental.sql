CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    UserName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    Password VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    EmployeeName VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    Password VARCHAR(100) NOT NULL,
    Position VARCHAR(100),
    SupervisorID INT,
    FOREIGN KEY (SupervisorID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    EquipmentName VARCHAR(100) NOT NULL,
    EquipmentType VARCHAR(100),
    ConditionStatus VARCHAR(100),
    PricePerDay DECIMAL(10,2),
    AvailabilityStatus BOOLEAN
);

CREATE TABLE Rentals (
    RentalID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    CustomerID INT NOT NULL,
    EmployeeID INT,
    EquipmentID INT NOT NULL,
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(50),
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    RentalID INT NOT NULL,
    Amount DECIMAL(10,2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID)
);

CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    EmployeeID INT,
    EquipmentID INT NOT NULL,
    Issue CLOB,
    RepairDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);