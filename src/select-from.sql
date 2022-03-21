select * from student;
select * from student where Status = true;
select * from subject where Credit < 10;
select StudentID,StudentName,ClassName from student join class c on student.ClassID = c.ClassID where ClassName  = 'A1';
select student.StudentID,StudentName,s.SubName,m.Mark from student join mark m on student.StudentID = m.StudentID join subject s on s.SubID = m.SubID
where s.SubName = 'CF';