SELECT c.[CustomerKey] AS CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] AS FirstName
      --,c.[MiddleName] AS MiddleName
      ,c.[LastName] AS LastName
	  ,c.[FirstName] + ' ' + [LastName] As FullName
      --,[NameStyle] 
      ,c.[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,Case c.[Gender] When 'M' Then 'Male' When 'F' Then 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] AS DateFirstPurchase
      --,[CommuteDistance]
	  ,g.City as CustomerCity
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  Left join [AdventureWorksDW2022].[dbo].DimGeography as g 
  on c.GeographyKey = g.GeographyKey
  Order by CustomerKey ASC
