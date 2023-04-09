DROP VIEW infoCube;
GO 
CREATE VIEW infoCube AS SELECT Product, Location, Time, SalesRevenue, QuantitySold, SUM(Profit) AS TotalProfit
FROM
  (
    SELECT Product, Location, Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL

    SELECT Product, Location, Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, Location, Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, Location, NULL AS Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, NULL AS Location, Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, Location, Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL

    SELECT Product, NULL AS Location, NULL AS Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, NULL AS Location, Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, Location, NULL AS Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, Location, NULL AS Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, NULL AS Location, Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
	SELECT NULL AS Product,  Location, Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
	SELECT NULL AS Product, Location, Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
	SELECT Product, NULL AS Location, Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
	SELECT Product, Location, NULL AS Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
	SELECT Product, Location, Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL

    SELECT NULL AS Product, Location, Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, NULL AS Location, NULL AS Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, Location, NULL AS Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, NULL AS Location, NULL AS Time, SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, NULL AS Location, Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
    UNION ALL
	SELECT Product, NULL AS Location, Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, Location, NULL AS Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT Product, NULL AS Location, NULL AS Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, Location, NULL AS Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, NULL AS Location, Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL


    SELECT NULL AS Product, Location, NULL AS Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, NULL AS Location, NULL AS Time, NULL AS SalesRevenue, QuantitySold, Profit FROM DataCube
	UNION ALL
	SELECT Product, NULL AS Location, NULL AS Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL
    SELECT NULL AS Product, NULL AS Location, NULL AS Time, SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
	UNION ALL
	SELECT NULL AS Product, NULL AS Location, Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
    UNION ALL

    SELECT NULL AS Product, NULL AS Location, NULL AS Time, NULL AS SalesRevenue, NULL AS QuantitySold, Profit FROM DataCube
  ) AS subquery
GROUP BY Product, Location, Time, SalesRevenue, QuantitySold;
