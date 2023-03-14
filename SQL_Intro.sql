
--select * from sys.databases
--select name from sys.databases
--select * from INFORMATION_SCHEMA.TABLES
/*
use master
drop database ElevDB
*/
----------------------------------------
use master
if not exists (select name from sys.databases where name = 'ElevDB')
Begin
   print 'Opretter databasen ElevDB'
   create database ElevDB
End
else
Begin 
   print 'Databasen eksisterer allerede'
End

go
print 'Skifter til ElevDB'
use ElevDB
-----------------------------
if exists(select table_name from INFORMATION_SCHEMA.TABLES where table_name = 'Elev')
Begin
   print 'Sletter tabellen Elev'
   drop table Elev
End
go

if exists (select *  from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'Klasse')
Begin
   print 'Sletter tabellen Klasse'
   drop table Klasse
End
go
-------------------------------------

print 'Opretter tabellen Klasse'
create table Klasse
(
   K_id int primary key,
   K_name varchar(30),
   K_description varchar(50)
)


print 'Opretter tabellen Elev'
create table Elev
(
   id int primary key,
   name char(30) not null unique,
   age int,
   Klasse_id int foreign key references Klasse(K_id)
)
go
--------------------------------------------

print 'Indsætter rækker i tabllen Klasse'
insert into Klasse values(10, 'KlasseA', 'De dygtige elever')
insert into Klasse values(20, 'KlasseB', 'De kreative elever')
insert into Klasse values(30, 'Klassec', 'De smukke elever')


print 'Indsætter data i tabellen Elev'

insert into Elev (id, name) values(1000, 'Samuel') --Undlade kolonne age
insert into Elev values(1001, 'Erika', 23, 10)
insert into Elev values(1002, 'Benjamin', 12, 20)
insert into Elev values(1003, 'Daniel', 56, 30)
insert into Elev values(1004,  'Anders A', 26, 10)
insert into Elev values(1005, 'Anders H', 18, 20)
insert into Elev values(1006, 'Anders C', 19, 20)
insert into Elev values(1007, 'Siw', 19, 10)


select id, name, age, Klasse_id from Elev where name like 'A%'


select * from Elev
select * from Klasse
select * from Elev, Klasse where Klasse_id = K_id
