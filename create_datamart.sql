/* The new dataMart is being called NWDataMart.
   It is assumed the source database is called Northwind */

DROP DATABASE NWDataMart;
CREATE DATABASE NWDataMart
USE NWDataMart

CREATE TABLE EmployeeDim (
       EmployeeDimID       INT IDENTITY(1,1)   NOT NULL,
       EmployeeKey         INT                 NOT NULL, -- Original key from source
       Name                NVARCHAR (30)       NOT NULL, -- Concat of FirstName and LastName
       Title               NVARCHAR (30)       NOT NULL,
       BirthDate           DATETIME            NOT NULL,
       HireDate            DATETIME            NOT NULL,
       City                NVARCHAR (15)       NOT NULL,
       Region              NVARCHAR (15)       NOT NULL,
       Country             NVARCHAR (15)       NOT NULL,
                           CONSTRAINT PK_EmployeeDim PRIMARY KEY (EmployeeDimID)
)

CREATE TABLE ProductDim (
       ProductDimID        INT IDENTITY(1,1)   NOT NULL,
       ProductKey          INT                 NOT NULL,
       ProductName         NVARCHAR (40)       NOT NULL,
       QuantityPerUnit     NVARCHAR (20)       NOT NULL,
       UnitPrice           MONEY               NOT NULL,
       UnitsInStock        INT                 NOT NULL,
       UnitsOnOrder        INT                 NOT NULL,
       ReorderLevel        INT                 NOT NULL,
       Discontinued        BIT                 NOT NULL,
       CategoryID          INT                 NOT NULL,
       CategoryName        NVARCHAR (15)       NOT NULL,
       SupplierID          INT                 NOT NULL,
       CompanyName         NVARCHAR (40)       NOT NULL,
       SupplierCity        NVARCHAR (15)       NOT NULL,
       SupplierCountry     NVARCHAR (15)       NOT NULL,
                           CONSTRAINT PK_Products PRIMARY KEY (ProductDimID)
)


/* DDL for the date dimension 
   Code originally from recommended date dimension table as per Kimbal (P80)
   http://www.kimballgroup.com/wp-content/uploads/2014/03/Ch3-SampleDateDim.xls
   Amended variable names to match format and date types where corrections were needed
*/

CREATE TABLE DateDim (                                  -- Sample data
       DateDimID               INT             NOT NULL, -- 19960101
       FullDate                SMALLDATETIME   NOT NULL, -- '1996-1-1'
       DayOfWeek               TINYINT         NOT NULL, -- 1
       DayNumInMonth           TINYINT         NOT NULL, -- 1
       DayNumOverall           SMALLINT        NOT NULL, -- 1
       DayName                 VARCHAR(9)      NOT NULL, -- 'Monday'
       DayAbbrev               CHAR(3)         NOT NULL, -- 'Mon'
       WeekdayFlag             CHAR(7)         NOT NULL, -- 'Weekday'
       WeekNumInYear           TINYINT         NOT NULL, -- 1
       WeekNumOverall          SMALLINT        NOT NULL, -- 1
       WeekBeginDate           SMALLDATETIME   NOT NULL, -- '1996-1-1'
       WeekBeginDateKey        INT             NOT NULL, -- 19960101
       Month                   TINYINT         NOT NULL, -- 1
       MonthNumOverall         SMALLINT        NOT NULL, -- 1
       MonthName               VARCHAR(9)      NOT NULL, -- 'January'
       MonthAbbrev             CHAR(3)         NOT NULL, -- 'Jan'
       Quarter                 TINYINT         NOT NULL, -- 1
       Year                    SMALLINT        NOT NULL, -- 1996
       Yearmo                  INT             NOT NULL, -- 199601
       FiscalMonth             TINYINT         NOT NULL, -- 7
       FiscalQuarter           TINYINT         NOT NULL, -- 3
       FiscalYear              SMALLINT        NOT NULL, -- 1996
       LastDayInMonthFlag      CHAR(13)        NOT NULL, -- 'Not Month End' 
       SameDayYearAgoDate      SMALLDATETIME   NOT NULL, -- '1995-1-1'
                               CONSTRAINT PK_DateDim PRIMARY KEY (DateDimID)
)

