/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10) [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[Person]

  SELECT TOP (1000) [BusinessEntityID]
      ,[EmailAddressID]
      ,[EmailAddress]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[EmailAddress]

  Select * from 
  Person.Person AS Person Inner Join
  Person.EmailAddress AS [Email Address]
  ON Person.BusinessEntityID = [Email Address].BusinessEntityID

  Select * from 
  Person.Person AS Person Inner Join
  Person.Password AS [Password]
  ON Person.BusinessEntityID =  [Password].BusinessEntityID

  Select * from 
  Person.Person AS Person Right Join
  Person.Password AS [Password]
  ON Person.BusinessEntityID =  [Password].BusinessEntityID
  Where Person.FirstName IS NULL

 Select * from 
  Person.Person AS Person Left Join
  Person.Password AS [Password]
  ON Person.BusinessEntityID =  [Password].BusinessEntityID
  Where Password.PasswordHash IS NULL

 Select * from 
  Person.Person AS Person Full Join
  Person.Password AS [Password]
  ON Person.BusinessEntityID =  [Password].BusinessEntityID
  Where Password.PasswordHash IS NULL OR Person.Firstname is Null

  -- Multiple Table Joins
Select * from 
  Person.Person AS Person Full Join
  Person.Password AS [Password]
  ON Person.BusinessEntityID =  [Password].BusinessEntityID
left join Person.EmailAddress AS Email
ON person.BusinessEntityID = Email.BusinessEntityID;

 /**To select specific statements we can use the Alias name first before FROM and defining what h
