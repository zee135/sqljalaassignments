create database Jalasqlassign;
use jalasqlassign;

create table salespeople(Snum Int(10) PRIMARY KEY, Sname Char(10) , city char(20) , comm Decimal(8,3));
Insert Into salespeople(Snum,Sname,city,comm)
values(1001,"Peel","London",0.12),
(1002,"Serres","San Jose",0.13),
(1004,"Motika","London",0.11),
(1007,"Rafkin","Barcelona",0.15),
(1003,"Axelrod","New York",0.1);

delete from salespeople where Snum = 1;


Select Snum, Sname, city, comm from salespeople;
Select Sname,comm from salespeople where city = "London";
Select Sname, city from salespeople where comm > 0.10 and city = "London";
Select Sname, city from salespeople where city in ('Barcelona','London'); 
Select Sname, comm from salespeople where comm > 0.10 and comm < 0.12; 
Select count(distinct Snum) from orders; 
Select Sname, Cname from salespeople, CUST where salespeople.city = CUST.city; 
Select cname, sname, comm from cust, salespeople where comm > 0.12 and cust.snum = salespeople.snum; 
Select a.cname, b.cname,a.rating from cust a, cust b where a.rating = b.rating and a.cnum != b.cnum; 
Select a.cname, b.cname,a.rating from cust a, cust b where a.rating = b.rating and a.cnum != b.cnum and a.cnum <= b.cnum; 
Select cname, sname from salespeople, cust where sname in  ( select sname  from salespeople where 'rownum' <= 3) order by cname;
Select cname from cust where city = ( select city  from cust, salespeople
where cust.snum = salespeople.snum and sname = 'Serres');
Select cname  from cust where city in ( select city from cust, orders where cust.cnum = orders.cnum and orders.snum in ( select snum  from salespeople where sname = 'Serres')); 
Select cname from cust where snum in (select snum from cust group by snum having count(snum) > 1); 
Select distinct a.cname from cust a ,cust b where a.snum = b.snum and a.rowid != b.rowid;
Select cname, city from cust where rating = (select rating from cust where cname = 'Hoffman') and cname != 'Hoffman'; 
Select avg(comm) from salespeople where city = 'London';
Select snum, cnum  from orders where cnum in (select cnum  from cust where city = 'London'); 
Select snum, cnum  from orders where cnum in (select cnum  from cust where city = 'London'); 
Select comm from salespeople where snum in (select snum from cust where city = 'London');
Select cnum, cname from cust where cnum > ( select snum+1000  from salespeople where sname = 'Serres');



select * from salespeople;