CREATE TABLE CountryDim (
    CountryDimID             INT  NOT NULL,  -- 1
    ContinentName            VARCHAR(13),    -- 'Asia'
    ContinentCode            CHAR(2),        -- 'AS'
    CountryName              VARCHAR(60),    -- 'Afghanistan, Islamic Republic of'
    CountryCode              CHAR(2),        -- 'AF'
                             CONSTRAINT PK_CountryDim PRIMARY KEY (CountryDimID)
)


/* NOTE - Add Customers table rather than including it in the fact table */

CREATE TABLE CustomerDim (
       CustomerDimID          INT IDENTITY(1,1) NOT NULL,
       CustomerKey            NCHAR(5)          NOT NULL,
       CompanyName            NVARCHAR(40)      NOT NULL,
       City                   NVARCHAR(15)      NOT NULL,
       Country                NVARCHAR(15)      NOT NULL,
                              CONSTRAINT PK_CustomerDim PRIMARY KEY (CustomerDimID)
)


/* Note for Junk Dimensions see here https://www.1keydata.com/datawarehousing/junk-dimension.html */

/* Kimball design https://www.kimballgroup.com/data-warehouse-business-INTelligence-resources/kimball-techniques/dimensional-modeling-techniques/ */

/* to convert from Datetime to date use SELECT CONVERT(varchar, getdate(), 23) */


CREATE TABLE OrdersFactTable (
       OrderKey           INT                 NOT NULL,  -- This is the original OrderID
       ProductDimID       INT                 NOT NULL,
       UnitPrice          MONEY               NOT NULL,
       Quantity           INT                 NOT NULL,
       Discount           REAL                NOT NULL,
       GrossIncome        MONEY               NOT NULL,
       CustomerDimID      INT                 NOT NULL,
       EmployeeDimID      INT                 NOT NULL,
       OrderDate          INT                 NOT NULL,
       RequiredDate       INT                 NOT NULL,
       ShippedDate        INT                 NOT NULL,
       CycleTimeDays      INT                 NOT NULL,  -- calculated time between OrderedDate and ShippedDate in Days
       DeliveredLate      BIT                 NOT NULL,  -- 1 if Shipped Date > Required Date otherwise 0
       ShipVia            INT                 NOT NULL,
       Freight            MONEY               NOT NULL,
       ShipName           NVARCHAR (40)       NOT NULL,
       ShipCity           NVARCHAR (15)       NOT NULL,
       ShipRegion         NVARCHAR (15)       NOT NULL,
       ShipCountry        NVARCHAR (15)       NOT NULL,
                          CONSTRAINT PK_OrderFactTable PRIMARY KEY (OrderKey, ProductDimID, CustomerDimID, OrderDate, RequiredDate, ShippedDate),
                          CONSTRAINT FK_OrderFactTable_EmployeeDim FOREIGN KEY (EmployeeDimID)
                                          REFERENCES EmployeeDim (EmployeeDimID),
                          CONSTRAINT FK_OrderFactTable_ProductDim FOREIGN KEY (ProductDimID)
                                          REFERENCES ProductDim (ProductDimID),
                          CONSTRAINT FK_FTShippedDate_Customers FOREIGN KEY (CustomerDimID)
                                          REFERENCES CustomerDim (CustomerDimID),
                          CONSTRAINT FK_FTOrderDate_DateDim FOREIGN KEY (OrderDate)
                                          REFERENCES DateDim (DateDimID),
                          CONSTRAINT FK_FTRequiredDate_DateDim FOREIGN KEY (RequiredDate)
                                          REFERENCES DateDim (DateDimID),
                          CONSTRAINT FK_FTShippedDate_DateDim FOREIGN KEY (ShippedDate)
                                          REFERENCES DateDim (DateDimID)
);

/* To populate the date dimension table we need to select each distinct date and work out the relevant date info for each row */
/* A fun example here https://www.mssqltips.com/sqlservertip/4054/creating-a-date-dimension-or-calendar-table-in-sql-server/ */
