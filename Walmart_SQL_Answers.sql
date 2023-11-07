-- To Preview all the collumns

Select *
From CleanData

-- Calculation for the average Holiday Sales

Select AVG([Weekly Sales]) as [Average Holiday Sales]
From CleanData
Where [Holiday Flag] = 1;


-- Calculation for the average Non-Holiday Sales

Select AVG([Weekly Sales]) as [Average Non-Holiday Sales]
From CleanData
Where [Holiday Flag] = 0;


-- Calculation for the Percentage increased

Select (((Select AVG([Weekly Sales]) as [Average Holiday Sales]
From CleanData
Where [Holiday Flag] = 1) - (Select AVG([Weekly Sales]) as [Average Non-Holiday Sales]
From CleanData
Where [Holiday Flag] = 0)) / (Select AVG([Weekly Sales]) as [Average Non-Holiday Sales]
From CleanData
Where [Holiday Flag] = 0)) * 100 as [Percent Increased]



-- Based on the calculations there 7.83 % increased in sales between Holiday and Non-Holiday

