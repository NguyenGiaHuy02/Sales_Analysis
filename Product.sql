SELECT [ProductKey] AS ProductKey
      --,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS ProductName
	  ,pc.[EnglishProductCategoryName] as CategoryName
	  ,ps.[EnglishProductSubcategoryName] as SubCategoryName
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] AS Color
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS Size
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] AS ProductLine
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS ModelName
      --,[LargePhoto]
      ,[EnglishDescription] AS Description
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL([Status],'OutDated') AS Status
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as p
  LEFT JOIN [AdventureWorksDW2022].[dbo].DimProductSubcategory as ps on p.[ProductSubcategoryKey] = ps.[ProductSubcategoryKey]
  LEFT JOIN [AdventureWorksDW2022].[dbo].DimProductCategory as pc on ps.[ProductCategoryKey] = pc.[ProductCategoryKey]
