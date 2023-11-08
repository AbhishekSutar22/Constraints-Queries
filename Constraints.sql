use abhishek
go

create table Students
(
RollNumber int,
Name varchar(50),
Gender varchar(10),
Email varchar(100),
Age int,
City varchar(20),
Course varchar(50)
)
go
insert into Students values (1, 'aarav', 'male', 'a@a.com',22, 'pune', 'dot net')
insert into Students values (2, 'rohit', 'male', 'r@r.com',23, 'mumbai', 'dot net')
insert into Students values (2, 'vivek', 'male', 'a@v.com',22, 'pune', 'dot net')
insert into Students values (3, 'abhi','male', 'a@a.com',22, 'pune', 'dot net')
go
select * from Students
go
drop table Students
go
create table Student
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100),
Age int,
City varchar(20),
Course varchar(50)
)
go
insert into Student values (1, 'ajay', 'male', 'a@a.com',22, 'pune', 'dot net')
insert into Student values (2, 'ganesh', 'male', 'g@g.com',23, 'mumbai', 'dot net')
insert into Student values (2, 'vivek', 'male', 'a@v.com',22, 'pune', 'dot net')
insert into Student (RollNumber, Name, Gender, Email, Age, City, Course)
values (3,'vishal', 'male', 'a@a.com',22, 'pune', 'dot net')
go
select * from Student
go
drop table Students
go
create table Students1
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int,
City varchar(20),
Course varchar(50)
)
go
insert into Students1 values (1, 'ajay', 'male', 'a@a.com', 22,'pune','dot net')
insert into Students1 values (2, 'ganesh', 'male', 'g@g.com', 22,'pune','dot net')
insert into Students1 values (3, 'ashish', 'male', null, 22,'pune','dot net')
insert into Students1 values (4, 'vishal', 'male', 'v@v.com', 22,'pune','dot net')
go
select * from Students1
go
drop table Students1
go
create table Students2
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int,
City varchar(20),
Course varchar(50) default 'dot net'
)
go
insert into Students2 (RollNumber, Name, Gender, Email, Age, City)
values (1, 'ajay', 'male', 'a@a.com', 22,'pune')

insert into Students2 (RollNumber, Name, Gender, Email, Age, City)
values (2, 'ganesh', 'male', 'g@g.com', 22,'pune')

insert into Students2 (RollNumber, Name, Gender, Email, Age, City, Course)
values (3, 'vishal', 'male', 'v@g.com', 22,'pune', 'discussion')

insert into Students2 (RollNumber, Name, Gender, Email, Age, City, Course)
values (4, 'bahu', 'male', 'b@g.com', 2200,'pune', 'discussion')
go
select * from Students2
go
drop table Students2
go
create table Students3
(
RollNumber int primary key,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int check (Age >= 1 and Age <= 150),
City varchar(20),
Course varchar(50) default 'dot net'
)
go
insert into Students3 (RollNumber, Name, Gender, Email, Age, City)
values (1, 'ajay', 'male', 'a@a.com', 22,'pune')

insert into Students3 (RollNumber, Name, Gender, Email, Age, City)
values (2, 'ganesh', 'male', 'g@g.com', 22,'pune')

insert into Students3 (RollNumber, Name, Gender, Email, Age, City, Course)
values (3, 'vishal', 'male', 'v@g.com', 22,'pune', 'discussion')

insert into Students3 (RollNumber, Name, Gender, Email, Age, City, Course)
values (4, 'bahu', 'male', 'b@g.com', 150,'pune', 'discussion')

go
select * from Students3
go

drop table Students3
go
create table Students4
(
RollNumber int,
Name varchar(50) not null,
Gender varchar(10),
Email varchar(100) unique,
Age int check (Age >= 1 and Age <= 150),
City varchar(20),
Course varchar(50) default 'dot net',
primary key (RollNumber, Name)
)
go
insert into Students4 (RollNumber, Name, Gender, Email, Age, City)
values (1, 'ajay', 'male', 'a@a.com', 22,'pune')

insert into Students4 (RollNumber, Name, Gender, Email, Age, City)
values (2, 'ajay', 'male', 'g@g.com', 22,'pune')

insert into Students4 (RollNumber, Name, Gender, Email, Age, City, Course)
values (1, 'vishal', 'male', 'v@g.com', 22,'pune', 'discussion')

insert into Students4 (RollNumber, Name, Gender, Email, Age, City, Course)
values (4, 'bahu', 'male', 'b@g.com', 150,'pune', 'discussion')
go
select * from Students4
go
create table Customer1
(
Id int primary key,
Name varchar(50),
Site varchar(50)
)
go
alter table Customer1
add constraint df_Site_Name default 'Flipkart' for Site
go
insert into Customer1 (Id, Name) values (1, 'vishal')
go
select * from Customer1