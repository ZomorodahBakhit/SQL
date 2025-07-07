USE [University]
GO
--3.Write SQL statements to INSERT data for SQL, C#, Entity Framework, Web API and React Courses.
--Step 3 was done after step 7 since dbo.Courses has a foreign key to dbo.Syllabus - SyllabusID.

INSERT INTO [dbo].[Courses]
           ([CourseID]
           ,[CourseName]
           ,[TeacherID]
           ,[StartDate]
           ,[EndDate]
           ,[SyllabusID])
     VALUES
           (1, 'SQL',               5, '2025-08-01', '2025-09-01', 1),
  (2, 'C#',                10, '2025-08-05', '2025-09-05', 2),
  (3, 'Entity Framework',  5, '2025-09-10', '2025-10-10', 3),
  (4, 'Web API',           10, '2025-10-15', '2025-11-15', 4),
  (5, 'React',             5, '2025-11-20', '2025-12-20', 5);
GO


