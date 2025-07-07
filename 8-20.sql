
--8.Write a SELECT query to list all courses.

Select * from Courses

--9.Write a SELECT query to find all assignments for a specific course.

Select * from Assignments where CourseID =2

--10.Write a SELECT query to find all students (users with the role 'Student').

Select * from Users where Role ='Student'

--11.Write an UPDATE statement to change a student's role.
/*This is not safe to do since since this does not update other tables. 
Student 14 is now a teacher but is still a student in other table.
This is because the structure of our database is faulty and we should have used specialization,
breaking the user into sub-classes (seperate tables) of students and teachers.

In the queries to come student 14 will still be treated as a student
*/

Update Users set Role='Teacher' where UserID=14

--12.Write a DELETE statement to remove a specific comment.

Delete from Comments where CreatedByUserID=14

--13.Write a query to list all students along with their grades for a specific course

Select * from Assignments a 
inner join  Grades g on g.AssignmentID= a.AssignmentID
where a.CourseID=2

--14.Write a query to calculate the average grade for each course.



select c.CourseID, c.CourseName, avg(g.Grade) as AverageGrade

from Courses c
inner join Assignments a on a.CourseID = c.CourseID
inner join Grades g on g.AssignmentID = a.AssignmentID

group by c.CourseID, c.CourseName;


 


--15.Write a query to list all courses with their respective syllabuses.

select * from Courses c
inner join Syllabus s on s.SyllabusID= c.SyllabusID

--16.Write a query to find all comments for a specific course.


select * from Comments c
inner join Assignments a on a.AssignmentID=c.AssignmentID
where a.CourseID=3

--17.Create a stored procedure to add a new student.
GO
create procedure AddStudent
	@UserID int,
    @UserName varchar(64),
    @FirstName varchar(64),
    @LastName varchar(64),
    @EmailAddress varchar(128),
    @PhoneNumber varchar(16),
    @Role varchar(32)

as
begin

    insert into Users (
        UserID,
        UserName,
        FirstName,
        LastName,
        EmailAddress,
        PhoneNumber,
        Role
    )
    values (
        @UserID,
        @UserName,
        @FirstName,
        @LastName,
        @EmailAddress,
        @PhoneNumber,
        @Role
    );
end;


--18.Create a stored procedure to add a new Assignment. Make sure the course assignments weights don’t go above 100.

GO
create procedure AddAssignment
	@AssignmentID int,
    @CourseID int,
    @AssignmentTitle varchar(128),
    @Description text,
    @Weight float,
    @MaxGrade int,
    @DueDate date
	
as
begin

    declare @totalweight float;

    select @totalweight = sum(a.Weight)
    from Assignments a
    where a.CourseID= @CourseID;

    if(@totalweight + @Weight >100)
    begin
        raiserror('The total weights of all the assignments for a course should not exceed 100', 16, 1);
        return;
    end;

    insert into Assignments(
        AssignmentID,
        CourseID,
        AssignmentTitle,
        Description,
        Weight,
        MaxGrade,
        DueDate
    )
    values (
        @AssignmentID,
        @CourseID,
        @AssignmentTitle,
        @Description,
        @Weight,
        @MaxGrade,
        @DueDate
    );
end;
--19.Calculate function to calculate the Student Grade in a Course. Return ‘A', 'B’, etc…

GO
create function StudentGrade
(
    @percentage float
)
returns char(1)
as
begin
    declare @letter char(1)

    if @percentage >= 90
        set @letter = 'a'
    else if @percentage >= 80
        set @letter = 'b'
    else if @percentage >= 70
        set @letter = 'c'
    else if @percentage >= 60
        set @letter = 'd'
    else
        set @letter = 'f'

    return @letter
end;
GO

--Example:

select 
    u.UserID,
    u.UserName,
    dbo.StudentGrade( (sum(g.grade * a.Weight) / sum(a.Maxgrade * a.Weight)) * 100 ) as FinalGrade
from Users u
join Grades g on g.StudentID = u.UserID
join Assignments a on a.AssignmentID = g.AssignmentID
where a.CourseID = 2
group by u.UserID, U.UserName;

--20.Create a function to calculate the GPA of a student.

--This is a helper function:
go

create function PercentagetoGPA
(
    @percentage float
)
returns float
as
begin
    declare @gpa float;

    if @percentage >= 90
        set @gpa = 4.0;
    else if @percentage >= 80
        set @gpa = 3.0;
    else if @percentage >= 70
        set @gpa = 2.0;
    else if @percentage >= 60
        set @gpa = 1.0;
    else
        set @gpa = 0.0;

    return @gpa;
end;

go

--Main Function:


go

create function calculatestudentgpa
(
    @studentid int
)
returns float
as
begin
    declare @gpa float;

    -- Simple average of GPA over all courses
    select @gpa = avg(dbo.PercentagetoGPA(percentgrade))
    from (
        select 
            c.courseid,
            sum(g.grade * a.weight) / sum(a.maxgrade * a.weight) * 100 as percentgrade
        from grades g
        inner join assignments a on g.assignmentid = a.assignmentid
        inner join courses c on a.courseid = c.courseid
        where g.studentid = @studentid
        group by c.courseid
    ) as coursegrades;

    return @gpa;
end;

go
