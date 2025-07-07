USE [University]
GO

/*
1.Write SQL statements to INSERT data for all the interns into the user table with Role ‘Student’
2.Write SQL statements to INSERT data for Sami, Feryal into the user table with Role ‘Teacher’
*/


INSERT INTO [dbo].[Users]
           ([UserID]
           ,[UserName]
           ,[FirstName]
           ,[LastName]
           ,[EmailAddress]
           ,[PhoneNumber]
           ,[Role])
     VALUES
           (1,'AbdelhakeHamdaoui', 'Abdelhake', 'Hamdaoui', 'abdelhakehamdaoui@test.com', '5378527466' ,'Student'),
(2,'HouzifaHabbo', 'Houzifa', 'Habbo', 'houzifahabbo@test.com', '5300560001' ,'Student'),
(3,'AyaKhalifa', 'Aya', 'Khalifa', 'ayakhalifa@test.com', '5300000001', 'Student'),
(4,'FarahSilk', 'Farah', 'Silk', 'farahsilk@test.com', '5300000002', 'Student'),
(5,'FeryalTulaimat', 'Feryal', 'Tulaimat', 'feryaltulaimat@test.com', '5300000003', 'Teacher'),
(6,'MasaSoudan', 'Masa', 'Soudan', 'masasoudan@test.com', '5300000007', 'Student'),
(7,'MohammadRamez', 'Mohammad', 'Ramez', 'mohammadramez@test.com', '5300000008', 'Student'),
(8,'MosaMosa', 'Mosa', 'Mosa', 'mosamosa@test.com', '5300000009', 'Student'),
(9,'NouhadElHallab', 'Nouhad', 'El Hallab', 'nouhadelhallab@test.com', '5300000010', 'Student'),
(10,'SamiHijazi', 'Sami', 'Hijazi', 'samihijazi@test.com', '5300000011', 'Teacher'),
(11,'ShamJamous', 'Sham', 'Jamous', 'shamjamous@test.com', '5300000012', 'Student'),
(12,'YasinYildiz', 'Yasin', 'Yildiz', 'yasinyildiz@test.com', '5300000013', 'Student'),
(13,'ZaidAlmoughrabl', 'Zaid', 'Almoughrabl', 'zaidalmoughrabl@test.com', '5300000014', 'Student'),
(14,'ZomorodahBakhit', 'Zomorodah', 'Bakhit', 'zomorodahbakhit@test.com', '5300000015', 'Student')
GO

