DECLARE @StartTime DATETIME, @EndTime DATETIME;
SET @StartTime = GETDATE();

SELECT Location, Product, Time, TotalProfit FROM infoCube WHERE QuantitySold BETWEEN 200 AND 400 AND Location ='Argentina' ;

SET @EndTime = GETDATE();
SELECT DATEDIFF(ms, @StartTime, @EndTime) AS 'Time in milliseconds';
