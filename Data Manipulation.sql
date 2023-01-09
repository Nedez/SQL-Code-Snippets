/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [FinanceKey]
      ,[DateKey]
      ,[OrganizationKey]

	  /** convert numeric to string for the combination to work**/
	  ,'Orgkey:' + cast([OrganizationKey] as varchar(100))
      ,[DepartmentGroupKey]
      ,[ScenarioKey]
      ,[AccountKey]
      ,[Amount]

	  --Make some Manipulation/calculation here
	  ,cast(([Amount] * 1.15) - [Amount] as numeric(10,2)) as Tax
      ,[date]
	  --Date subtraction/Addtion, M = Month, Y= Year, D = Day
	  ,dateadd(M,-10,[date])
	  ,[Date]
	  --date difference from today's date
	  ,Datediff(Year, [DATE], getdate()) as Date_Difference_yrs
	  ,cast([Date] as date)
	  ,getdate()
  FROM [AdventureWorksDW2019].[dbo].[FactFinance]