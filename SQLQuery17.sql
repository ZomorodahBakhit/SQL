USE [University]
GO
--5.Write SQL Statements to INSERT at least 10 comments for random assignments.
INSERT INTO [dbo].[Comments]
           ([CommentID]
           ,[AssignmentID]
           ,[CreatedByUserID]
           ,[CreatedDate]
           ,[CommentContent])
     VALUES
         
(1, 3, 5, '2025-07-01 10:15:00', 'Great use of subqueries, but try to simplify where possible.'),
(2, 7, 10, '2025-07-03 09:45:00', 'Excellent OOP implementation — encapsulation is clear and consistent.'),
(3, 14, 5, '2025-07-04 11:00:00', 'Consider handling edge cases in your update logic.'),
(4, 22, 10, '2025-07-06 14:20:00', 'Very clean React component structure. Watch out for unnecessary re-renders.'),
(5, 19, 5, '2025-07-05 08:30:00', 'Your API security implementation is solid. Let’s talk about adding role-based access next.'),
(6, 2, 8, '2025-07-01 13:20:00', 'This assignment was confusing at first, but the JOIN examples helped a lot.'),
(7, 11, 3, '2025-07-02 15:45:00', 'Loved working with EF migrations — feels like magic!'),
(8, 23, 12, '2025-07-05 17:10:00', 'Hooks were tricky but I finally understand useEffect now.'),
(9, 6, 1, '2025-07-03 19:05:00', 'Can we have more examples on loops? That’d be helpful!'),
(10, 13, 14, '2025-07-07 11:00:00', 'I optimized my LINQ query using deferred execution — runs significantly faster under load.');
GO


