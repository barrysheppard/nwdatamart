/* ETL Upload of the data */
/* The code below will generate a list of dates between the earliest and latest date in the database */

INSERT INTO NWDataMart.dbo.EmployeeDim                (EmployeeKey,
                                                       Name,
                                                       Title,
                                                       BirthDate,
                                                       HireDate,
                                                       City,
                                                       Region,
                                                       Country)
SELECT DISTINCT E.EmployeeID                          AS EmployeeKey,
                CONCAT(E.LastName, ', ', E.FirstName) AS Name,
                E.Title                               AS Title,
                E.BirthDate                           AS BirthDate,
                E.HireDate                            AS HireDate,
                E.City                                AS City,
                ISNULL(E.Region, 'N/A')               AS Region,
                E.Country                             AS Country
  FROM Northwind.dbo.Employees AS E


INSERT INTO NWDataMart.dbo.CustomerDim                (CustomerKey,
                                                      CompanyName,
                                                      City,
                                                      Country
                                                      )
SELECT DISTINCT C.CustomerID                          AS CustomerKey,
                C.CompanyName                         AS CompanyName,
                C.City                                AS City,
                C.Country                             AS Country
  FROM Northwind.dbo.Customers AS C


INSERT INTO NWDataMart.dbo.ProductDim                 (ProductKey,
                                                      ProductName,
                                                      QuantityPerUnit,
                                                      UnitPrice,
                                                      UnitsInStock,
                                                      UnitsOnOrder,
                                                      ReorderLevel,
                                                      Discontinued,
                                                      CategoryID,
                                                      CategoryName,
                                                      SupplierID,
                                                      CompanyName,
                                                      SupplierCity,
                                                      SupplierCountry)
SELECT DISTINCT P.ProductID                           AS ProductKey,
                P.ProductName                         AS ProductName,
                P.QuantityPerUnit                     AS QuantityPerUnit,
                P.UnitPrice                           AS UnitPrice,
                P.UnitsInStock                        AS UnitsInStock,
                P.UnitsOnOrder                        AS UnitsOnOrder,
                P.ReorderLevel                        AS ReorderLevel,
                P.Discontinued                        AS Discontinued,
                P.CategoryID                          AS CategoryID,
                CAT.CategoryName                      AS CategoryName,
                P.SupplierID                          AS SupplierID,
                S.CompanyName                         AS CompanyName,
                S.City                                AS SupplierCity,
                S.Country                             AS SupplierCountry
  FROM Northwind.dbo.Products AS P
       LEFT JOIN Northwind.dbo.Categories AS CAT ON P.CategoryID = CAT.CategoryID
       LEFT JOIN Northwind.dbo.Suppliers AS S ON P.SupplierID = S.SupplierID

/* To get the IDs we need to get the new surrogate keys with a left join INTo the 
dimensions that have already been generated */

INSERT INTO NWDataMart.dbo.OrdersFactTable                     (OrderKey,
                                                                ProductDimID,
                                                                UnitPrice,
                                                                Quantity,
                                                                Discount,
                                                                GrossIncome,
                                                                CustomerDimID,
                                                                EmployeeDimID,
                                                                OrderDate,
                                                                RequiredDate,
                                                                ShippedDate,
                                                                CycleTimeDays,
                                                                DeliveredLate,
                                                                ShipVia,
                                                                Freight,
                                                                ShipName,
                                                                ShipCity,
                                                                ShipRegion,
                                                                ShipCountry)
SELECT DISTINCT O.OrderID                                    AS OrderKey,
                DMP.ProductDimID                             AS ProductID,
                OD.UnitPrice                                 AS UnitPrice,
                OD.Quantity                                  AS Quantity,
                OD.Discount                                  AS Discount,
                OD.UnitPrice * OD.Quantity * (1-OD.Discount) AS GrossIncome,
                DMC.CustomerDimID                            AS CustomerID,
                DME.EmployeeDimID                            AS EmployeeID,
                CONVERT(char(8),O.OrderDate,112)             AS OrderDate,
                CONVERT(char(8),O.RequiredDate,112)          AS RequiredDate,
                -- Where shipped date not available use OrderDate
                ISNULL(CONVERT(char(8),O.ShippedDate,112),CONVERT(char(8),O.OrderDate,112))      AS ShippedDate,
                -- For cycle time, where shipped date not available add 99 days to the OrderDate
                DATEDIFF(DAY, O.OrderDate, ISNULL(O.ShippedDate, DATEADD(DAY, 99, O.OrderDate))) AS CycleTimeDays,
                CASE WHEN ISNULL(O.ShippedDate, DATEADD(DAY, 99, O.OrderDate)) > O.RequiredDate THEN 1 ELSE 0 END AS DeliveredLate,
                O.ShipVia                                    AS ShipVia,
                O.Freight                                    AS Freight,
                O.ShipName                                   AS ShipName,
                O.ShipCity                                   AS ShipCity,
                ISNULL(O.ShipRegion, 'N/A')                  AS ShipRegion,
                O.ShipCountry                                AS ShipCountry
  FROM [Northwind].[dbo].[Order Details]      AS OD
       LEFT JOIN Northwind.dbo.Orders         AS O   ON O.OrderID = OD.OrderID
       LEFT JOIN Northwind.dbo.Shippers       AS S   ON O.ShipVia = S.ShipperID
       LEFT JOIN NWDataMart.dbo.ProductDim    AS DMP ON OD.ProductID = DMP.ProductKey
       LEFT JOIN NWDataMart.dbo.CustomerDim   AS DMC ON O.CustomerID = DMC.CustomerKey
       LEFT JOIN NWDataMart.dbo.EmployeeDim   AS DME ON O.EmployeeID = DME.EmployeeKey
;