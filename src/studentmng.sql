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
    SubID int not null ,
    StudentID int not null  ,
    Mark float default 0 check (Mark between 0 and 100),
    ExamTimes tinyint default 1,
    UNIQUE (SubID,StudentID),
    FOREIGN KEY (SubID) references Subject (SubID),
    FOREIGN KEY (StudentID) references Student (StudentID)
);
insert into class values (1,'A1','2008-12-20',1);
insert into class values (2,'A2','2008-12-22',1);
insert into class values (3,'B3',current_date,0);

insert into student values (1,'Hung','Ha Noi','0912113113',1,1);
insert into student values (2,'Hoa','Hai Phong',null,1,1);
insert into student values (3,'Manh','HCM','0123123123',0,2);

insert into subject values (1,'CF',5,1);
insert into subject values (2,'C',6,1);
insert into subject values (3,'HDJ',5,1);
insert into subject values (4,'RDBMS',10,1);


insert into mark (SubId, StudentId, Mark, ExamTimes)
values (1,1,8,1),(1,2,10,2),(2,1,12,1);


