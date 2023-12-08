create ExerciseDb
use ExerciseDb

create table CompanyInfo
(CId int primary key identity(1,1),
Cname nvarchar(50) not null
)
insert into CompanyInfo values('Samsung'),('HP'),('Apple'),('Dell'),('Toshiba'),('Redmi')
select * from CompanyInfo
drop table ProductInfo
create table ProductInfo
(PId int primary key identity(101,1),
PName nvarchar(50) not null,
PPrice float check (PPrice>=0),
PMDate date ,
CId int foreign key references CompanyInfo(CID)
)

insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Mobile',15000.90,'12/12/2012',2)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Laptop',135000.90,'12/12/2012',3)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Mobile',65000.90,'12/12/2012',3)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Laptop',35000.90,'12/12/2012',5)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Mobile',35000.90,'12/12/2012',5)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Earpod',1000.90,'12/12/2022',3)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Laptop',85000.90,'12/12/2021',6)
insert into ProductInfo(PName,PPrice,PMDate,CId) values ('Mobile',55000.70,'12/12/2020',1)

select * from ProductInfo

-----

select * from CompanyInfo c join ProductInfo p on c.CID=p.CId
--left outer join 
select c.Cname,p.PId,p.PName,p.PPrice,p.PMDate,p.PId,p.CId from CompanyInfo c left outer join ProductInfo p on c.CId =p.CId

--Right outer join
 
 select c.Cname,p.PId,p.PName,p.PPrice,p.PMDate,p.PId,p.CId from CompanyInfo c right outer join ProductInfo p on c.CId =p.CId

 --Cross Join (All possible of company and products)

select PId,Cname from ProductInfo cross join CompanyInfo 
