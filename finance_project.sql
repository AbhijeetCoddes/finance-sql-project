
-- SQL Dump: Finance Project
CREATE DATABASE IF NOT EXISTS FinanceDB;
USE FinanceDB;

DROP TABLE IF EXISTS Portfolio;
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Segment VARCHAR(50),
    Region VARCHAR(50)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    Date DATE,
    Amount DECIMAL(12,2),
    Type VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Portfolio (
    PortfolioID INT PRIMARY KEY,
    CustomerID INT,
    AssetType VARCHAR(50),
    Value DECIMAL(12,2),
    RiskLevel VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers VALUES (1, 'Alice Sharma', 'Retail', 'North');
INSERT INTO Customers VALUES (2, 'Raj Gupta', 'Corporate', 'West');
INSERT INTO Customers VALUES (3, 'Meena Iyer', 'Retail', 'South');
INSERT INTO Customers VALUES (4, 'Arjun Patel', 'Corporate', 'East');
INSERT INTO Customers VALUES (5, 'Neha Verma', 'Retail', 'North');
INSERT INTO Transactions VALUES (101, 1, '2023-01-10', 5000.0, 'Investment');
INSERT INTO Transactions VALUES (102, 1, '2023-02-14', -1200.0, 'Loan Payment');
INSERT INTO Transactions VALUES (103, 2, '2023-03-05', 25000.0, 'Investment');
INSERT INTO Transactions VALUES (104, 3, '2023-04-20', -800.0, 'Credit');
INSERT INTO Transactions VALUES (105, 4, '2023-05-11', 40000.0, 'Investment');
INSERT INTO Transactions VALUES (106, 5, '2023-06-01', 3000.0, 'Investment');
INSERT INTO Transactions VALUES (107, 5, '2023-07-15', -2000.0, 'Loan Payment');
INSERT INTO Portfolio VALUES (201, 1, 'Equity', 20000.0, 'High');
INSERT INTO Portfolio VALUES (202, 2, 'Bond', 50000.0, 'Low');
INSERT INTO Portfolio VALUES (203, 3, 'Mutual Fund', 12000.0, 'Medium');
INSERT INTO Portfolio VALUES (204, 4, 'Equity', 35000.0, 'High');
INSERT INTO Portfolio VALUES (205, 5, 'Bond', 15000.0, 'Low');
