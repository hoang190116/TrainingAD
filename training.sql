USE [training]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/15/2021 6:06:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](50) NOT NULL,
	[category_des] [varchar](150) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 12/15/2021 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[c_name] [varchar](50) NOT NULL,
	[c_des] [varchar](150) NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 12/15/2021 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[role_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 12/15/2021 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic](
	[topic_id] [int] IDENTITY(1,1) NOT NULL,
	[topic_name] [varchar](50) NOT NULL,
	[topic_des] [varchar](150) NULL,
	[c_id] [int] NULL,
	[u_id] [int] NULL,
 CONSTRAINT [PK_topic] PRIMARY KEY CLUSTERED 
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_course]    Script Date: 12/15/2021 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_course](
	[u_id] [int] NOT NULL,
	[c_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userDetail]    Script Date: 12/15/2021 6:06:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userDetail](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_username] [varchar](20) NULL,
	[u_pass] [varchar](20) NULL,
	[u_fullname] [varchar](50) NULL,
	[u_phone] [int] NULL,
	[u_date_of_bird] [date] NULL,
	[u_address] [varchar](50) NULL,
	[u_detail] [varchar](150) NULL,
	[role_name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name], [category_des]) VALUES (18, N'ssss', N'sssssssssss')
INSERT [dbo].[category] ([category_id], [category_name], [category_des]) VALUES (23, N'dddddd', N'asdwadwawdasdw')
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[course] ON 

INSERT [dbo].[course] ([c_id], [category_id], [c_name], [c_des]) VALUES (6, 18, N'asdw', N'qweqw')
INSERT [dbo].[course] ([c_id], [category_id], [c_name], [c_des]) VALUES (10, 23, N'asdasd', N'asdasdwdw')
INSERT [dbo].[course] ([c_id], [category_id], [c_name], [c_des]) VALUES (11, 18, N'112', N'112')
INSERT [dbo].[course] ([c_id], [category_id], [c_name], [c_des]) VALUES (12, 23, N'1231asd', N'123asd')
SET IDENTITY_INSERT [dbo].[course] OFF
INSERT [dbo].[role] ([role_name]) VALUES (N'Admin')
INSERT [dbo].[role] ([role_name]) VALUES (N'Staff')
INSERT [dbo].[role] ([role_name]) VALUES (N'Student')
INSERT [dbo].[role] ([role_name]) VALUES (N'Teacher')
SET IDENTITY_INSERT [dbo].[topic] ON 

INSERT [dbo].[topic] ([topic_id], [topic_name], [topic_des], [c_id], [u_id]) VALUES (33, N'sdwdw21', N'asdsd222', 6, NULL)
INSERT [dbo].[topic] ([topic_id], [topic_name], [topic_des], [c_id], [u_id]) VALUES (34, N'abc', N'asdasd', 12, 12)
INSERT [dbo].[topic] ([topic_id], [topic_name], [topic_des], [c_id], [u_id]) VALUES (36, N'abcd', N'abcd', 11, 12)
INSERT [dbo].[topic] ([topic_id], [topic_name], [topic_des], [c_id], [u_id]) VALUES (37, N'add123', N'add123', 11, 12)
INSERT [dbo].[topic] ([topic_id], [topic_name], [topic_des], [c_id], [u_id]) VALUES (41, N'sdasd', N'awd12', 6, 12)
SET IDENTITY_INSERT [dbo].[topic] OFF
INSERT [dbo].[user_course] ([u_id], [c_id]) VALUES (19, 6)
INSERT [dbo].[user_course] ([u_id], [c_id]) VALUES (19, 10)
INSERT [dbo].[user_course] ([u_id], [c_id]) VALUES (19, 11)
INSERT [dbo].[user_course] ([u_id], [c_id]) VALUES (19, 12)
SET IDENTITY_INSERT [dbo].[userDetail] ON 

INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (9, N'admin', N'admin', N'admin', 0, CAST(N'2021-11-12' AS Date), N'', N'', N'Admin')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (10, N'staff', N'staff', N'staff', 0, CAST(N'2021-11-18' AS Date), N'', N'', N'Staff')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (11, N'student', N'student', N'student', 0, CAST(N'2021-11-12' AS Date), N'', N'', N'Student')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (12, N'teacher', N'teacher', N'teacher', 56556, CAST(N'2021-11-11' AS Date), N'abc', N'', N'Teacher')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (16, N'student2', N'student2', N'student2', 0, CAST(N'2021-11-27' AS Date), N'', N'', N'Student')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (17, N'student3', N'student3', N'student3', 0, CAST(N'2021-11-26' AS Date), N'', N'', N'Student')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (18, N'student4', N'123', N'student4', 0, CAST(N'2021-11-25' AS Date), N'', N'', N'Student')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (19, N'student5', N'123', N'student567', 123123, CAST(N'2021-11-30' AS Date), N'123', N'', N'Student')
INSERT [dbo].[userDetail] ([u_id], [u_username], [u_pass], [u_fullname], [u_phone], [u_date_of_bird], [u_address], [u_detail], [role_name]) VALUES (20, N'teacher2', N'teacher@123A', N'teacher2', 0, CAST(N'2021-12-09' AS Date), N'', N'', N'Teacher')
SET IDENTITY_INSERT [dbo].[userDetail] OFF
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_category]
GO
ALTER TABLE [dbo].[topic]  WITH CHECK ADD  CONSTRAINT [FK_topic_course] FOREIGN KEY([c_id])
REFERENCES [dbo].[course] ([c_id])
GO
ALTER TABLE [dbo].[topic] CHECK CONSTRAINT [FK_topic_course]
GO
ALTER TABLE [dbo].[topic]  WITH CHECK ADD  CONSTRAINT [FK_topic_userDetail] FOREIGN KEY([u_id])
REFERENCES [dbo].[userDetail] ([u_id])
GO
ALTER TABLE [dbo].[topic] CHECK CONSTRAINT [FK_topic_userDetail]
GO
ALTER TABLE [dbo].[user_course]  WITH CHECK ADD  CONSTRAINT [FK_user_course_course] FOREIGN KEY([c_id])
REFERENCES [dbo].[course] ([c_id])
GO
ALTER TABLE [dbo].[user_course] CHECK CONSTRAINT [FK_user_course_course]
GO
ALTER TABLE [dbo].[user_course]  WITH CHECK ADD  CONSTRAINT [FK_user_course_userDetail] FOREIGN KEY([u_id])
REFERENCES [dbo].[userDetail] ([u_id])
GO
ALTER TABLE [dbo].[user_course] CHECK CONSTRAINT [FK_user_course_userDetail]
GO
ALTER TABLE [dbo].[userDetail]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([role_name])
REFERENCES [dbo].[role] ([role_name])
GO
ALTER TABLE [dbo].[userDetail] CHECK CONSTRAINT [FK_user_role]
GO
