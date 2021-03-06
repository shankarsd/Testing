USE [Testing]
GO
/****** Object:  Table [dbo].[tblTester]    Script Date: 06/18/2020 15:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTester](
	[Tst_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Adress] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email_Id] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ep_Id] [varchar](50) NULL,
 CONSTRAINT [PK_tblTester] PRIMARY KEY CLUSTERED 
(
	[Tst_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblTester] ON
INSERT [dbo].[tblTester] ([Tst_Id], [Name], [Adress], [City], [Mobile], [Email_Id], [Password], [ep_Id]) VALUES (1, N'Anil', N'Beml', N'Mysore', N'8562547859', N'anil@gmail.com', N'123', N'ep101')
INSERT [dbo].[tblTester] ([Tst_Id], [Name], [Adress], [City], [Mobile], [Email_Id], [Password], [ep_Id]) VALUES (2, N'Rakul', N'Streat', N'Mysore', N'8523645874', N'rakul@gmail.com', N'123', N'ep102')
INSERT [dbo].[tblTester] ([Tst_Id], [Name], [Adress], [City], [Mobile], [Email_Id], [Password], [ep_Id]) VALUES (4, N'Bharath', N'Beml', N'Mysore', N'8652321458', N'bharath@gmail.com', N'123', N'ep104')
INSERT [dbo].[tblTester] ([Tst_Id], [Name], [Adress], [City], [Mobile], [Email_Id], [Password], [ep_Id]) VALUES (7, N'Suman', N'Street', N'Mysore', N'9652354785', N'suman@gmail.com', N'123', N'ep103')
INSERT [dbo].[tblTester] ([Tst_Id], [Name], [Adress], [City], [Mobile], [Email_Id], [Password], [ep_Id]) VALUES (8, N'Deepak', N'Koppal', N'Mysore', N'9541265489', N'deepak@gmail.com', N'123', N'ep105')
INSERT [dbo].[tblTester] ([Tst_Id], [Name], [Adress], [City], [Mobile], [Email_Id], [Password], [ep_Id]) VALUES (9, N'Manish', N'Beml ', N'Mysore', N'8562496548', N'manish@gmail.com', N'123', N'ep106')
SET IDENTITY_INSERT [dbo].[tblTester] OFF
/****** Object:  Table [dbo].[tblProject]    Script Date: 06/18/2020 15:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProject](
	[Pr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Domain] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tblProject] PRIMARY KEY CLUSTERED 
(
	[Pr_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblProject] ON
INSERT [dbo].[tblProject] ([Pr_Id], [Name], [Domain], [Status]) VALUES (1, N'Hospital Managements', N'Web Api MVC', N'Alloted')
INSERT [dbo].[tblProject] ([Pr_Id], [Name], [Domain], [Status]) VALUES (2, N'Hotel Booking', N'Angular', N'Alloted')
INSERT [dbo].[tblProject] ([Pr_Id], [Name], [Domain], [Status]) VALUES (3, N'Bus Reservation', N'MVC', N'Alloted')
INSERT [dbo].[tblProject] ([Pr_Id], [Name], [Domain], [Status]) VALUES (6, N'Train Reservation', N'React', N'Alloted')
INSERT [dbo].[tblProject] ([Pr_Id], [Name], [Domain], [Status]) VALUES (7, N'College website', N'Views', N'Alloted')
SET IDENTITY_INSERT [dbo].[tblProject] OFF
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 06/18/2020 15:56:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[emp_SL] [int] IDENTITY(1,1) NOT NULL,
	[ep_Id] [varchar](50) NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[emp_SL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON
INSERT [dbo].[tblEmployee] ([emp_SL], [ep_Id]) VALUES (1, N'ep101')
INSERT [dbo].[tblEmployee] ([emp_SL], [ep_Id]) VALUES (2, N'ep102')
INSERT [dbo].[tblEmployee] ([emp_SL], [ep_Id]) VALUES (3, N'ep103')
INSERT [dbo].[tblEmployee] ([emp_SL], [ep_Id]) VALUES (4, N'ep104')
INSERT [dbo].[tblEmployee] ([emp_SL], [ep_Id]) VALUES (5, N'ep105')
INSERT [dbo].[tblEmployee] ([emp_SL], [ep_Id]) VALUES (6, N'ep106')
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
/****** Object:  Table [dbo].[tblAllot]    Script Date: 06/18/2020 15:56:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAllot](
	[Alt_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pr_Id] [int] NULL,
	[Tst_Id] [int] NULL,
	[Date] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Pst_Date] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tblAllot] PRIMARY KEY CLUSTERED 
(
	[Alt_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAllot] ON
INSERT [dbo].[tblAllot] ([Alt_Id], [Pr_Id], [Tst_Id], [Date], [Description], [Pst_Date], [Status]) VALUES (1, 1, 1, N'7/1/2019', N'Some Error.', N'7/2/2019', N'Return')
INSERT [dbo].[tblAllot] ([Alt_Id], [Pr_Id], [Tst_Id], [Date], [Description], [Pst_Date], [Status]) VALUES (2, 2, 2, N'7/5/2019', N'Working good.', N'7/5/2019', N'Finished')
INSERT [dbo].[tblAllot] ([Alt_Id], [Pr_Id], [Tst_Id], [Date], [Description], [Pst_Date], [Status]) VALUES (4, 1, 4, N'7/11/2019', N'Some error in user module.', N'7/11/2019', N'Alloted')
INSERT [dbo].[tblAllot] ([Alt_Id], [Pr_Id], [Tst_Id], [Date], [Description], [Pst_Date], [Status]) VALUES (7, 6, 1, N'7/11/2019', N'Finished.', N'7/31/2019', N'Finished')
INSERT [dbo].[tblAllot] ([Alt_Id], [Pr_Id], [Tst_Id], [Date], [Description], [Pst_Date], [Status]) VALUES (8, 7, 7, N'7/12/2019', N'Good.', N'7/12/2019', N'Finished')
INSERT [dbo].[tblAllot] ([Alt_Id], [Pr_Id], [Tst_Id], [Date], [Description], [Pst_Date], [Status]) VALUES (9, 3, 1, N'7/31/2019', NULL, NULL, N'Alloted')
SET IDENTITY_INSERT [dbo].[tblAllot] OFF
/****** Object:  ForeignKey [FK_tblAllot_tblProject]    Script Date: 06/18/2020 15:56:11 ******/
ALTER TABLE [dbo].[tblAllot]  WITH CHECK ADD  CONSTRAINT [FK_tblAllot_tblProject] FOREIGN KEY([Pr_Id])
REFERENCES [dbo].[tblProject] ([Pr_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblAllot] CHECK CONSTRAINT [FK_tblAllot_tblProject]
GO
/****** Object:  ForeignKey [FK_tblAllot_tblTester]    Script Date: 06/18/2020 15:56:11 ******/
ALTER TABLE [dbo].[tblAllot]  WITH CHECK ADD  CONSTRAINT [FK_tblAllot_tblTester] FOREIGN KEY([Tst_Id])
REFERENCES [dbo].[tblTester] ([Tst_Id])
GO
ALTER TABLE [dbo].[tblAllot] CHECK CONSTRAINT [FK_tblAllot_tblTester]
GO
