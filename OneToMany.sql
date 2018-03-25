create database company;
use company;
# Costumer
create table customer(
	cusID int primary key,
	name varchar(150),
	mail varchar(50)
);

# Order
create table recipe (
	rID int primary key,
	quantity int
);

# Mediate table to control many to many
create table ordercustomer (
	cusID int,
	rID int,
	primary key(cusID, rID),
	foreign key(cusId) references customer(cusID),
	foreign key(rId) references recipe(rID)
);


-- Another example --
# Student
Create table student (
	sID int primary key,
	name varchar(190)
);

#Course
Create table course (
	cID int primary key,
	name varchar(190)
);

# Stundetncourse
create table studentcourse (
	sID int,
	cID int,
	primary key(sID, cID),
	foreign key(sID) references student(sID),
	foreign key(cID) references course(cID)
);