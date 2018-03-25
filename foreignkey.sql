-- how to create foreign key for a table --
# Database creation for this example
create database Schools;

use Schools;

# School
create table school (
	nameOfSchool varchar(50) primary key,
	nameOfCEO varchar(120),
	DOB Date
);

# Teachers of the school
create table teacher (
	teacherMail varchar(100) primary key,
	tName varchar(65),
	nameOfWorkPlace varchar(50),
	foreign key(nameOfWorkPlace) references school(nameOfSchool)
);

-- cascade on foreign key --
