DECLARE @StartTime DATETIME, @EndTime DATETIME;
SET @StartTime = GETDATE();

SELECT * FROM DataCube WHERE QuantitySold > 10 ;

SET @EndTime = GETDATE();
SELECT DATEDIFF(ms, @StartTime, @EndTime) AS 'Time in milliseconds';
