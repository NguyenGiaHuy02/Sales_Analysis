-- Cleansed DIM_Date Table
SELECT 
  [DateKey] AS DateKey, 
  [FullDateAlternateKey] AS Dates, 
  --,[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS Days, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] As Weeks, 
  [EnglishMonthName] AS Months,
  Left(EnglishMonthName,3) as MonthShort,
  --,[SpanishMonthName]
  --,[FrenchMonthName] 
  [MonthNumberOfYear] AS Monthno, 
  [CalendarQuarter] AS Quarters, 
  [CalendarYear] AS Years
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
Where CalendarYear >= 2019
	
