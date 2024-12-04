select company, COUNT(*) AS laptop_count
from dbo.Dataa
group by company
order by Company 

UPDATE dbo.Dataa
SET Price_euros = Price_euros * 1.20
where company = 'Dell' AND ram = '16GB';

SELECT *
FROM dbo.Dataa
WHERE cpu like '%Core i7%' AND ram >= '8GB';

SELECT TOP 3 company,typename,OpSys,Price_euros
FROM dbo.Dataa
ORDER BY Price_euros DESC;

select company,avg(price_euros)AS Average_price
from dbo.Dataa
group by Company

DELETE FROM dbo.Dataa
where laptop_id = 12; 

select company,Price_euros,TYPENAME
from dbo.Dataa AS d
where Price_euros = (
    select max(Price_euros)
    from dbo.Dataa AS dd
    where d.company = dd.company
)
order by company;

select company, Price_euros,TYPENAME,RANK() OVER (order by Price_euros DESC) AS Price_Rank
from dbo.Dataa
order by Price_Rank;
