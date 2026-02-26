Select *
From [dbo].[OLE DB Destination]


Select Policy 
      ,Region
      ,InsuredValue
From [dbo].[OLE DB Destination]

Select *
From [dbo].[OLE DB Destination]
Where BusinessType != 'hospitality'

Select *
From [dbo].[OLE DB Destination]
Where BusinessType not IN ('Hospitality','Retail','Farming')

Select *
From [dbo].[OLE DB Destination]
Where BusinessType in ('Hospitality','Retail') and Region = 'East'

Select *
From [dbo].['Workplace Safety Data$']
Where Department LIKE 'F%'

Drop table [dbo].[Seyi]

Select *
From [dbo].['Workplace Safety Data$']
Where [Incident Type] LIKE 'C__'

Select top 10*
From [dbo].['Workplace Safety Data$']
Order by [Incident Cost] DESC


Select SUM ([Incident cost])
From [dbo].['Workplace Safety Data$']

Select COUNT ([Incident cost])
From [dbo].['Workplace Safety Data$']

Select MAX ([Incident cost])
From [dbo].['Workplace Safety Data$']

Select *
From [dbo].['Workplace Safety Data$']
Where Plant = 'California'

Select Distinct Plant
From [dbo].['Workplace Safety Data$']

Select Department 
       ,Gender
       ,SUM ([incident cost]) as TIC
From [dbo].['Workplace Safety Data$']
Group by Department
         ,Gender
Order by TIC DESC

Select*
From [dbo].['Workplace Safety Data$']

Select *
,case 
When [Incident cost] <=2000 then 'Less Critical'
When [Incident cost] <=4000 then 'Mildly Critical'
Else 'Very Critical'
End as CL
From [dbo].['Workplace Safety Data$']







