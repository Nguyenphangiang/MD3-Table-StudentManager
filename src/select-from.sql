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