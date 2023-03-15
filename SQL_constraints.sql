--Fire måder at oprette constraints på

create table Navne1
(
   id int primary key,
   navn varchar(15)
)

insert into Navne1 values(1000, 'Muhammad')
insert into Navne1 values(1000, 'Muhammad')



create table Navne2
(
   id int constraint PK_Navne2_id primary key,
   navn varchar(15)
)

insert into Navne2 values(1000, 'Muhammad')
insert into Navne2 values(1000, 'Muhammad')

create table Navne3
(
   id int ,
   navn varchar(15),
   primary key(id)
)

insert into Navne3 values(1000, 'Muhammad')
insert into Navne3 values(1000, 'Muhammad')

create table Navne4
(
   id int ,
   navn varchar(15),
   constraint PK_Navne4_id primary key(id)
)

insert into Navne4 values(1000, 'Muhammad')
insert into Navne4 values(1000, 'Muhammad')
