INSERT INTO SalesData (
    OrderID, ProductID, CustomerID, ProductName, Category,
    Region, DateOfSale, QuantitySold, UnitPrice, Discount,
    ShippingCost, PaymentMethod, CustomerName, CustomerEmail, CustomerAddress
)
SELECT
    TRY_CAST(OrderID AS INT),
    ProductID,
    CustomerID,
    ProductName,
    Category,
    Region,
    TRY_CAST(Convert(DATE, LTRIM(RTRIM(DateOfSale)), 105) AS DATE),
    TRY_CAST(QuantitySold AS INT),
    TRY_CAST(UnitPrice AS DECIMAL(10,2)),
    TRY_CAST(Discount AS DECIMAL(5,2)),
    TRY_CAST(ShippingCost AS DECIMAL(10,2)),
    PaymentMethod,
    CustomerName,
    CustomerEmail,
    CustomerAddress
FROM SalesData_Staging
WHERE
    TRY_CAST(OrderID AS INT) IS NOT NULL
    AND TRY_CAST(Convert(DATE, DateOfSale, 105) AS DATE) IS NOT NULL;
