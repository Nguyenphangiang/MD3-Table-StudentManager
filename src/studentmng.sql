create database StudentManager;
use StudentManager;
create table Class(
    ClassID int auto_increment primary key not null ,
    ClassName varchar(60) not null ,
    StartDate datetime,
    Status bit
);
create table Student(
    StudentID int not null primary key auto_increment,
    StudentName varchar(30) not null ,
    Address varchar(50),
    Phone varchar(20),
    Status bit,
    ClassID int not null
);
create table Subject(
    SubID int not null primary key auto_increment,
    SubName varchar(30) not null ,
    Credit tinyint not null default 1 check (Credit >= 1),
    Status bit default 1
);
create table Mark(
    MarkID int not null primary key auto_increment,
    SubID int not null unique,
    StudentID int not null unique ,
    Mark float default 0 check (Mark between 0 and 100),
    ExamTimes tinyint default 1,
    UNIQUE (SubID,StudentID),
    FOREIGN KEY (SubID) references Subject (SubID),
    FOREIGN KEY (StudentID) references Student (StudentID)
);
