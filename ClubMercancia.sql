SELECT top 500  * FROM MDL05.tblDraw
WHERE Date BETWEEN '2020-12-31 00:00:00.000' AND '2021-03-28 00:00:00.000'
order by date desc

               SELECT CustomerId,ContractNumber,Share,status,Winner,Block,NumberPlayed
               FROM MDL05.tblClub T1
               LEFT JOIN (select NumberPlayed,date as fecha from MDL05.tblDraw
               WHERE Date BETWEEN '2020-12-31 00:00:00.000' AND '2021-03-01 00:00:00.000' AND NumberPlayed IS NOT NULL) T2 ON T1.Share=T2.NumberPlayed
               --WHERE Share in (select NumberPlayed from MDL05.tblDraw
               --WHERE Date BETWEEN '2020-12-31 00:00:00.000' AND '2021-03-01 00:00:00.000')
               --AND Winner=0
               --AND ContractNumber='1000735'
               --ORDER BY LastModifiedDate desc

SELECT TOP 100 * FROM MDL05.tblClub


SELECT CustomerId,ContractNumber,Share,t1.Status,Winner,Block,NumberPlayed, date
FROM MDL05.tblClub T1
INNER JOIN MDL05.tblDraw T2 ON T1.Share=T2.NumberPlayed
WHERE Date BETWEEN '2020-12-31 00:00:00.000' AND '2021-03-01 00:00:00.000' AND NumberPlayed IS NOT NULL
