USE [University]
GO


--7.Write SQL Statement to INSERT Syllabus for each Course.

--Step 7 was done prior to step 3 since dbo.Courses has a foreign key to dbo.Syllabus - SyllabusID.
INSERT INTO [dbo].[Syllabus]
           ([SyllabusID]
           ,[Description])
     VALUES
           (1, 'Covers SQL fundamentals, including SELECT statements, joins, aggregations, subqueries, and database normalization.'),
  (2, 'Introduces C# programming basics such as data types, control flow, object-oriented concepts, LINQ, and exception handling.'),
  (3, 'Focuses on using Entity Framework for data access in .NET applications, including code-first and database-first approaches.'),
  (4, 'Explains building RESTful APIs using ASP.NET Web API, routing, controllers, JSON serialization, and secure endpoints.'),
  (5, NULL);
GO


