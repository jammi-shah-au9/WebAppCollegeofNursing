USE [NursingCollegeDB]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NULL,
	[StudentId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttendanceSheet]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceSheet](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AttendanceId] [bigint] NULL,
	[AttDate] [date] NULL,
	[AttStatus] [nvarchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassInfo]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[CommentDate] [datetime] NULL,
	[UserId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](15) NULL,
	[Message] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [bigint] NOT NULL,
	[Designation] [nvarchar](50) NULL,
	[DOJ] [date] NULL,
	[Qualification] [nvarchar](50) NULL,
	[Specialization] [nvarchar](200) NULL,
	[Experience] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDate] [date] NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reply]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[ReplyDate] [datetime] NULL,
	[CommentId] [bigint] NULL,
	[UserId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Result]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SubId] [int] NULL,
	[StudentId] [bigint] NULL,
	[Paper1] [float] NULL,
	[Paper2] [float] NULL,
	[Paper3] [float] NULL,
	[ModelPaper] [float] NULL,
	[PPT] [float] NULL,
	[Assignment] [float] NULL,
	[ClassPresentation] [float] NULL,
	[Attendence] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slider]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__Slider__3214EC077C63451D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [bigint] NOT NULL,
	[RollNo] [nvarchar](100) NULL,
	[Batch] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudyMaterial]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyMaterial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [nvarchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[SubjectId] [int] NULL,
	[UserId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudyMaterialFiles]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyMaterialFiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilePath] [nvarchar](300) NULL,
	[StudyMaterialId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubjectAllocation]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectAllocation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartPeriod] [time](7) NULL,
	[EndPeriod] [time](7) NULL,
	[Batch] [int] NULL,
	[SubjectId] [int] NULL,
	[EmpId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubCode] [nvarchar](30) NULL,
	[SubName] [nvarchar](100) NULL,
	[ClassId] [int] NULL,
	[DepartmentId] [int] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 17-May-19 11:08:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Parentage] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](200) NULL,
	[ContactNo] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[ImagePath] [nvarchar](200) NULL,
	[DepartmentId] [int] NULL,
	[Password] [nvarchar](max) NULL,
	[Salt] [nvarchar](max) NULL,
	[ResetCode] [nvarchar](max) NULL,
	[UserRole] [nvarchar](10) NULL,
	[IsActive] [bit] NULL,
	[UserCode] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (1, 1, 8)
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (2, 1, 9)
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (3, 1, 10)
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (4, 1, 11)
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (5, 2, 8)
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (6, 2, 9)
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (7, 2, 10)
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId]) VALUES (8, 2, 11)
SET IDENTITY_INSERT [dbo].[Attendance] OFF
SET IDENTITY_INSERT [dbo].[AttendanceSheet] ON 

INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (1, 5, CAST(N'2019-01-05' AS Date), N'A')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (2, 6, CAST(N'2019-01-05' AS Date), N'P')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (3, 7, CAST(N'2019-01-05' AS Date), N'P')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (4, 8, CAST(N'2019-01-05' AS Date), N'A')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (5, 5, CAST(N'2019-01-04' AS Date), N'P')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (6, 6, CAST(N'2019-01-04' AS Date), N'A')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (7, 7, CAST(N'2019-01-04' AS Date), N'P')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (8, 8, CAST(N'2019-01-04' AS Date), N'A')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (9, 5, CAST(N'2019-04-30' AS Date), N'P')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (10, 6, CAST(N'2019-04-30' AS Date), N'P')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (11, 7, CAST(N'2019-04-30' AS Date), N'P')
INSERT [dbo].[AttendanceSheet] ([Id], [AttendanceId], [AttDate], [AttStatus]) VALUES (12, 8, CAST(N'2019-04-30' AS Date), N'P')
SET IDENTITY_INSERT [dbo].[AttendanceSheet] OFF
SET IDENTITY_INSERT [dbo].[ClassInfo] ON 

