CREATE TABLE SalesData_Staging (
    OrderID NVARCHAR(MAX),
    ProductID NVARCHAR(MAX),
    CustomerID NVARCHAR(MAX),
    ProductName NVARCHAR(MAX),
    Category NVARCHAR(MAX),
    Region NVARCHAR(MAX),
    DateOfSale NVARCHAR(MAX),
    QuantitySold NVARCHAR(MAX),
    UnitPrice NVARCHAR(MAX),
    Discount NVARCHAR(MAX),
    ShippingCost NVARCHAR(MAX),
    PaymentMethod NVARCHAR(MAX),
    CustomerName NVARCHAR(MAX),
    CustomerEmail NVARCHAR(MAX),
    CustomerAddress NVARCHAR(MAX)
);


CREATE TABLE SalesData (
    OrderID INT PRIMARY KEY,
    ProductID VARCHAR(10),
    CustomerID VARCHAR(10),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Region VARCHAR(50),
    DateOfSale DATE,
    QuantitySold INT,
    UnitPrice DECIMAL(10, 2),
    Discount DECIMAL(4, 2),
    ShippingCost DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    CustomerName VARCHAR(100),
    CustomerEmail VARCHAR(100),
    CustomerAddress VARCHAR(255)
);
