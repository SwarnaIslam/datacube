DECLARE @StartTime DATETIME, @EndTime DATETIME;
SET @StartTime = GETDATE();

SELECT Location, Product, Time, Profit FROM DataCube WHERE QuantitySold BETWEEN 200 AND 400 AND Location ='Argentina' ;

SET @EndTime = GETDATE();
SELECT DATEDIFF(ms, @StartTime, @EndTime) AS 'Time in milliseconds';
