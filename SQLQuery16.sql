USE [University]
GO
--4.Write SQL Statements to INSERT at least 5 Assignments for each Course with random due dates (past & future).
INSERT INTO [dbo].[Assignments]
           ([AssignmentID]
           ,[CourseID]
           ,[AssignmentTitle]
           ,[Description]
           ,[Weight]
           ,[MaxGrade]
           ,[DueDate])
     VALUES
           (1, 1, 'Basic SELECT Queries', 'Write SQL queries using SELECT, WHERE, and ORDER BY.', 10, 100, '2024-12-01'),
           (6, 2, 'Hello World and Basics', 'Write basic C# programs using variables and control flow.', 10, 100, '2024-11-10'),
           (11, 3, 'Setup Code-First', 'Create models and generate DB using EF code-first.', 10, 100, '2025-05-10'),
           (16, 4, 'Intro to REST', 'Learn HTTP verbs and REST basics.', 10, 100, '2025-05-15'),
           (21, 5, 'Intro to Components', 'Create and render functional components.', 10, 100, '2025-05-10'),
           (2, 1, 'Joins and Aggregations', 'Practice INNER JOIN, LEFT JOIN, GROUP BY.', 15, 100, '2025-01-15'),
           (3, 1, 'Subqueries', 'Use nested queries to filter and compute data.', 10, 100, '2025-06-10'),
           (7, 2, 'OOP in C#', 'Implement classes, inheritance, and encapsulation.', 15, 100, '2025-05-01'),
           (13, 3, 'Queries with EF', 'Query data using LINQ and EF DbContext.', 15, 100, '2025-06-20'),
           (14, 3, 'CRUD Operations', 'Implement Create, Read, Update, Delete operations.', 15, 100, '2025-07-10'),
           (19, 4, 'API Security', 'Add API key or token-based authentication.', 15, 100, '2025-07-10'),
           (22, 5, 'Props & State', 'Manage data using props and state.', 10, 100, '2025-06-01'),
           (23, 5, 'Hooks Practice', 'Use useState and useEffect hooks.', 15, 100, '2025-06-25');


GO



