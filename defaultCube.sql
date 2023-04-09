SELECT Product, Location, Time, SalesRevenue, QuantitySold, SUM(Profit) AS TotalProfit
FROM DataCube
GROUP BY CUBE(Product, Location, Time, SalesRevenue, QuantitySold)
ORDER BY ISNULL(Product, 1), ISNULL(Location, 1), ISNULL(Time, 1), ISNULL(SalesRevenue, 1), ISNULL(QuantitySold, 1);
