use jalasqlassign;


CREATE TABLE CUST(CNUM int(5) PRIMARY KEY,  CNAME CHAR(20),  CITY CHAR(20), RATING int(3),SNUM int(4));
INSERT INTO CUST VALUES (2001, 'Hoffman', 'London',100,1001); 
INSERT INTO CUST VALUES (2002, 'Giovanne', 'Rome',200,1003); 
INSERT INTO CUST VALUES (2003, 'London', 'Rome',50,1004);

Select CNAME from CUST where rating = 100;
Select CNAME from CUST where rating > 200;
Select CNAME from CUST where city = "Hoffman" or rating > 200;
Select CNAME from CUST where rating <= 100 or city = 'Rome'; 
Select CNAME from CUST where city is null; 
Select count(distinct CITY) from CUST;
Select min(CNAME) from cust where CNAME like 'G%'; 
Select 'For the city (' || city || '), the highest rating is : (' ||  max(rating) || ')' from CUST group by city;
Select cname, sname from cust, salespeople where cust.snum = salespeople.snum;
Select onum, sname, cname from orders, cust, salespeople where orders.cnum = cust.cnum and orders.snum = salespeople.snum;
Select cnum, rating from cust where rating > ( select avg(rating)  from cust where city = 'San Jose'); 




select * from CUST;