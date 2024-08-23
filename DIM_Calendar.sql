--Cleansed DIM_DateTable
SELECT
    [DateKey],
      [FullDateAlternateKey] AS Date,
      --,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] AS Day,
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      [WeekNumberOfYear] AS WeekNum,
      LEFT([EnglishMonthName],3) AS Month,
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      [MonthNumberOfYear] AS MonthNum,
      [CalendarQuarter] AS Quarter,
      [CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM 
    [AdventureWorksDW2022].[dbo].[DimDate]
	WHERE CalendarYear >= 2013
