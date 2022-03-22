select * from student;
select * from student where Status = true;
select * from subject where Credit < 10;
select StudentID,StudentName,ClassName from student join class c on student.ClassID = c.ClassID where ClassName  = 'A1';
select student.StudentID,StudentName,s.SubName,m.Mark from student join mark m on student.StudentID = m.StudentID join subject s on s.SubID = m.SubID
where s.SubName = 'CF';

select * from student where StudentName like 'h%';
select * from class where month(StartDate)=12;
select * from subject where Credit between 3 and 5;

update student set ClassID = 2 where StudentName = 'Hung';

select StudentName,SubName,Mark from student join subject s on student.Status = s.Status join mark m on s.SubID = m.SubID order by Mark DESC ;

select Address,count(StudentID)as 'Số lượng học viên' from student group by Address;
select s.StudentID,s.StudentName,AVG(mark) from student s
    join mark m on s.StudentID = m.StudentID group by s.StudentID, s.StudentName;
select s.StudentID,s.StudentName,AVG(m.Mark) from student s
    join mark m on s.StudentID = m.StudentID group by s.StudentID, s.StudentName
    having avg(m.Mark) > 9;
select s.StudentID,s.StudentName,AVG(Mark) from student s
    join mark m on s.StudentID = m.StudentID group by s.StudentID, s.StudentName
    having avg(m.Mark) >= ALL (select avg(Mark) from mark group by mark.StudentID);
select subid, subname, credit, status,max(Credit) from subject;
select subject.SubID, subname, credit, status,MAX(Mark)as 'điểm thi lớn nhất' from subject
    join mark m on subject.SubID = m.SubID;
select s.StudentName,s.Address,s.Phone,avg(m.Mark) from student s
    join mark m on s.StudentID = m.StudentID group by s.StudentName, s.Address, s.Phone
order by avg(m.mark) desc ;

