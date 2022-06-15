USE [master]
GO
/****** Object:  Database [DB_Assignment]    Script Date: 6/15/2022 10:46:29 PM ******/
CREATE DATABASE [DB_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_Assignment', N'ON'
GO
ALTER DATABASE [DB_Assignment] SET QUERY_STORE = OFF
GO
USE [DB_Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/15/2022 10:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id_acc] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_acc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/15/2022 10:46:29 PM ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 6/15/2022 10:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Group_id] [int] IDENTITY(1,1) NOT NULL,
	[Group_Name] [nvarchar](150) NOT NULL,
	[Course_id] [nvarchar](150) NOT NULL,
	[StudentCode] [nvarchar](150) NOT NULL,
	[LecturersCode] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturers]    Script Date: 6/15/2022 10:46:29 PM ******/
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
/****** Object:  Table [dbo].[Lesson]    Script Date: 6/15/2022 10:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[Lession_id] [int] IDENTITY(1,1) NOT NULL,
	[Group_id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Slot] [int] NOT NULL,
	[LecturersCode] [nvarchar](150) NOT NULL,
	[Room] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Lession_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/15/2022 10:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Room_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 6/15/2022 10:46:29 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 6/15/2022 10:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id_acc] [int] NOT NULL,
	[StudentCode] [nvarchar](150) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id_acc], [username], [password]) VALUES (1, N'toanhd', N'123')
INSERT [dbo].[Account] ([id_acc], [username], [password]) VALUES (2, N'namnt', N'123')
INSERT [dbo].[Account] ([id_acc], [username], [password]) VALUES (3, N'manhnh', N'123')
INSERT [dbo].[Account] ([id_acc], [username], [password]) VALUES (4, N'annh', N'123')
INSERT [dbo].[Account] ([id_acc], [username], [password]) VALUES (5, N'sonnt5', N'123')
INSERT [dbo].[Account] ([id_acc], [username], [password]) VALUES (6, N'nhungtt', N'123')
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
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [StudentCode], [LecturersCode]) VALUES (1, N'SE1605', N'PRJ301', N'HE150231', N'sonnt5')
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [StudentCode], [LecturersCode]) VALUES (2, N'SE1634', N'PRj301', N'HE150852', N'sonnt5')
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [StudentCode], [LecturersCode]) VALUES (5, N'SE1605', N'CSD201', N'HE150852', N'nhungtt')
INSERT [dbo].[Group] ([Group_id], [Group_Name], [Course_id], [StudentCode], [LecturersCode]) VALUES (6, N'SE1612', N'PRF192', N'HE160132', N'annh')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
INSERT [dbo].[Lecturers] ([id_acc], [LecturersCode], [LecName], [email], [Address], [gender], [dob]) VALUES (4, N'annh', N'Nguyen Huu An', N'annh77@gmail.com', N'Ha Noi', 1, CAST(N'2001-06-12' AS Date))
INSERT [dbo].[Lecturers] ([id_acc], [LecturersCode], [LecName], [email], [Address], [gender], [dob]) VALUES (6, N'nhungtt', N'Tran Thi Nhung', N'nhungtt265@gmail.com', N'Ha Noi', 0, CAST(N'1999-05-26' AS Date))
INSERT [dbo].[Lecturers] ([id_acc], [LecturersCode], [LecName], [email], [Address], [gender], [dob]) VALUES (5, N'sonnt5', N'Ngo Tung Son', N'sonnt5@gmail.com', N'Ha Noi', 1, CAST(N'1989-02-02' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (1, N'BE-211')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (2, N'DE-205')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (3, N'DE-304')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (4, N'DE-303')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (5, N'DE-307')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (6, N'AL-206')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (7, N'BE-306')
INSERT [dbo].[Room] ([Room_id], [Name]) VALUES (8, N'')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (1, N'7:30', N'9:00')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (2, N'9:10', N'10:40')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (3, N'10:50', N'12:20')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (5, N'14:30', N'16:00')
INSERT [dbo].[Slot] ([Slot_id], [Time_Start], [Time_End]) VALUES (6, N'16:10', N'17:40')
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [email], [address], [gender], [dob]) VALUES (3, N'HE150231', N'Nguyen Hoang Manh', N'manhnh123@gmail.com', N'Bac Kan', 1, CAST(N'2001-12-03' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [email], [address], [gender], [dob]) VALUES (1, N'HE150852', N'Hoang Duc Toan', N'toanhd12@gmail.com', N'Ha Noi', 1, CAST(N'2001-05-06' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [email], [address], [gender], [dob]) VALUES (2, N'HE151090', N'Nguyen Trung nam', N'namntCony@gmail.com', N'Ba Vi ', 1, CAST(N'2001-02-16' AS Date))
INSERT [dbo].[Student] ([id_acc], [StudentCode], [Name], [email], [address], [gender], [dob]) VALUES (3, N'HE160132', N'Hoang Ngan', N'nganh11@gmail.com', N'Thai Nguyen', 0, CAST(N'2002-07-13' AS Date))
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
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Student]
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
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([id_acc])
REFERENCES [dbo].[Account] ([id_acc])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Account]
GO
USE [master]
GO
ALTER DATABASE [DB_Assignment] SET  READ_WRITE 
GO
