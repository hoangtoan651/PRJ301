USE [master]
GO
/****** Object:  Database [DB_Group_Assignment]    Script Date: 7/5/2022 10:06:13 PM ******/
CREATE DATABASE [DB_Group_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Group_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_Group_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Group_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_Group_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_Group_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Group_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Group_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Group_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Group_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Group_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Group_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_Group_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Group_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Group_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Group_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Group_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Group_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Group_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_Group_Assignment', N'ON'
GO
ALTER DATABASE [DB_Group_Assignment] SET QUERY_STORE = OFF
GO
USE [DB_Group_Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id_acc] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
	[role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_acc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_id] [nvarchar](150) NOT NULL,
	[Course_name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Group_id] [int] NOT NULL,
	[Group_Name] [nvarchar](150) NOT NULL,
	[Course_id] [nvarchar](150) NOT NULL,
	[LecturersCode] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Student]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Student](
	[Group_id] [int] NOT NULL,
	[StudentCode] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Group_id] ASC,
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturers]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturers](
	[id_acc] [int] NOT NULL,
	[LecturersCode] [nvarchar](150) NOT NULL,
	[LecName] [nvarchar](150) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LecturersCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[Lesson_id] [int] NOT NULL,
	[Course_id] [nvarchar](150) NOT NULL,
	[Group_id] [int] NOT NULL,
	[LName] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Slot] [int] NOT NULL,
	[LecturersCode] [nvarchar](150) NOT NULL,
	[Room] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Room_id] [int] IDENTITY(1,1) NOT NULL,
	[RName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Lesson_id] [int] NOT NULL,
	[StudentCode] [nvarchar](150) NOT NULL,
	[LecturersCode] [nvarchar](150) NOT NULL,
	[Group_id] [int] NOT NULL,
	[status] [int] NULL,
	[Time_Record] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Lesson_id] ASC,
	[StudentCode] ASC,
	[LecturersCode] ASC,
	[Group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[Slot_id] [int] IDENTITY(1,1) NOT NULL,
	[Time_Start] [nvarchar](50) NOT NULL,
	[Time_End] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Slot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/5/2022 10:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id_acc] [int] NOT NULL,
	[StudentCode] [nvarchar](150) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Image] [ntext] NULL,
	[email] [nvarchar](150) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (1, N'toanhd', N'123', 0)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (2, N'namnt', N'123', 0)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (3, N'manhnh', N'123', 0)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (4, N'annh', N'123', 1)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (5, N'sonnt5', N'123', 1)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (6, N'nhungtt', N'123', 1)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (7, N'thuytt', N'123', 1)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (8, N'mailt', N'123', 0)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (9, N'thanhdt', N'123', 0)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (10, N'ngannt', N'123', 0)
