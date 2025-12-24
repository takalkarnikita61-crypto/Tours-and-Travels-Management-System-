-- Travels and Tourism Management System

create database Travels;
use Travels;

/*  Tables
1.Tourist
2.Destination
3.Package
4.Booking
5.Payment
*/

create table Tourist( Tourist_id int primary key,
First_name varchar(100) not null,
Last_name varchar(100),
Email varchar(200) unique key,
Phone varchar(20),State varchar(20));

Create table Destination(Dest_id int primary key,
Dest_name varchar(100) not null,
Dest_Country varchar(50),
Description text);
show tables;
drop table customers;

Create table Package(Package_id int primary key,
Title varchar(200),
Dest_id int,
Price decimal(10,2),
Duration_days int,
Dest_id int ,foreign key(Dest_id) references Destination (Dest_id));

show tables;
desc package;
 
 Create table Booking(Booking_id int primary key,
 Tourist_id int,
 Package_id int,
 Booking_date date,
 Travel_start date,
 Travellers_count int not null,
 status enum('Pending','Confirmed','Cancelled')default 'Pending',
 Total_amount decimal(12,2),foreign key (Tourist_id) references Tourist(Tourist_id),
 foreign key (Package_id) references Package (Package_id));
 
 desc booking;
 
create table Payment(Payment_id int primary key,Booking_id int not null,
Payment_method varchar(50),
Amount decimal (10,2) not null,Payment_date date not null,
Status varchar(20),
foreign key(Booking_id) references Booking(Booking_id));
 
show tables;
 
alter table Tourist rename column first_name to name;
  
  -- insert values
  
  insert into Tourist values(1,"Nikita Rakshe","takalkarnikita@gmail.com",8308364646,"Maharashtra","Female"),
  (2,"Shruti khadse","shrukha@gmail.com",9887655555,"Maharashtra","Female"),
  (3,"Nil kalokhe","kalokhenil45@gmail.com",9876545556,"Gujrat","male"),
  (4,"Mayur Ptil","mayupatil43@gmail.com",9445556675,"kerla","male"),
  (5,"sonal kale","kales98@gmail.com",7775456678,"goa","female"),
  (6,"aishwarya salunkhe","aishsalk@gmail.com",8754637282,"karnataka","female"),
  (7,"parth rakshe","parthrakshe@gami.com",9995432456,"goa","male");
  
  
   
   desc Destination;
   insert into Destination values(1,"goa","india","beaches & water sports"),
   (2,"paris","france","luxrious city"),
   (3,"bali","indonesia","island"),
   (4,"rajsthan","india","historical palace"),
   (5,"new york","usa","city"),
   (6,"kyoto","japan","cultural experience"),
   (7,"cape town","south africa","adventure");
  
select * from Destination;

desc package;
 insert into Package values(101,"goa summer special",20000,5,1),
 (102,"paris city tour",80000,7,2),
 (103,"bali beach fun",60000,6,3),
 (104,"rajsthan hestorical palace tour",25000,5,4),
 (105,"explore new york",100000,5,5),
 (106,"japan tour",120000,4,6),
 (107,"adventure and fun",90000,5,7);
  select * from package;
  
  
desc booking; 
insert into Booking values(1,1,101,'2025-1-12','2025-3-5',2,"confirmed",40000);
(2,2,102,"2025-2-15","2025-10-5",4,"confirmed",320000),
(3,3,103,"2025-20-2","17 may 2025",2," ",120000),
(4,4,104,"2025-19-3","2 nov 2025",5,"confirmed",100000),
(5,5,105,"2025-12-5","25 oct 2025",2,"pending",200000),
(6,6,106,"2025-26-2","13 sept 2025",2,"confirmed",2400000),
(7,7,107,"2025-15-1","25 may 2025",2,"confirmed",180000);
 select * from Booking;
 select * from package;  
select * from tourist where Tourist-id=1;

insert into booking values(1,1,101,'2025-11-12','2025-3-15',2,"confirmed",40000.00);