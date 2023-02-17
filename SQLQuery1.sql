--select *
--from train
/*
select test.*,Survived
into #TT#
from test 
left join gender_submission as gender
on test.passengerid = gender.passengerid

select [PassengerId]
		,Survived
      ,[Pclass]
      ,[Name]
      ,[Sex]
      ,[Age]
      ,[SibSp]
      ,[Parch]
      ,[Ticket]
      ,[Fare]
      ,[Cabin]
      ,[Embarked]
into #T2#
from #TT#*/

select [Pclass]
		,[Cabin]
		,COUNT(*) as Count
FROM(
select * 
from Train
UNION ALL
SELECT *
from #T2#) as T
GROUP BY [Pclass]
		,[Cabin]
ORDER BY [Pclass]
		,[Cabin]
