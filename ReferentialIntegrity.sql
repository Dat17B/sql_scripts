# Relations Referential Integrity
Create database library;

use library;

Create table author (
	aID int primary key,
	name varchar(200)
);

create table book (
	bID int primary key,
	title varchar(100),
	aID int,
	foreign key(aID) references author(aID)
		on delete CASCADE
		on update CASCADE
## CASCADE can be replaced with
/* RESTRICT | CASCADE | SET NULL | NO ACTION | SET DEFAULT */
);

# Insert rows into the author relation
insert into author values(1, "Author John");
insert into author values(2, "Author Smith");

# Selecting the author table
select * from author;

# Insert rows into the book table
insert into book values(1, "Dragon stories 1", 1);
insert into book values(2, "Dragon stories 2", 1);
insert into book values(3, "Dragon stories 3", 1);
insert into book values(4, "Software construction 1", 2);
insert into book values(5, "Software construction 1", 2);

# Selecting the book table
select * from book;

# Deleting a row from author table
Delete from author where aID = 2;

# Selecting after on delete cascade
select * from book;
select * from author;