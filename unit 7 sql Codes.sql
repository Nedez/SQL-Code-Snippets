--Answer to Question 4
Select ST.Name, SOH.SalesPersonID, SPH.SalesQuota, CR.ToCurrencyCode
From
[Sales].[SalesOrderHeader] SOH 
Left join [Sales].[CurrencyRate] CR ON SOH.CurrencyRateID = CR.CurrencyRateID
left join [Sales].[Currency] SC ON CR.ToCurrencyCode = SC.CurrencyCode
left join [Sales].[SalesTerritory] ST ON SOH.TerritoryID = ST.TerritoryID
Left Join [Sales].[SalesPerson] SP ON ST.TerritoryID = SP.TerritoryID
Left Join [Sales].[SalesPersonQuotaHistory] SPH ON SP.BusinessEntityID = SPH.BusinessEntityID

--Answer to Question 5
Select STH.TerritoryID, ST.Name, SOH.TotalDue, SOD.SpecialOfferID, ST.SalesLastYear, ST.SalesYTD, SOD.UnitPrice 
from
[Sales].[SalesTerritoryHistory] STH
Left Join [Sales].[SalesTerritory] ST ON STH.TerritoryID = ST.TerritoryID
Left Join [Sales].[SalesOrderHeader] SOH ON ST.TerritoryID = SOH.TerritoryID
Left Join [Sales].[SalesOrderDetail] SOD ON SOH.SalesOrderID = SOD.SalesOrderID
Left Join [Sales].[SpecialOfferProduct] SOP ON SOD.ProductID = SOP.ProductID
Left Join [Sales].[SpecialOffer] SO ON SOP.SpecialOfferID = SO.SpecialOfferID

--Answer to Question 6
select Convert(varchar, SOH.OrderDate,106) 'Order Date', ST.TerritoryID 'Territory ID', ST.Name 'Territory name', SOH.SalesPersonID 'Sales Person ID', SP.SalesLastYear 'Last Year Sales'
from
[Sales].[SalesOrderHeader] SOH
Left Join [Sales].[SalesPerson] SP ON SOH.TerritoryID = SP.TerritoryID
Left Join [Sales].[SalesTerritory] ST ON SP.TerritoryID = ST.TerritoryID