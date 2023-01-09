/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [FinanceKey]
      ,[DateKey]
      ,[OrganizationKey]
      ,[DepartmentGroupKey]
      ,[ScenarioKey]
      ,[AccountKey]
      ,[Amount]
      ,[Date]
  FROM [AdventureWorksDW2019].[dbo].[FactFinance]
  
  select * 
  from
  FactFinance as FACT right Join
  DimOrganization as ORG
  ON FACT.OrganizationKey = ORG.organizationKey left join
  DimAccount as ACCT
  ON FACT.AccountKey = ACCT.AccountKey Left Join
  Dimscenario as SCN
  ON FACT.ScenarioKey = SCN.ScenarioKey Left Join
  DimDate as DTE
  ON FACT.DateKey = DTE.DateKey Left join
  DimDepartmentGroup as DEPT
  ON Fact.DepartmentGroupKey = DEPT.DepartmentGroupKey

  Select FACT.OrganizationKey, ORG.OrganizationName, FACT.DepartmentGroupKey, DEPT.DepartmentGroupName, 
  replace (DEPT.DepartmentGroupName, 'and', '') as DepartmentGroupName_NoAND,
  Substring (replace (ORG.OrganizationName, 's','-'), 3,5) as OrganizationName_replaceS,
  FACT.ScenarioKey, SCN.ScenarioName, FACT.AccountKey, ACCT.AccountDescription,
  Fact.Amount, FACT.Date
  INTO dbo.DimensionAndFacts
  from
  FactFinance as FACT left Join
  DimOrganization as ORG
  ON FACT.OrganizationKey = ORG.organizationKey left join
  DimAccount as ACCT
  ON FACT.AccountKey = ACCT.AccountKey Left Join
  Dimscenario as SCN
  ON FACT.ScenarioKey = SCN.ScenarioKey Left Join
  DimDate as DTE
  ON FACT.DateKey = DTE.DateKey Left join
  DimDepartmentGroup as DEPT
  ON Fact.DepartmentGroupKey = DEPT.DepartmentGroupKey
  Order by FACT.Date, ACCT.AccountDescription DESC
  

