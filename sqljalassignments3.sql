create database jalaOrders;
use jalaOrders;


CREATE TABLE salesorders(ONUM int(4) PRIMARY KEY,AMT decimal(5,2), ODATE datetime, CNUM int(4),SNUM int(4));
INSERT INTO salesorders(ONUM,AMT,ODATE,CNUM,SNUM)
values(3001,18.69,str_to_date('03-OCT-94''%d-%b-%y'),2008,1007);


Select distinct SNUM from salesorders;
Select ONUM, AMT, ODATE from salesorders;
Select *  from salesorders where AMT > 1000; 
Select * from salesorders where ODATE in ('03-OCT-94','04-OCT-94');
Select ONUM from salesorders where AMT != 0 or not null;
Select count(distinct Snum) from salesorders; 
Select ODATE, SNUM, max(AMT) from salesorders group by ODATE, SNUM order by ODATE,SNUM; 
Select ODATE, SNUM, max(AMT) from salesorders where AMT > 3000 group by ODATE, SNUM order by ODATE,SNUM; 
Select ODATE, SNUM, SNUM, CNUM from salesorders where AMT = (select max(AMT)  from salesorders);
Select count(*) from salesorders where ODATE = str_to_date('03-OCT-94','%d-%b-%y');
Select CNUM, min(AMT) from salesorders group by CNUM; 
Select 'For' ||to_char(ODATE,'dd/mm/yy') || ' there are '||  count(*) || 'Orders' from salesorders group by ODATE;
Select ONUM, SNUM, AMT, AMT * 0.12 from salesorders order by SNUM; 
Select ONUM, count(ODATE) from salesorders group by ODATE order by count(ONUM);
Select Onum from orders	where snum = ( select snum from salespeople where sname = 'Motika'); 
Select onum, sname, cname, amt from orders a, salespeople b, cust c where a.snum = b.snum and a.cnum = c.cnum and a.snum = ( select snum from orders where cnum = ( select cnum from cust where cname = 'Hoffman')); 
Select *  from salesorders where AMT > ( select avg(AMT)  from salesorders where odate = str_to_date('03-OCT-94','%d-%m-%y')); 





 




select* from salesorders;