-- Customer table
CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL
);

-- Employee table
CREATE TABLE Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Position VARCHAR(50),
    SupervisorID INT,
    FOREIGN KEY (SupervisorID) REFERENCES Employee(EmployeeID)
);

-- Equipment table
CREATE TABLE Equipment (
    EquipmentID INT AUTO_INCREMENT PRIMARY KEY,
    EquipmentName VARCHAR(100) NOT NULL,
    EquipmentType VARCHAR(50),
    `Condition` VARCHAR(50),
    PricePerDay DECIMAL(10,2) NOT NULL,
    AvailabilityStatus BOOLEAN DEFAULT TRUE
);

-- Rentals table
CREATE TABLE Rentals (
    RentalID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    EquipmentID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);

-- Payments table
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    RentalID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID)
);

-- Maintenance table
CREATE TABLE Maintenance (
    MaintenanceID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    EquipmentID INT NOT NULL,
    Issue TEXT,
    RepairDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);
