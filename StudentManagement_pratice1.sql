create database quanlysinhvien;

use quanlysinhvien;

create table class(
ClassID int not null auto_increment primary key,
ClassName varchar(60) not null,
StartDate Date not null,
Status bit
);

create table student(
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone int(20),
Status bit,
ClassID int not null,
foreign key (ClassID) references Class (ClassID)
);

create table Subject(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1  check ( Credit >=1 ),
Status bit default 1
);

create table Mark(
MarkID int not null primary key auto_increment,
SubID int not null unique key,
StudentID int not null unique key,
Mark float default 0 check (Mark between 0 and 100 ),
ExamTimes tinyint default 1,
foreign key (SubID) references Subject (SubID),
foreign key (StudentID) references Student (StudentID)
);




