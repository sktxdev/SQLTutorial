create table students
(
	id	int not null primary key,
	studentname varchar(50)
)

create table teachers
(
	id	int not null primary key,
	teachername varchar(50)
)

create table classes 
(
	id int not null primary key,
	classname varchar(50)
)

create table classschedules
(
	id int not null primary key,
	classId int not null foreign key references classes(id),
	teacherId int not null foreign key references teachers(id),
	fromdate datetime,
	todate datetime
)

create table studentenrollments
(
	id int not null primary key,
	studentid int not null foreign key references students(id),
	classscheduleid int not null foreign key references classschedules(id),
	enrolldate datetime,
	grade varchar(10)
)



