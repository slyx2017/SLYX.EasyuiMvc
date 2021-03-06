USE [SLYX.ZxDB]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [int] NULL,
	[RoleId] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (3, 54)
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (2, 53)
/****** Object:  Table [dbo].[UserDepartment]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_UserDepartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserDepartment] ON
INSERT [dbo].[UserDepartment] ([Id], [UserId], [DepartmentId]) VALUES (3, 78, 43)
INSERT [dbo].[UserDepartment] ([Id], [UserId], [DepartmentId]) VALUES (4, 77, 43)
INSERT [dbo].[UserDepartment] ([Id], [UserId], [DepartmentId]) VALUES (10, 3, 51)
INSERT [dbo].[UserDepartment] ([Id], [UserId], [DepartmentId]) VALUES (11, 1, 51)
INSERT [dbo].[UserDepartment] ([Id], [UserId], [DepartmentId]) VALUES (12, 2, 43)
SET IDENTITY_INSERT [dbo].[UserDepartment] OFF
/****** Object:  Table [dbo].[User]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RealName] [nvarchar](50) NOT NULL,
	[MobilePhone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsAble] [bit] NULL,
	[IfChangePwd] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[IsDel] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户ID(网站关联的AccountID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'AccountName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户密码（32位MD5加密）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系的邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'介绍描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([ID], [AccountName], [Password], [RealName], [MobilePhone], [Email], [IsAble], [IfChangePwd], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [IsDel]) VALUES (1, N'admin', N'96E79218965EB72C92A549DD5A330112', N'超级管理员', N'13600000002', N'1232@qq.com', 1, 1, N'超级管理员', N'admin', CAST(0x0000A62B00B5308C AS DateTime), N'wzy', CAST(0x0000A78B00AEC292 AS DateTime), 0)
INSERT [dbo].[User] ([ID], [AccountName], [Password], [RealName], [MobilePhone], [Email], [IsAble], [IfChangePwd], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [IsDel]) VALUES (2, N'test001', N'E10ADC3949BA59ABBE56E057F20F88', N'测试', N'13588888888', N'test@qq.com', 1, 1, N'测试', N'admin', CAST(0x0000A62B00B5308C AS DateTime), N'admin', CAST(0x0000A62B00B5308C AS DateTime), 0)
INSERT [dbo].[User] ([ID], [AccountName], [Password], [RealName], [MobilePhone], [Email], [IsAble], [IfChangePwd], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [IsDel]) VALUES (3, N'lf123456', N'E10ADC3949BA59ABBE56E057F20F88', N'技术测试', N'13600000000', N'1231@qq.com', 1, 1, N'', N'admin', CAST(0x0000A62B00B5308C AS DateTime), N'wzy', CAST(0x0000A78B00AED8EF AS DateTime), 0)
INSERT [dbo].[User] ([ID], [AccountName], [Password], [RealName], [MobilePhone], [Email], [IsAble], [IfChangePwd], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [IsDel]) VALUES (6, N'wzy', N'28A0C6171DB3E623FD9D2E11A09238C7', N'超级管理员', NULL, NULL, 1, 1, N'超级管理员', N'wzy', CAST(0x0000A78900FD4395 AS DateTime), N'wzy', CAST(0x0000A78900FD4749 AS DateTime), 0)
INSERT [dbo].[User] ([ID], [AccountName], [Password], [RealName], [MobilePhone], [Email], [IsAble], [IfChangePwd], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [IsDel]) VALUES (23, N'test1', N'C51CD8E64B0AEB778364765013DF9EBE', N'test1', N'11111', N'111@qq.com', 0, 1, N'aaa', N'wzy', CAST(0x0000A78B00F0879C AS DateTime), N'wzy', CAST(0x0000A78B01064FB1 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Table]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TabName] [nvarchar](50) NOT NULL,
	[TabViewName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Table] ON
INSERT [dbo].[Table] ([Id], [TabName], [TabViewName], [IsActive], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (7, N'Test', N'测试', 1, CAST(0x0000A62C00E9BD1C AS DateTime), N'admin', CAST(0x0000A62C00EC993D AS DateTime), N'admin')
INSERT [dbo].[Table] ([Id], [TabName], [TabViewName], [IsActive], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (14, N'Test1', N'测试1', 1, CAST(0x0000A62C012B226B AS DateTime), N'admin', CAST(0x0000A62C012B226B AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Table] OFF
/****** Object:  Table [dbo].[RoleMenuButton]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMenuButton](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[MenuId] [int] NULL,
	[ButtonId] [int] NULL,
 CONSTRAINT [PK_RoleMenuButton] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoleMenuButton] ON
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (127, 54, 3, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (128, 54, 3, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (129, 54, 17, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (130, 54, 1, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (131, 54, 6, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (132, 54, 3, 10)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (133, 54, 1023, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (134, 54, 1023, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (135, 54, 6, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (136, 54, 4, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (137, 54, 19, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (138, 54, 4, 8)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (139, 54, 17, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (140, 54, 19, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (141, 54, 6, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (142, 54, 1023, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (143, 54, 14, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (144, 54, 6, 9)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (145, 54, 19, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (146, 54, 4, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (147, 54, 1024, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (148, 54, 1024, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (149, 54, 6, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (150, 54, 17, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (151, 54, 4, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (152, 54, 1024, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (153, 54, 1024, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (154, 54, 3, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (155, 54, 1023, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (156, 54, 3, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (157, 54, 19, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (158, 54, 4, 7)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (159, 54, 17, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (160, 54, 4, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (295, 54, 1030, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (296, 54, 1031, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (297, 54, 1028, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (298, 54, 1031, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (299, 54, 1028, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (300, 54, 1028, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (301, 54, 1031, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (302, 54, 1029, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (303, 54, 1031, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (304, 54, 1028, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (305, 54, 1029, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (306, 54, 1032, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (307, 54, 1032, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (308, 54, 1032, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (309, 54, 1029, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (310, 54, 1031, 16)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (311, 54, 1029, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (312, 54, 1032, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (645, 53, 1028, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (646, 53, 1029, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (647, 53, 1029, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (648, 53, 1031, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (649, 53, 1031, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (650, 53, 1029, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (651, 53, 1031, 16)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (652, 53, 1031, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (653, 53, 1032, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (654, 53, 1032, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (655, 53, 1028, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (656, 53, 1032, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (657, 53, 1032, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (658, 53, 1031, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (659, 53, 1030, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (660, 53, 1028, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (661, 53, 1028, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (662, 53, 1029, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (663, 53, 1028, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (664, 53, 1032, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (665, 53, 1029, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (666, 53, 1031, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (667, 1, 4, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (668, 1, 14, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (669, 1, 3, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (670, 1, 1031, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (671, 1, 1038, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (672, 1, 6, 9)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (673, 1, 1032, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (674, 1, 1029, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (675, 1, 19, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (676, 1, 1032, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (677, 1, 1038, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (678, 1, 1023, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (679, 1, 17, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (680, 1, 1026, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (681, 1, 1026, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (682, 1, 6, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (683, 1, 6, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (684, 1, 17, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (685, 1, 1024, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (686, 1, 1030, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (687, 1, 1029, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (688, 1, 1024, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (689, 1, 1024, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (690, 1, 1029, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (691, 1, 4, 8)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (692, 1, 17, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (693, 1, 1038, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (694, 1, 1023, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (695, 1, 19, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (696, 1, 4, 7)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (697, 1, 4, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (698, 1, 19, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (699, 1, 1038, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (700, 1, 1, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (701, 1, 1026, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (702, 1, 4, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (703, 1, 1024, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (704, 1, 6, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (705, 1, 3, 10)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (706, 1, 3, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (707, 1, 1032, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (708, 1, 1023, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (709, 1, 1031, 16)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (710, 1, 4, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (711, 1, 1026, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (712, 1, 1028, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (713, 1, 1031, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (714, 1, 1023, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (715, 1, 1025, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (716, 1, 1025, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (717, 1, 1028, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (718, 1, 1024, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (719, 1, 19, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (720, 1, 1031, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (721, 1, 1028, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (722, 1, 6, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (723, 1, 1029, 5)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (724, 1, 1026, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (725, 1, 19, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (726, 1, 17, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (727, 1, 1032, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (728, 1, 3, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (729, 1, 1028, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (730, 1, 3, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (731, 1, 1031, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (732, 1, 4, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (733, 1, 1032, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (734, 1, 1025, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (735, 1, 1028, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (736, 1, 1025, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (737, 1, 1025, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (738, 1, 6, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (739, 1, 17, 4)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (740, 1, 1029, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (741, 1, 1031, 0)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (742, 1, 1038, 3)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (743, 1, 1023, 1)
INSERT [dbo].[RoleMenuButton] ([Id], [RoleId], [MenuId], [ButtonId]) VALUES (744, 1, 3, 5)
SET IDENTITY_INSERT [dbo].[RoleMenuButton] OFF
/****** Object:  Table [dbo].[RoleMenu]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[MenuId] [int] NULL,
 CONSTRAINT [PK_RoleMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoleMenu] ON
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (75, 52, 14)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1407, 54, 1)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1408, 54, 3)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1409, 54, 4)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1410, 54, 6)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1411, 54, 1024)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1412, 54, 1023)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1413, 54, 14)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1414, 54, 17)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1415, 54, 19)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1424, 1, 1)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1425, 1, 3)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1426, 1, 4)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1427, 1, 6)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1428, 1, 1024)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1429, 1, 1023)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1430, 1, 14)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1431, 1, 17)
INSERT [dbo].[RoleMenu] ([Id], [RoleId], [MenuId]) VALUES (1432, 1, 19)
SET IDENTITY_INSERT [dbo].[RoleMenu] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([Id], [RoleName], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (1, N'超级管理员', N'拥有所有增删改查权限', N'admin', CAST(0x0000A62B00B94246 AS DateTime), N'admin', CAST(0x0000A77F00DEB48E AS DateTime))
INSERT [dbo].[Role] ([Id], [RoleName], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (53, N'普通用户', NULL, N'admin', CAST(0x0000A62B00B94246 AS DateTime), N'admin', CAST(0x0000A62B00B94246 AS DateTime))
INSERT [dbo].[Role] ([Id], [RoleName], [Description], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (54, N'技术人员', NULL, N'admin', CAST(0x0000A62B00B94246 AS DateTime), N'admin', CAST(0x0000A62B00B94246 AS DateTime))
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[RequestionType]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestionType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ftypename] [nvarchar](50) NULL,
	[fsort] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_RequestionType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RequestionType] ON
INSERT [dbo].[RequestionType] ([id], [ftypename], [fsort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (7, N'测试', 5, CAST(0x0000A62B00F610A0 AS DateTime), N'admin', CAST(0x0000A62B00F610A0 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[RequestionType] OFF
/****** Object:  Table [dbo].[Requestion]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requestion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ftypeid] [int] NULL,
	[ftitle] [nvarchar](50) NULL,
	[fcontent] [text] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Requestion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Requestion', @level2type=N'COLUMN',@level2name=N'ftypeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Requestion', @level2type=N'COLUMN',@level2name=N'ftitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Requestion', @level2type=N'COLUMN',@level2name=N'fcontent'
GO
SET IDENTITY_INSERT [dbo].[Requestion] ON
INSERT [dbo].[Requestion] ([id], [ftypeid], [ftitle], [fcontent], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1014, 7, N'测试', N'<p>
	心灵鸡汤
</p>
<p>
	心灵鸡汤
</p>
<p>
	心灵鸡汤
</p>', CAST(0x0000A62B00F60B79 AS DateTime), N'admin', CAST(0x0000A62B00F60B79 AS DateTime), N'admin')
INSERT [dbo].[Requestion] ([id], [ftypeid], [ftitle], [fcontent], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1015, 7, N'测试2', N'<p>
	<strong>测试2</strong>
</p>
<p>
	<em><u>测试2</u></em><em><u></u></em>
</p>', CAST(0x0000A62B00F60B79 AS DateTime), N'admin', CAST(0x0000A62B00F60B79 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Requestion] OFF
/****** Object:  Table [dbo].[NewsType]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ftypename] [nvarchar](50) NULL,
	[fsort] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_NewsType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NewsType] ON
INSERT [dbo].[NewsType] ([id], [ftypename], [fsort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1, N'公司公告', 1, CAST(0x0000A62B00F60615 AS DateTime), N'admin', CAST(0x0000A62B00F60615 AS DateTime), N'admin')
INSERT [dbo].[NewsType] ([id], [ftypename], [fsort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (2, N'IT公告', 1, CAST(0x0000A62B00F60615 AS DateTime), N'admin', CAST(0x0000A62B00F60615 AS DateTime), N'admin')
INSERT [dbo].[NewsType] ([id], [ftypename], [fsort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (3, N'行政公告', 1, CAST(0x0000A62B00F60615 AS DateTime), N'admin', CAST(0x0000A62B00F60615 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[NewsType] OFF
/****** Object:  Table [dbo].[News]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ftypeid] [int] NULL,
	[ftitle] [nvarchar](50) NULL,
	[fcontent] [text] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'ftypeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'ftitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'fcontent'
GO
SET IDENTITY_INSERT [dbo].[News] ON
INSERT [dbo].[News] ([id], [ftypeid], [ftitle], [fcontent], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1, 1, N'公告测试', N'<p>
	<strong>公告测试</strong>
</p>
<p>
	<img src="/attached/image/20160617/20160617145951_0943.jpg" width="500" height="41" alt="" />
</p>
<p>
	公告测试
</p>', CAST(0x0000A62B00F5FEE1 AS DateTime), N'admin', CAST(0x0000A62B00F5FEE1 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[News] OFF
/****** Object:  Table [dbo].[MenuButton]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuButton](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NULL,
	[ButtonId] [int] NULL,
 CONSTRAINT [PK_MenuButton] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MenuButton] ON
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (49, 4, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (50, 4, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (51, 4, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (52, 4, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (53, 4, 8)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (54, 4, 7)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (55, 6, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (56, 6, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (57, 6, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (58, 6, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (59, 6, 9)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (60, 1024, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (61, 1024, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (62, 1024, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (63, 1024, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (64, 1023, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (65, 1023, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (66, 1023, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (67, 1023, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (68, 17, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (69, 17, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (70, 17, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (71, 17, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (72, 19, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (73, 19, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (74, 19, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (75, 19, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (76, 1025, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (77, 1025, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (78, 1025, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (79, 1025, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (80, 1026, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (81, 1026, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (82, 1026, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (83, 1026, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (84, 3, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (85, 3, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (86, 3, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (87, 3, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (88, 3, 10)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (89, 1029, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (90, 1029, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (91, 1029, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (92, 1029, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (93, 1028, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (94, 1028, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (95, 1028, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (96, 1028, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (101, 1032, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (102, 1032, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (103, 1032, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (104, 1032, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (105, 1031, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (106, 1031, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (107, 1031, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (108, 1031, 5)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (109, 1031, 16)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (110, 1036, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (111, 1037, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (112, 1038, 1)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (113, 1038, 3)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (114, 1038, 4)
INSERT [dbo].[MenuButton] ([Id], [MenuId], [ButtonId]) VALUES (115, 1038, 5)
SET IDENTITY_INSERT [dbo].[MenuButton] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ParentId] [int] NULL,
	[Code] [varchar](50) NULL,
	[LinkAddress] [varchar](100) NULL,
	[Icon] [varchar](50) NULL,
	[Sort] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1, N'系统设置', 0, NULL, NULL, N'icon-cog', 1, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (3, N'菜单管理', 1, N'menu', N'/Menu/Index', N'icon-tree', 1, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (4, N'用户管理', 1, N'user', N'/User/Index', N'icon-user_b', 2, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (6, N'角色管理', 1, N'role', N'/Role/Index', N'icon-group_key', 3, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (14, N'网站管理', 0, NULL, NULL, N'icon-world', 2, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (17, N'问题分类管理', 14, N'RequestionType', N'/RequestionType/Index', N'icon-bug', 3, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (19, N'问题管理', 14, N'Requestion', N'/Requestion/Index', N'icon-bug_magnify', 4, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1023, N'按钮管理', 1, N'button', N'/Button/Index', N'icon-layers', 6, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A63301022033 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1024, N'部门管理', 1, N'department', N'/Department/Index', N'icon-group', 4, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1025, N'公告分类管理', 14, N'NewsType', N'/NewsType/Index', N'icon-newspaper_link', 1, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1026, N'公告管理', 14, N'News', N'/News/Index', N'icon-newspaper', 2, CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1028, N'控件类型管理', 1030, N'HtmlType', N'/HtmlType/Index', N'icon-html', 1, CAST(0x0000A62B010481D8 AS DateTime), N'admin', CAST(0x0000A62C0122CE9E AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1029, N'数据类型管理', 1030, N'DataType', N'/DataType/Index', N'icon-database', 2, CAST(0x0000A62B0104B47F AS DateTime), N'admin', CAST(0x0000A62C0122C631 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1030, N'自定义表', 0, NULL, NULL, N'icon-table', 3, CAST(0x0000A62B010F6D8F AS DateTime), N'admin', CAST(0x0000A63300C41C7B AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1031, N'数据表管理', 1030, N'Table', N'/Table/Index', N'icon-database_table', 3, CAST(0x0000A62B01204626 AS DateTime), N'admin', CAST(0x0000A62B01204EA7 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1032, N'字段管理', 1030, N'Fields', N'/Fields/Index', N'icon-style_edit', 4, CAST(0x0000A62C01164957 AS DateTime), N'admin', CAST(0x0000A62C01164957 AS DateTime), N'admin')
INSERT [dbo].[Menu] ([Id], [Name], [ParentId], [Code], [LinkAddress], [Icon], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1038, N'图标管理', 1, N'Icons', N'/Icons/Index', N'icon-application_view_icons', 5, CAST(0x0000A633009DD17B AS DateTime), N'admin', CAST(0x0000A6330102260C AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[Icons]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Icons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IconName] [nvarchar](100) NOT NULL,
	[IconCssInfo] [nvarchar](2000) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Icons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Icons] ON
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1514, N'cog', N'icon-cog', CAST(0x0000A63300BC82FC AS DateTime), N'admin', CAST(0x0000A63300C5202A AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1515, N'world', N'icon-world', CAST(0x0000A63300BC9814 AS DateTime), N'admin', CAST(0x0000A63300C51838 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1516, N'table', N'icon-table', CAST(0x0000A63300BCAE58 AS DateTime), N'admin', CAST(0x0000A63300C51178 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1517, N'tree', N'icon-tree', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1518, N'user_b', N'icon-user_b', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1519, N'group_key', N'icon-group_key', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1520, N'bug', N'icon-bug', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1521, N'bug_magnify', N'icon-bug_magnify', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1522, N'layers', N'icon-layers', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1523, N'group', N'icon-group', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1524, N'newspaper_link', N'icon-newspaper_link', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1525, N'newspaper', N'icon-newspaper', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin', CAST(0x0000A62B00B22EF3 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1526, N'html', N'icon-html', CAST(0x0000A62B010481D8 AS DateTime), N'admin', CAST(0x0000A62C0122CE9E AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1527, N'database', N'icon-database', CAST(0x0000A62B0104B47F AS DateTime), N'admin', CAST(0x0000A62C0122C631 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1528, N'database_table', N'icon-database_table', CAST(0x0000A62B01204626 AS DateTime), N'admin', CAST(0x0000A62B01204EA7 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1529, N'style_edit', N'icon-style_edit', CAST(0x0000A62C01164957 AS DateTime), N'admin', CAST(0x0000A62C01164957 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1530, N'application_view_icons', N'icon-application_view_icons', CAST(0x0000A633009DD17B AS DateTime), N'admin', CAST(0x0000A633009DD17B AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1531, N'eye', N'icon-eye', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1532, N'add', N'icon-add', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1533, N'edit', N'icon-edit', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1534, N'delete', N'icon-delete', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1535, N'page_excel', N'icon-page_excel', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1536, N'group', N'icon-group', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1537, N'user_key', N'icon-user_key', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1538, N'key', N'icon-key', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1539, N'link', N'icon-link', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1540, N'expand', N'icon-expand', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1541, N'collapse', N'icon-collapse', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1542, N'import', N'icon-import', CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Icons] ([Id], [IconName], [IconCssInfo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1543, N'search', N'icon-search', CAST(0x0000A62D010729CC AS DateTime), N'admin', CAST(0x0000A62D01079229 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Icons] OFF
/****** Object:  Table [dbo].[HtmlType]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HtmlType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HtmlTypeName] [nvarchar](50) NOT NULL,
	[Sort] [int] NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_HtmlType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HtmlType] ON
INSERT [dbo].[HtmlType] ([Id], [HtmlTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1, N'文本', 1, CAST(0x0000A62B010DF04C AS DateTime), N'admin', CAST(0x0000A62D00BF9ABA AS DateTime), N'admin')
INSERT [dbo].[HtmlType] ([Id], [HtmlTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (2, N'单选', 2, CAST(0x0000A62B010DFD30 AS DateTime), N'admin', CAST(0x0000A62D00BFF0F8 AS DateTime), N'admin')
INSERT [dbo].[HtmlType] ([Id], [HtmlTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (3, N'复选', 3, CAST(0x0000A62B010E0690 AS DateTime), N'admin', CAST(0x0000A62D00BFF6EB AS DateTime), N'admin')
INSERT [dbo].[HtmlType] ([Id], [HtmlTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (4, N'下拉', 4, CAST(0x0000A62B010E111C AS DateTime), N'admin', CAST(0x0000A62D00BFEB68 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[HtmlType] OFF
/****** Object:  Table [dbo].[Fields]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TabId] [int] NOT NULL,
	[FieldName] [nvarchar](50) NULL,
	[FieldViewName] [nvarchar](50) NOT NULL,
	[FieldDataTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsSearch] [bit] NULL,
	[Sort] [int] NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段名（数据库）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Fields', @level2type=N'COLUMN',@level2name=N'FieldName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段显示名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Fields', @level2type=N'COLUMN',@level2name=N'FieldViewName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Fields', @level2type=N'COLUMN',@level2name=N'FieldDataTypeId'
GO
SET IDENTITY_INSERT [dbo].[Fields] ON
INSERT [dbo].[Fields] ([Id], [TabId], [FieldName], [FieldViewName], [FieldDataTypeId], [IsActive], [IsSearch], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (4, 7, N'FName', N'姓名', 2, 1, 1, 1, CAST(0x0000A62C0127B720 AS DateTime), N'admin', CAST(0x0000A62D01265AC4 AS DateTime), N'admin')
INSERT [dbo].[Fields] ([Id], [TabId], [FieldName], [FieldViewName], [FieldDataTypeId], [IsActive], [IsSearch], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (5, 7, N'FSex', N'性别', 2, 1, 0, 2, CAST(0x0000A62D00AFC800 AS DateTime), N'admin', CAST(0x0000A62D0101F66D AS DateTime), N'admin')
INSERT [dbo].[Fields] ([Id], [TabId], [FieldName], [FieldViewName], [FieldDataTypeId], [IsActive], [IsSearch], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (6, 7, N'FAge', N'年龄', 1, 1, 0, 3, CAST(0x0000A62D00F200E7 AS DateTime), N'admin', CAST(0x0000A62D00F200E7 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Fields] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
	[ParentId] [int] NULL,
	[Sort] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1, N'人事行政部', 0, 3, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (2, N'研发部', 0, 1, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (4, N'人事部', 1, 1, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (5, N'行政部', 1, 2, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (7, N'C#组', 2, 2, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (8, N'Java组', 2, 1, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (10, N'.Net组', 2, 4, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (41, N'销售部', 0, 4, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (43, N'销售1组', 41, 1, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (46, N'PHP组', 2, 3, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (47, N'销售2组', 41, 2, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
INSERT [dbo].[Department] ([Id], [DepartmentName], [ParentId], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (51, N'系统管理员', 0, 1, CAST(0x0000A62B00C5CFDA AS DateTime), N'admin', CAST(0x0000A62B00C5CFDA AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[DataType]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataType] [nvarchar](50) NOT NULL,
	[DataTypeName] [nvarchar](50) NOT NULL,
	[Sort] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_DataType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DataType] ON
INSERT [dbo].[DataType] ([Id], [DataType], [DataTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1, N'int', N'整数', 1, CAST(0x0000A62B010A7DE0 AS DateTime), N'admin', CAST(0x0000A62B010B2452 AS DateTime), N'admin')
INSERT [dbo].[DataType] ([Id], [DataType], [DataTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (2, N'nvarchar(50)', N'文本(50)', 2, CAST(0x0000A62B010B3CE4 AS DateTime), N'admin', CAST(0x0000A62B010B5621 AS DateTime), N'admin')
INSERT [dbo].[DataType] ([Id], [DataType], [DataTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (3, N'decimal(18, 2)', N'金额(2位小数)', 3, CAST(0x0000A62B010E3A20 AS DateTime), N'admin', CAST(0x0000A62B010E58F8 AS DateTime), N'admin')
INSERT [dbo].[DataType] ([Id], [DataType], [DataTypeName], [Sort], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (4, N'float', N'浮点', 4, CAST(0x0000A62D00F2C486 AS DateTime), N'admin', CAST(0x0000A62D00F2C486 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[DataType] OFF
/****** Object:  Table [dbo].[Button]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Button](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[Icon] [varchar](50) NULL,
	[Sort] [int] NULL,
	[Description] [varchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Button] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Button] ON
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (1, N'查询', N'search', N'icon-eye', 1, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A6330100E78B AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (3, N'添加', N'add', N'icon-add', 3, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (4, N'修改', N'edit', N'icon-edit', 4, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (5, N'删除', N'delete', N'icon-delete', 5, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (6, N'导出', N'export', N'icon-page_excel', 6, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (7, N'部门设置', N'setuserdept', N'icon-group', 8, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (8, N'角色设置', N'setuserrole', N'icon-user_key', 7, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (9, N'角色授权', N'roleauthorize', N'icon-key', 9, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (10, N'分配按钮', N'setmenubutton', N'icon-link', 10, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (11, N'全部展开', N'expandall', N'icon-expand', 11, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (12, N'全部隐藏', N'collapseall', N'icon-collapse', 12, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (13, N'导入', N'import', N'icon-import', 6, NULL, CAST(0x0000A62B00E81003 AS DateTime), N'admin', CAST(0x0000A62B00E81003 AS DateTime), N'admin')
INSERT [dbo].[Button] ([Id], [Name], [Code], [Icon], [Sort], [Description], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy]) VALUES (16, N'表数据查询', N'seltabdata', N'icon-search', 13, NULL, CAST(0x0000A62D010729CC AS DateTime), N'admin', CAST(0x0000A62D01079229 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[Button] OFF
/****** Object:  Table [dbo].[Article]    Script Date: 06/09/2017 15:16:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](200) NULL,
	[Content] [varchar](8000) NULL,
	[FilePath] [nvarchar](200) NULL,
 CONSTRAINT [PK_Info] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Article] ON
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (1, N'标题1', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (2, N'标题2', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (3, N'标题3', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (4, N'标题4', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (5, N'标题5', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (6, N'标题6', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (7, N'标题7', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (8, N'标题8', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (9, N'标题9', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (10, N'标题10', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (11, N'标题11', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (12, N'标题12', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (13, N'标题13', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (14, N'标题14', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (15, N'标题15', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (16, N'标题16', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (17, N'标题17', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (18, N'标题18', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (19, N'标题19', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (20, N'标题20', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (21, N'标题21', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (22, N'标题22', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (23, N'标题23', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (24, N'标题24', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (25, N'标题25', N'内容1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (26, N'测试体贴26', N'内容26', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (27, N'测试体贴27', N'内容27', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (28, N'测试体贴28', N'内容28', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (29, N'测试体贴29', N'内容29', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (30, N'测试体贴30', N'内容30', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (31, N'测试体贴31', N'内容31', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (32, N'测试体贴32', N'内容32', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (33, N'测试体贴33', N'内容33', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (34, N'测试体贴34', N'内容34', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (35, N'测试体贴35', N'内容35', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (36, N'测试体贴36', N'内容36', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (37, N'测试体贴37', N'内容37', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (38, N'测试体贴38', N'内容38', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (39, N'测试体贴39', N'内容39', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (40, N'测试体贴40', N'内容40', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (41, N'测试体贴41', N'内容41', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (42, N'测试体贴42', N'内容42', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (43, N'测试体贴43', N'内容43', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (44, N'测试体贴44', N'内容44', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (45, N'测试体贴45', N'内容45', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (46, N'测试体贴46', N'内容46', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (47, N'测试体贴47', N'内容47', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (48, N'测试体贴48', N'内容48', NULL)
INSERT [dbo].[Article] ([ID], [Title], [Content], [FilePath]) VALUES (49, N'测试体贴49', N'内容49', NULL)
SET IDENTITY_INSERT [dbo].[Article] OFF