INSERT [dbo].[Account] ([id_acc], [username], [password], [role]) VALUES (12, N'hungtt', N'123', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'CSD201', N'Data Structures and Algorithms')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'DBI202', N'Introduction Database')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'JPD113', N'Elementary Japanese 1-A1.1')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'JPD123', N'Elementary Japanese 1-A1.2')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'JPD133', N'Elementary Japanese1-A1/A2')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'NWC203c', N'Computer Networking')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'OSG202', N'Operating Systems')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRF192', N'Programming Fundamentals')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'PRO192', N'Object-Oriented Programming')
INSERT [dbo].[Course] ([Course_id], [Course_name]) VALUES (N'WED201c', N'Web Design')
GO
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [LecturersCode]) VALUES (10, N'SE1605', N'PRJ301', N'sonnt5')
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [LecturersCode]) VALUES (12, N'SE1602JS', N'JPD133', N'thuytt')
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [LecturersCode]) VALUES (14, N'SE1621', N'PRJ301', N'sonnt5')
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [LecturersCode]) VALUES (15, N'SE1704', N'CSD201', N'nhungtt')
GO
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (10, N'HE150001')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (10, N'HE150231')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (10, N'HE150852')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (10, N'HE151090')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (12, N'HE150021')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (12, N'HE150452')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (12, N'HE150852')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (12, N'HE151090')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (12, N'HE152412')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (14, N'HE150001')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (14, N'HE150021')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (14, N'HE150852')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (14, N'HE151090')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (15, N'HE150001')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (15, N'HE150021')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (15, N'HE150231')
INSERT [dbo].[Group_Student] ([Group_id], [StudentCode]) VALUES (15, N'HE152412')
GO
INSERT [dbo].[Lecturers] ([id_acc], [LecturersCode], [LecName], [email], [Address], [gender], [dob]) VALUES (4, N'annh', N'Nguyen Huu An', N'annh77@gmail.com', N'Ha Noi', 1, CAST(N'2001-06-12' AS Date))
INSERT [dbo].[Lecturers] ([id_acc], [LecturersCode], [LecName], [email], [Address], [gender], [dob]) VALUES (6, N'nhungtt', N'Tran Thi Nhung', N'nhungtt265@gmail.com', N'Ha Noi', 0, CAST(N'1999-05-26' AS Date))
INSERT [dbo].[Lecturers] ([id_acc], [LecturersCode], [LecName], [email], [Address], [gender], [dob]) VALUES (5, N'sonnt5', N'Ngo Tung Son', N'sonnt5@gmail.com', N'Ha Noi', 1, CAST(N'1989-02-02' AS Date))
INSERT [dbo].[Lecturers] ([id_acc], [LecturersCode], [LecName], [email], [Address], [gender], [dob]) VALUES (7, N'thuytt', N'Tran Thi Thuy', N'thuytt2@gmail.com', N'Ha Noi', 0, CAST(N'1989-06-05' AS Date))
GO
INSERT [dbo].[Lesson] ([Lesson_id], [Course_id], [Group_id], [LName], [Date], [Slot], [LecturersCode], [Room]) VALUES (1, N'PRJ301', 10, N'Java Web Application Development', CAST(N'2022-05-10' AS Date), 2, N'sonnt5', 2)
INSERT [dbo].[Lesson] ([Lesson_id], [Course_id], [Group_id], [LName], [Date], [Slot], [LecturersCode], [Room]) VALUES (2, N'JPD133', 12, N'Elementary Japanese1-A1/A2', CAST(N'2022-05-09' AS Date), 3, N'thuytt', 3)
INSERT [dbo].[Lesson] ([Lesson_id], [Course_id], [Group_id], [LName], [Date], [Slot], [LecturersCode], [Room]) VALUES (3, N'CSD201', 14, N'Data Structures and Algorithms', CAST(N'2022-05-10' AS Date), 1, N'nhungtt', 5)
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Room_id], [RName]) VALUES (1, N'BE-211')
INSERT [dbo].[Room] ([Room_id], [RName]) VALUES (2, N'DE-205')
INSERT [dbo].[Room] ([Room_id], [RName]) VALUES (3, N'DE-304')
INSERT [dbo].[Room] ([Room_id], [RName]) VALUES (4, N'DE-303')
INSERT [dbo].[Room] ([Room_id], [RName]) VALUES (5, N'DE-307')
INSERT [dbo].[Room] ([Room_id], [RName]) VALUES (6, N'AL-206')
INSERT [dbo].[Room] ([Room_id], [RName]) VALUES (7, N'BE-306')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
INSERT [dbo].[Schedule] ([Lesson_id], [StudentCode], [LecturersCode], [Group_id], [status], [Time_Record]) VALUES (1, N'HE150852', N'sonnt5', 10, 1, CAST(N'2022-05-10' AS Date))
INSERT [dbo].[Schedule] ([Lesson_id], [StudentCode], [LecturersCode], [Group_id], [status], [Time_Record]) VALUES (1, N'HE151090', N'sonnt5', 10, 1, CAST(N'2022-05-10' AS Date))
INSERT [dbo].[Schedule] ([Lesson_id], [StudentCode], [LecturersCode], [Group_id], [status], [Time_Record]) VALUES (2, N'HE150852', N'thuytt', 12, 0, CAST(N'2022-05-09' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (1, N'7:30', N'9:00')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (2, N'9:10', N'10:40')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (3, N'10:50', N'12:20')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (4, N'14:30', N'16:00')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (5, N'16:10', N'17:40')
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [Image], [email], [address], [gender], [dob]) VALUES (8, N'HE150001', N'Le Thanh Mai', NULL, N'mailt14@gmail.com', N'Thai Nguyen', 0, CAST(N'2001-04-14' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [Image], [email], [address], [gender], [dob]) VALUES (9, N'HE150021', N'Dang Tien Thanh', NULL, N'thanh1522@gmail.com', N'Ha Noi', 1, CAST(N'2001-06-12' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [Image], [email], [address], [gender], [dob]) VALUES (3, N'HE150231', N'Nguyen Hoang Manh', NULL, N'manhnh123@gmail.com', N'Bac Kan', 1, CAST(N'2001-12-03' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [Image], [email], [address], [gender], [dob]) VALUES (10, N'HE150452', N'Nguyen Thi Ngan', NULL, N'ngannt201@gmail.com', N'Hai Phong ', 0, CAST(N'2001-03-26' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [Image], [email], [address], [gender], [dob]) VALUES (1, N'HE150852', N'Hoang Duc Toan', NULL, N'toanhd12@gmail.com', N'Ha Noi', 1, CAST(N'2001-05-06' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [Image], [email], [address], [gender], [dob]) VALUES (2, N'HE151090', N'Nguyen Trung nam', NULL, N'namntCony@gmail.com', N'Ba Vi ', 1, CAST(N'2001-02-16' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [Image], [email], [address], [gender], [dob]) VALUES (12, N'HE152412', N'Tran Tien Hung', NULL, N'hungtt63@gmail.com', N'Nghe An', 1, CAST(N'2002-07-24' AS Date))
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([Course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturers] FOREIGN KEY([LecturersCode])
REFERENCES [dbo].[Lecturers] ([LecturersCode])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturers]
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student_Group] FOREIGN KEY([Group_id])
REFERENCES [dbo].[Group] ([Group_id])
GO
ALTER TABLE [dbo].[Group_Student] CHECK CONSTRAINT [FK_Group_Student_Group]
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[Group_Student] CHECK CONSTRAINT [FK_Group_Student_Student]
GO
ALTER TABLE [dbo].[Lecturers]  WITH CHECK ADD  CONSTRAINT [FK_Lecturers_Account] FOREIGN KEY([id_acc])
REFERENCES [dbo].[Account] ([id_acc])
GO
ALTER TABLE [dbo].[Lecturers] CHECK CONSTRAINT [FK_Lecturers_Account]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Group] FOREIGN KEY([Group_id])
REFERENCES [dbo].[Group] ([Group_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Group]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Room] FOREIGN KEY([Room])
REFERENCES [dbo].[Room] ([Room_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Room]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Slot] FOREIGN KEY([Slot])
REFERENCES [dbo].[Slot] ([Slot_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Slot]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Group] FOREIGN KEY([Group_id])
REFERENCES [dbo].[Group] ([Group_id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Group]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Lecturers] FOREIGN KEY([LecturersCode])
REFERENCES [dbo].[Lecturers] ([LecturersCode])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Lecturers]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Lesson] FOREIGN KEY([Lesson_id])
REFERENCES [dbo].[Lesson] ([Lesson_id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Lesson]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([id_acc])
REFERENCES [dbo].[Account] ([id_acc])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Account]
GO
USE [master]
GO
ALTER DATABASE [DB_Group_Assignment] SET  READ_WRITE 
GO