INSERT [dbo].[ClassInfo] ([Id], [ClassName]) VALUES (1, N'Ist Year')
INSERT [dbo].[ClassInfo] ([Id], [ClassName]) VALUES (2, N'2nd Year')
INSERT [dbo].[ClassInfo] ([Id], [ClassName]) VALUES (3, N'3rd Year')
SET IDENTITY_INSERT [dbo].[ClassInfo] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [DeptName]) VALUES (1, N'Nursing')
SET IDENTITY_INSERT [dbo].[Department] OFF
INSERT [dbo].[Employee] ([Id], [Designation], [DOJ], [Qualification], [Specialization], [Experience]) VALUES (1, N'Admin', CAST(N'2019-02-04' AS Date), N'BCA', N'Web Developer', N'3 years')
INSERT [dbo].[Employee] ([Id], [Designation], [DOJ], [Qualification], [Specialization], [Experience]) VALUES (2, N'Admin', CAST(N'2019-03-04' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Id], [Designation], [DOJ], [Qualification], [Specialization], [Experience]) VALUES (3, N'HOD', CAST(N'2019-11-04' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Id], [Designation], [DOJ], [Qualification], [Specialization], [Experience]) VALUES (4, N'Professor', CAST(N'2019-11-04' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Id], [Designation], [DOJ], [Qualification], [Specialization], [Experience]) VALUES (6, N'Asst Professor', CAST(N'2019-10-04' AS Date), NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Id], [Designation], [DOJ], [Qualification], [Specialization], [Experience]) VALUES (7, N'Clerk', CAST(N'2019-03-04' AS Date), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Id], [EventDate], [Description], [ImagePath], [IsActive]) VALUES (1, CAST(N'2019-01-01' AS Date), N'whar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar everwhar ever', N'~/Images/Events/1323276369.jpg', 1)
INSERT [dbo].[Events] ([Id], [EventDate], [Description], [ImagePath], [IsActive]) VALUES (4, CAST(N'2019-05-14' AS Date), N'where there is a will there is a way where there is a will there is a way where there is a will there is a way where there is a will there is a way', N'~/Images/Events/1324444306.jpg', 1)
INSERT [dbo].[Events] ([Id], [EventDate], [Description], [ImagePath], [IsActive]) VALUES (5, CAST(N'2019-05-15' AS Date), N'What Ever God does is done for our best', N'~/Images/Events/1325437984.jpg', 1)
INSERT [dbo].[Events] ([Id], [EventDate], [Description], [ImagePath], [IsActive]) VALUES (6, CAST(N'2019-05-21' AS Date), N'whare there is a will there is a way whare there is a will there is a waywhare there is a will there is a way', N'~/Images/Events/1339031022.jpg', 1)
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([Id], [Title], [Description]) VALUES (1, N'Nursing College is Organizing Picnic ', N'Nursing College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic College is Organizing Picnic ')
INSERT [dbo].[Notifications] ([Id], [Title], [Description]) VALUES (2, N'Hello this is temp', N'Description of nursing')
INSERT [dbo].[Notifications] ([Id], [Title], [Description]) VALUES (3, N'Hello this is temp', N'Description of nursing')
INSERT [dbo].[Notifications] ([Id], [Title], [Description]) VALUES (4, N'Hello this is temp', N'Description of nursing')
SET IDENTITY_INSERT [dbo].[Notifications] OFF
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([Id], [SubId], [StudentId], [Paper1], [Paper2], [Paper3], [ModelPaper], [PPT], [Assignment], [ClassPresentation], [Attendence]) VALUES (1, 2, 8, 50, 30, 40, 70, 45, 67, 44, 65)
INSERT [dbo].[Result] ([Id], [SubId], [StudentId], [Paper1], [Paper2], [Paper3], [ModelPaper], [PPT], [Assignment], [ClassPresentation], [Attendence]) VALUES (2, 2, 9, 70, 40, 30, 60, 65, 45, 78, 65)
INSERT [dbo].[Result] ([Id], [SubId], [StudentId], [Paper1], [Paper2], [Paper3], [ModelPaper], [PPT], [Assignment], [ClassPresentation], [Attendence]) VALUES (3, 2, 10, 34, 35, 36, 39, 56, 45, 67, 37)
INSERT [dbo].[Result] ([Id], [SubId], [StudentId], [Paper1], [Paper2], [Paper3], [ModelPaper], [PPT], [Assignment], [ClassPresentation], [Attendence]) VALUES (4, 2, 11, 45, 46, 56, 34, 65, 43, 56, 67)
SET IDENTITY_INSERT [dbo].[Result] OFF
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([Id], [Caption], [Description], [ImagePath], [IsActive]) VALUES (2, N'Dal Lake', N'Lorem ipsum dolor sit amet consec tetur adipisicing elit, sed do eiusmod tempor incididunt labore. Lorem ipsum dolor sit amet consec tetur adipisicing elit, sed do eiusmod tempor incididunt labore.', N'~/Images/Slider/0107226204.jpg', 1)
INSERT [dbo].[Slider] ([Id], [Caption], [Description], [ImagePath], [IsActive]) VALUES (3, N'Hello', N'What ever God does is done for our best What ever God does is done for our best
What ever God does is done for our best What ever God does is done for our best
 What ever God does is done for our best', N'~/Images/Slider/1331220622.jpg', 1)
INSERT [dbo].[Slider] ([Id], [Caption], [Description], [ImagePath], [IsActive]) VALUES (4, N'Bita', N'Shankar shankar laeel laeelShankar shankar laeel laeelShankar shankar laeel laeelShankar shankar laeel laeelShankar shankar laeel laeelShankar shankar laeel laeelShankar shankar laeel laeelShankar shankar laeel laeelShankar shankar laeel laeel', N'~/Images/Slider/1337345838.jpg', 1)
SET IDENTITY_INSERT [dbo].[Slider] OFF
INSERT [dbo].[Student] ([Id], [RollNo], [Batch]) VALUES (8, N'101', 2015)
INSERT [dbo].[Student] ([Id], [RollNo], [Batch]) VALUES (9, N'102', 2015)
INSERT [dbo].[Student] ([Id], [RollNo], [Batch]) VALUES (10, N'103', 2015)
INSERT [dbo].[Student] ([Id], [RollNo], [Batch]) VALUES (11, N'104', 2015)
SET IDENTITY_INSERT [dbo].[StudyMaterial] ON 

INSERT [dbo].[StudyMaterial] ([Id], [Topic], [Description], [SubjectId], [UserId]) VALUES (1, N'Micro Organism', N'Micro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro OrganismMicro Organism', 1, 3)
INSERT [dbo].[StudyMaterial] ([Id], [Topic], [Description], [SubjectId], [UserId]) VALUES (3, N'video', N'wqjhgdhjqsdg', 2, 3)
INSERT [dbo].[StudyMaterial] ([Id], [Topic], [Description], [SubjectId], [UserId]) VALUES (4, N'shggdhsgd', N'sq,mdjws', 1, 3)
INSERT [dbo].[StudyMaterial] ([Id], [Topic], [Description], [SubjectId], [UserId]) VALUES (5, NULL, N'sq,mdjws', NULL, 3)
INSERT [dbo].[StudyMaterial] ([Id], [Topic], [Description], [SubjectId], [UserId]) VALUES (6, N'wdds', N'xbnbn', 1, 3)
INSERT [dbo].[StudyMaterial] ([Id], [Topic], [Description], [SubjectId], [UserId]) VALUES (7, N'ygfg', N'hghgh', 1, 3)
SET IDENTITY_INSERT [dbo].[StudyMaterial] OFF
SET IDENTITY_INSERT [dbo].[StudyMaterialFiles] ON 

INSERT [dbo].[StudyMaterialFiles] ([Id], [FilePath], [StudyMaterialId]) VALUES (1, N'~/Files/StudyMaterial/0240141110.pdf', 1)
INSERT [dbo].[StudyMaterialFiles] ([Id], [FilePath], [StudyMaterialId]) VALUES (3, N'~/Files/StudyMaterial/0315544766.mp4', 3)
INSERT [dbo].[StudyMaterialFiles] ([Id], [FilePath], [StudyMaterialId]) VALUES (4, N'~/Files/StudyMaterial/0320534170.pdf', 4)
INSERT [dbo].[StudyMaterialFiles] ([Id], [FilePath], [StudyMaterialId]) VALUES (5, N'~/Files/StudyMaterial/0358544037.pdf', 7)
SET IDENTITY_INSERT [dbo].[StudyMaterialFiles] OFF
SET IDENTITY_INSERT [dbo].[SubjectAllocation] ON 

INSERT [dbo].[SubjectAllocation] ([Id], [StartPeriod], [EndPeriod], [Batch], [SubjectId], [EmpId]) VALUES (1, CAST(N'10:00:00' AS Time), CAST(N'22:40:00' AS Time), 2015, 1, 3)
INSERT [dbo].[SubjectAllocation] ([Id], [StartPeriod], [EndPeriod], [Batch], [SubjectId], [EmpId]) VALUES (2, CAST(N'12:00:00' AS Time), CAST(N'12:40:00' AS Time), 2015, 2, 4)
SET IDENTITY_INSERT [dbo].[SubjectAllocation] OFF
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [SubCode], [SubName], [ClassId], [DepartmentId], [IsDeleted]) VALUES (1, N'Nursing101', N'Zology', 1, 1, 0)
INSERT [dbo].[Subjects] ([Id], [SubCode], [SubName], [ClassId], [DepartmentId], [IsDeleted]) VALUES (2, N'Nursing102', N'Botany', 1, 1, 0)
INSERT [dbo].[Subjects] ([Id], [SubCode], [SubName], [ClassId], [DepartmentId], [IsDeleted]) VALUES (3, N'Nursing103', N'Chemistry', 1, 1, 0)
INSERT [dbo].[Subjects] ([Id], [SubCode], [SubName], [ClassId], [DepartmentId], [IsDeleted]) VALUES (4, N'Nursing104', N'English', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Subjects] OFF
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (1, N'Shahid Dar', N'Ab Rashid Dar', N'Male', CAST(N'1995-01-10' AS Date), N'Kursu Rajbagh', N'7889379123', N'wizshahid@gmail.com', N'~/Images/DP/3004409045.jpg', 1, N'x4ChJz96KoXOPZbDPBWFNgkyIkBqZOc4kEauNCZmRTM=', N'zRAwjQnsFJohyBARWAJzkvvRNVk=', NULL, N'Admin', 1, N'Emp101')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (2, N'Sami', NULL, NULL, NULL, N'Barzulla', N'7889767654', N'samiaullah1@gmail.com', N'~/Images/DP/default.jpg', 1, N'AYYFaA6lwvzi+ZVCUTOd2XIMKpl7Zcyl0jnrOQ2kCYM=', N'0uJ7Z6uOmRTZx5Cg7b8ouB1WAj8=', N'f5480607-e075-40a6-a9ca-139cdb28b72a', N'Admin', 1, N'Emp102')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (3, N'Zahid', NULL, NULL, NULL, N'Barzulla', N'7889767654', N'zahid@gmail.com', N'~/Images/DP/default.jpg', 1, N'Ww4SoO2eWWmBFvyP7p69721uPunzKiqYCcgLxdrePDQ=', N'WYK3+46wBFTEf/ZqZ9VOsoPqWc4=', NULL, N'HOD', 1, N'Emp103')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (4, N'Irfan', NULL, NULL, NULL, N'Barzulla', N'7889767654', N'samiaullah1@gmail.com', N'~/Images/DP/1723463651.jpg', 1, N'Kdb+j4ZImUMi9TRjohg7Fm7Eihtg9XU5cCx5Ww9exkU=', N'piaYSbg3Cmpt5k1iV1ymFH6kVsU=', NULL, N'Faculty', 1, N'Emp104')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (6, N'Sameer', NULL, NULL, NULL, N'Barzulla', N'7889767654', N'Sameer@gmail.com', N'~/Images/DP/default.jpg', 1, N'JxxCykzXuNea3p0724KDIPeB20drOMmq+BbaLBF8ppo=', N'cx8Ew56b1XfznGAAmEvEwIC9nzw=', NULL, N'Faculty', 1, N'Emp105')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (7, N'Amir', NULL, NULL, NULL, N'Kursu Rajbagh', N'8787878', N'Amir@gmail.com', N'~/Images/DP/default.jpg', 1, N'nslQioNv0b2wG6NzGhye14CfATFMwRMaO5GkB8QjCNU=', N'ca4RQH+1jWOD3aT8cWkMOflqWdg=', NULL, N'Faculty', 1, N'Emp108')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (8, N'Arshid', N'Gulham Mohd', N'Male', CAST(N'1995-12-10' AS Date), N'Rajbagh', N'788989909090', N'arshid@gmail.com', N'~/Images/DP/default.jpg', 1, N'pgkcX6bx4+zNamwCerrsziuXKuDhLr1tBX75+X/Awrw=', N'bW5f6QtUe+yb6qnmAdBLMRCtfaQ=', NULL, N'Student', 1, N'Reg101')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (9, N'Danish', N'Gulham Mohd', N'Male', CAST(N'1995-12-10' AS Date), N'Nowgam', N'909090909', N'danish@gmail.com', N'~/Images/DP/default.jpg', 1, N'oNLivnY1OhRDcZC2MiaE2CKQcwvCTHtdB23ELjflvjo=', N'fdETA4LMWOK8W8ImX0zpphdN3MU=', NULL, N'Student', 1, N'Reg102')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (10, N'Mudasir', N'Gulham Mohd', N'Male', CAST(N'1995-12-10' AS Date), N'Barzulla', N'909090909', N'mudasir@gmail.com', N'~/Images/DP/default.jpg', 1, N'zI4YmMdOy/WdivMXaifVzwxda6eoDupRWINgXxWe7vY=', N'17DXEbMWRhOmkOH8uEtWGQuIoB4=', NULL, N'Student', 1, N'Reg103')
INSERT [dbo].[UserAccount] ([Id], [Name], [Parentage], [Gender], [DOB], [Address], [ContactNo], [Email], [ImagePath], [DepartmentId], [Password], [Salt], [ResetCode], [UserRole], [IsActive], [UserCode]) VALUES (11, N'Aqib', N'Parvez', N'Male', CAST(N'1995-12-10' AS Date), N'Barzulla', N'898989898', N'aqib@gmail.com', N'~/Images/DP/default.jpg', 1, N'ZEOe/FlgEzTW6mDfrIhoQ6Ic+Yk4bEcwLQHCEModPl4=', N'G92nUKlB/VlVOvFBms4nSBLyJKM=', NULL, N'Student', 1, N'reg104')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[AttendanceSheet]  WITH CHECK ADD FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[Attendance] ([Id])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comments] ([Id])
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD FOREIGN KEY([SubId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[StudyMaterial]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[StudyMaterial]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[StudyMaterialFiles]  WITH CHECK ADD FOREIGN KEY([StudyMaterialId])
REFERENCES [dbo].[StudyMaterial] ([Id])
GO
ALTER TABLE [dbo].[SubjectAllocation]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[SubjectAllocation]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassInfo] ([Id])
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
