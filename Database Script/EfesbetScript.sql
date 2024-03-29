USE [EfesBetDb]
GO
/****** Object:  Table [dbo].[FirstGoal]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FirstGoal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FirstGoal](
	[FirstGoalId] [int] IDENTITY(1,1) NOT NULL,
	[FirstGoalHomeOdds] [float] NOT NULL,
	[FirstGoalVisitorOdds] [float] NOT NULL,
	[FirstGoalMatchId] [int] NOT NULL,
	[FirstGoalNo] [float] NOT NULL,
 CONSTRAINT [PK_FirstGoal] PRIMARY KEY CLUSTERED 
(
	[FirstGoalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[FirstGoal] ON
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (1, 1.23, 3, 1, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (2, 3.15, 1.22, 2, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (3, 3.45, 1.19, 3, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (4, 1.73, 1.75, 4, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (5, 1.6, 1.95, 5, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (6, 1.47, 2.1, 6, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (7, 1.55, 2, 7, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (8, 1.13, 3.85, 8, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (9, 2.2, 1.43, 9, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (10, 1.47, 2.1, 10, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (11, 1.13, 3.85, 11, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (12, 2, 1.55, 12, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (13, 1.47, 2.1, 13, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (14, 1.13, 3.85, 14, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (15, 1.47, 2.1, 15, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (16, 1.47, 2.1, 16, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (17, 1.55, 2, 17, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (18, 1.78, 1.73, 18, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (19, 1.67, 1.78, 20, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (20, 1.23, 3, 21, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (21, 3.15, 1.22, 22, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (22, 3.45, 1.19, 23, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (23, 1.73, 1.75, 24, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (24, 1.6, 1.95, 25, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (25, 1.47, 2.1, 26, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (26, 1.55, 2, 27, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (27, 1.13, 3.85, 28, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (28, 2.2, 1.43, 29, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (29, 1.47, 2.1, 30, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (30, 1.13, 3.85, 31, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (31, 2, 1.55, 32, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (32, 1.47, 2.1, 33, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (33, 1.13, 3.85, 34, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (34, 1.47, 2.1, 35, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (35, 1.47, 2.1, 36, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (36, 1.55, 2, 37, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (37, 1.78, 1.73, 38, 9996)
INSERT [dbo].[FirstGoal] ([FirstGoalId], [FirstGoalHomeOdds], [FirstGoalVisitorOdds], [FirstGoalMatchId], [FirstGoalNo]) VALUES (38, 1.67, 1.78, 40, 9996)
SET IDENTITY_INSERT [dbo].[FirstGoal] OFF
/****** Object:  Table [dbo].[Double]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Double]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Double](
	[DoubleId] [int] IDENTITY(1,1) NOT NULL,
	[DoubleHomeOrDrawOdds] [float] NOT NULL,
	[DoubleHomeOrVisitorOdds] [float] NOT NULL,
	[DoubleDrawOrVisitorOdds] [float] NOT NULL,
	[DoubleMatchId] [int] NOT NULL,
	[DoubleNo] [float] NOT NULL,
 CONSTRAINT [PK_Double] PRIMARY KEY CLUSTERED 
(
	[DoubleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Double] ON
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (1, 1.06, 1.17, 2.45, 1, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (2, 3, 1.11, 1.04, 2, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (3, 2.8, 1.15, 1.03, 3, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (4, 1.37, 1.3, 1.45, 4, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (5, 1.28, 1.28, 1.6, 5, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (6, 1.23, 1.26, 1.7, 6, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (7, 1.26, 1.26, 1.65, 7, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (8, 1.75, 1.26, 1.21, 9, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (9, 1.23, 1.26, 1.7, 10, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (10, 1.03, 1.11, 3, 11, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (11, 1.6, 1.24, 1.28, 12, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (12, 1.23, 1.24, 1.7, 13, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (13, 1.03, 1.12, 3, 14, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (14, 1.4, 1.29, 1.4, 18, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (15, 1.02, 1.15, 2.8, 19, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (16, 1.3, 1.27, 1.5, 20, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (17, 1.06, 1.17, 2.45, 21, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (18, 3, 1.11, 1.04, 22, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (19, 2.8, 1.15, 1.03, 23, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (20, 1.37, 1.3, 1.45, 24, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (21, 1.28, 1.28, 1.6, 25, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (22, 1.23, 1.26, 1.7, 26, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (23, 1.26, 1.26, 1.65, 27, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (24, 1.75, 1.26, 1.21, 29, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (25, 1.23, 1.26, 1.7, 30, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (26, 1.03, 1.11, 3, 31, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (27, 1.6, 1.24, 1.28, 32, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (28, 1.23, 1.24, 1.7, 33, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (29, 1.03, 1.12, 3, 34, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (30, 1.4, 1.29, 1.4, 38, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (31, 1.02, 1.15, 2.8, 39, 38199)
INSERT [dbo].[Double] ([DoubleId], [DoubleHomeOrDrawOdds], [DoubleHomeOrVisitorOdds], [DoubleDrawOrVisitorOdds], [DoubleMatchId], [DoubleNo]) VALUES (32, 1.3, 1.27, 1.5, 40, 38199)
SET IDENTITY_INSERT [dbo].[Double] OFF
/****** Object:  Table [dbo].[Coupons]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Coupons]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Coupons](
	[CouponId] [int] IDENTITY(1,1) NOT NULL,
	[CouponDate] [datetime] NOT NULL,
	[CouponNo] [int] NOT NULL,
	[CouponSum] [float] NOT NULL,
	[CouponUser] [uniqueidentifier] NOT NULL,
	[CouponEarning] [float] NULL,
	[CouponMaxEarning] [float] NULL,
	[CouponStatus] [int] NOT NULL,
	[CouponUserId] [uniqueidentifier] NOT NULL,
	[CouponSystem] [float] NULL,
	[CouponTerminator] [float] NULL,
	[CouponTerminationTime] [datetime] NULL,
	[CouponIsLive] [bit] NULL,
	[CouponTag] [nvarchar](200) NULL,
	[CouponAdminId] [uniqueidentifier] NULL,
	[CouponColumnFee] [float] NULL,
	[CouponUserIp] [varchar](20) NULL,
	[CouponDelta] [float] NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[CouponId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Columns]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Columns]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Columns](
	[ColumnId] [int] IDENTITY(1,1) NOT NULL,
	[ColumnMatchNo] [int] NOT NULL,
	[ColumnOddsTypeNo] [int] NOT NULL,
	[ColumnHome] [int] NOT NULL,
	[ColumnVisitor] [float] NULL,
	[ColumnOddstype] [int] NULL,
	[ColumnPutUp] [float] NULL,
	[ColumnRate] [float] NULL,
	[ColumnPutUpNo] [float] NULL,
	[ColumnCouponNo] [float] NULL,
	[ColumnMin] [float] NULL,
	[ColumnDate] [float] NULL,
	[ColumnLeague] [float] NULL,
	[ColumnIsLive] [bit] NULL,
	[ColumnRateRow] [float] NULL,
	[ColumnLiveMinute] [bit] NULL,
	[ColumnLiveScore] [float] NULL,
	[ColumnInsertTime] [datetime] NULL,
	[ColumnPlayTime] [datetime] NULL,
	[ColumnLiveRealMin] [float] NULL,
 CONSTRAINT [PK_Columns] PRIMARY KEY CLUSTERED 
(
	[ColumnId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Asian]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Asian]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Asian](
	[AsianId] [int] IDENTITY(1,1) NOT NULL,
	[AsianHomeOdds] [float] NOT NULL,
	[AsianVisitorOdds] [float] NOT NULL,
	[AsianMatchId] [int] NOT NULL,
	[AsianNo] [float] NOT NULL,
 CONSTRAINT [PK_Asian] PRIMARY KEY CLUSTERED 
(
	[AsianId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Asian] ON
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (1, 1.67, 1.87, 4, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (2, 1.48, 2.17, 5, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (3, 1.36, 2.48, 6, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (4, 1.43, 2.27, 7, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (5, 2.59, 1.33, 9, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (6, 1.36, 2.48, 10, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (7, 2.15, 1.48, 12, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (8, 1.38, 2.41, 13, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (9, 1.74, 1.78, 18, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (10, 1.56, 2.01, 20, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (11, 1.67, 1.87, 24, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (12, 1.48, 2.17, 25, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (13, 1.36, 2.48, 26, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (14, 1.43, 2.27, 27, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (15, 2.59, 1.33, 29, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (16, 1.36, 2.48, 30, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (17, 2.15, 1.48, 32, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (18, 1.38, 2.41, 33, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (19, 1.74, 1.78, 38, 47824127)
INSERT [dbo].[Asian] ([AsianId], [AsianHomeOdds], [AsianVisitorOdds], [AsianMatchId], [AsianNo]) VALUES (20, 1.56, 2.01, 40, 47824127)
SET IDENTITY_INSERT [dbo].[Asian] OFF
/****** Object:  Table [dbo].[Announcements]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Announcements]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Announcements](
	[AnnouncementId] [int] IDENTITY(1,1) NOT NULL,
	[AnnouncementTitle] [nvarchar](500) NOT NULL,
	[AnnouncementText] [ntext] NOT NULL,
	[AnnouncementDate] [datetime] NOT NULL,
	[AnnouncementUser] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HandiCap]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HandiCap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HandiCap](
	[HandiCapId] [int] IDENTITY(1,1) NOT NULL,
	[HandiCapFavWinsTwoGapOdds] [float] NOT NULL,
	[HandiCapFavWinsOneGapOdds] [float] NOT NULL,
	[HandiCapDrawOrOtherWinsOdds] [float] NOT NULL,
	[HandiCapMatchId] [int] NOT NULL,
	[HandiCapNo] [float] NOT NULL,
 CONSTRAINT [PK_HandiCap] PRIMARY KEY CLUSTERED 
(
	[HandiCapId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[HandiCap] ON
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (1, 2.45, 1, 1, 1, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (2, 1.75, 1, 1, 2, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (3, 1, 1, 1, 3, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (4, 1, 1, 1, 4, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (5, 1, 1, 1, 5, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (6, 1, 1, 1, 6, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (7, 1, 1, 1, 7, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (8, 1, 1, 1, 8, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (9, 1, 1, 1, 9, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (10, 1, 1, 1, 10, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (11, 1, 1, 1, 11, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (12, 1, 1, 1, 12, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (13, 1, 1, 1, 13, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (14, 1, 1, 1, 14, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (15, 1, 1, 1, 15, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (16, 1, 1, 1, 16, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (17, 1, 1, 1, 17, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (18, 1, 1, 1, 18, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (19, 1, 1, 1, 19, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (20, 1, 1, 1, 20, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (21, 2.45, 1, 1, 21, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (22, 1.75, 1, 1, 22, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (23, 1, 1, 1, 23, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (24, 1, 1, 1, 24, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (25, 1, 1, 1, 25, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (26, 1, 1, 1, 26, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (27, 1, 1, 1, 27, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (28, 1, 1, 1, 28, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (29, 1, 1, 1, 29, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (30, 1, 1, 1, 30, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (31, 1, 1, 1, 31, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (32, 1, 1, 1, 32, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (33, 1, 1, 1, 33, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (34, 1, 1, 1, 34, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (35, 1, 1, 1, 35, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (36, 1, 1, 1, 36, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (37, 1, 1, 1, 37, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (38, 1, 1, 1, 38, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (39, 1, 1, 1, 39, 152756)
INSERT [dbo].[HandiCap] ([HandiCapId], [HandiCapFavWinsTwoGapOdds], [HandiCapFavWinsOneGapOdds], [HandiCapDrawOrOtherWinsOdds], [HandiCapMatchId], [HandiCapNo]) VALUES (40, 1, 1, 1, 40, 152756)
SET IDENTITY_INSERT [dbo].[HandiCap] OFF
/****** Object:  Table [dbo].[HalfTime]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HalfTime]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HalfTime](
	[HalfTimeId] [int] IDENTITY(1,1) NOT NULL,
	[HalfTimeHomeOdds] [float] NOT NULL,
	[HalfTimeDrawOdds] [float] NOT NULL,
	[HalfTimeVisitorOdds] [float] NOT NULL,
	[HalfTimeMatchId] [int] NOT NULL,
	[HalfTimeNo] [float] NOT NULL,
 CONSTRAINT [PK_HalfTime] PRIMARY KEY CLUSTERED 
(
	[HalfTimeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[HalfTime] ON
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (1, 1.85, 2.25, 6.1, 1, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (2, 6.6, 2.55, 1.6, 2, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (3, 7.6, 2.35, 1.7, 3, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (4, 2.95, 1.95, 3.4, 4, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (5, 2.55, 2, 3.6, 5, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (6, 2.3, 2.1, 3.9, 6, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (7, 2.45, 2.05, 3.65, 7, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (8, 1.5, 2.65, 10, 8, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (9, 4, 2.1, 2.25, 9, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (10, 2.3, 2.1, 3.9, 10, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (11, 1.6, 2.65, 7.6, 11, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (12, 3.5, 2.05, 2.5, 12, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (13, 2.3, 2.1, 3.75, 13, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (14, 1.6, 2.45, 7.1, 14, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (15, 2.3, 2, 3.85, 15, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (16, 2.25, 2, 4, 16, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (17, 2.4, 1.9, 3.85, 17, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (18, 3.1, 1.95, 3.15, 18, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (19, 1.7, 2.3, 7.1, 19, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (20, 2.7, 1.95, 3.45, 20, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (21, 1.85, 2.25, 6.1, 21, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (22, 6.6, 2.55, 1.6, 22, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (23, 7.6, 2.35, 1.7, 23, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (24, 2.95, 1.95, 3.4, 24, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (25, 2.55, 2, 3.6, 25, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (26, 2.3, 2.1, 3.9, 26, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (27, 2.45, 2.05, 3.65, 27, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (28, 1.5, 2.65, 10, 28, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (29, 4, 2.1, 2.25, 29, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (30, 2.3, 2.1, 3.9, 30, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (31, 1.6, 2.65, 7.6, 31, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (32, 3.5, 2.05, 2.5, 32, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (33, 2.3, 2.1, 3.75, 33, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (34, 1.6, 2.45, 7.1, 34, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (35, 2.3, 2, 3.85, 35, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (36, 2.25, 2, 4, 36, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (37, 2.4, 1.9, 3.85, 37, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (38, 3.1, 1.95, 3.15, 38, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (39, 1.7, 2.3, 7.1, 39, 153455)
INSERT [dbo].[HalfTime] ([HalfTimeId], [HalfTimeHomeOdds], [HalfTimeDrawOdds], [HalfTimeVisitorOdds], [HalfTimeMatchId], [HalfTimeNo]) VALUES (40, 2.7, 1.95, 3.45, 40, 153455)
SET IDENTITY_INSERT [dbo].[HalfTime] OFF
/****** Object:  Table [dbo].[HalfFullTime]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HalfFullTime]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HalfFullTime](
	[HalfFullTimeId] [int] IDENTITY(1,1) NOT NULL,
	[HalfFullTimeHomeHomeOdds] [float] NOT NULL,
	[HalfFullTimeHomeDrawOdds] [float] NOT NULL,
	[HalfFullTimeHomeVisitorOdds] [float] NOT NULL,
	[HalfFullTimeDrawHomeOdds] [float] NOT NULL,
	[HalfFullTimeDrawDrawOdds] [float] NOT NULL,
	[HalfFullTimeDrawVisitorOdds] [float] NOT NULL,
	[HalfFullTimeVisitorHomeOdds] [float] NOT NULL,
	[HalfFullTimeVisitorDrawOdds] [float] NOT NULL,
	[HalfFullTimeVisitorVisitorOdds] [float] NOT NULL,
	[HalfFullTimeMatchId] [int] NOT NULL,
	[HalfFullTimeNo] [float] NOT NULL,
 CONSTRAINT [PK_HalfFullTime] PRIMARY KEY CLUSTERED 
(
	[HalfFullTimeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[HalfFullTime] ON
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (1, 1.9, 16, 30, 4.5, 5.5, 11, 22, 14, 12, 1, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (2, 16, 16, 25, 14, 6.2, 4.5, 35, 20, 1.6, 2, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (3, 16, 14, 25, 12, 5.5, 4.5, 35, 18, 1.7, 3, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (4, 4.65, 15, 22, 4.5, 4.25, 4.75, 22, 14, 5, 4, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (5, 3.65, 16, 20, 4.5, 4.5, 5.25, 22, 14, 5.75, 5, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (6, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 6, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (7, 3.4, 16, 25, 4.5, 4.5, 5.5, 22, 14, 6, 7, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (8, 1.5, 20, 35, 4.5, 7, 14, 25, 16, 18, 8, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (9, 7, 14, 22, 6.5, 4.75, 4.5, 25, 16, 3, 9, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (10, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 10, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (11, 1.6, 20, 35, 4.5, 6.2, 14, 25, 16, 16, 11, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (12, 5.75, 14, 22, 5.25, 4.5, 4.5, 20, 16, 3.5, 12, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (13, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 13, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (14, 1.6, 20, 35, 4.5, 6.2, 14, 25, 16, 16, 14, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (15, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 15, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (16, 3.15, 16, 25, 4.7, 5, 6.85, 23, 14, 7, 16, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (17, 3.3, 16, 25, 4.5, 4.5, 5.75, 22, 14, 6.5, 17, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (18, 4.9, 14, 22, 4.5, 4.25, 4.75, 22, 14, 5, 18, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (19, 1.7, 18, 35, 4.5, 5.5, 12, 25, 14, 16, 19, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (20, 3.9, 16, 22, 4.5, 4.25, 5.25, 22, 14, 5.5, 20, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (21, 1.9, 16, 30, 4.5, 5.5, 11, 22, 14, 12, 21, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (22, 16, 16, 25, 14, 6.2, 4.5, 35, 20, 1.6, 22, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (23, 16, 14, 25, 12, 5.5, 4.5, 35, 18, 1.7, 23, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (24, 4.65, 15, 22, 4.5, 4.25, 4.75, 22, 14, 5, 24, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (25, 3.65, 16, 20, 4.5, 4.5, 5.25, 22, 14, 5.75, 25, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (26, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 26, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (27, 3.4, 16, 25, 4.5, 4.5, 5.5, 22, 14, 6, 27, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (28, 1.5, 20, 35, 4.5, 7, 14, 25, 16, 18, 28, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (29, 7, 14, 22, 6.5, 4.75, 4.5, 25, 16, 3, 29, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (30, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 30, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (31, 1.6, 20, 35, 4.5, 6.2, 14, 25, 16, 16, 31, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (32, 5.75, 14, 22, 5.25, 4.5, 4.5, 20, 16, 3.5, 32, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (33, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 33, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (34, 1.6, 20, 35, 4.5, 6.2, 14, 25, 16, 16, 34, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (35, 3.15, 16, 25, 4.5, 4.5, 6, 22, 14, 7, 35, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (36, 3.15, 16, 25, 4.7, 5, 6.85, 23, 14, 7, 36, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (37, 3.3, 16, 25, 4.5, 4.5, 5.75, 22, 14, 6.5, 37, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (38, 4.9, 14, 22, 4.5, 4.25, 4.75, 22, 14, 5, 38, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (39, 1.7, 18, 35, 4.5, 5.5, 12, 25, 14, 16, 39, 1713)
INSERT [dbo].[HalfFullTime] ([HalfFullTimeId], [HalfFullTimeHomeHomeOdds], [HalfFullTimeHomeDrawOdds], [HalfFullTimeHomeVisitorOdds], [HalfFullTimeDrawHomeOdds], [HalfFullTimeDrawDrawOdds], [HalfFullTimeDrawVisitorOdds], [HalfFullTimeVisitorHomeOdds], [HalfFullTimeVisitorDrawOdds], [HalfFullTimeVisitorVisitorOdds], [HalfFullTimeMatchId], [HalfFullTimeNo]) VALUES (40, 3.9, 16, 22, 4.5, 4.25, 5.25, 22, 14, 5.5, 40, 1713)
SET IDENTITY_INSERT [dbo].[HalfFullTime] OFF
/****** Object:  Table [dbo].[GoalNoGoal]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GoalNoGoal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GoalNoGoal](
	[GoalNoGoalId] [int] IDENTITY(1,1) NOT NULL,
	[GoalNoGoalBothOdds] [float] NOT NULL,
	[GoalNoGoalOtherOdds] [float] NOT NULL,
	[GoalNoGoalMatchId] [int] NOT NULL,
	[GoalNoGoalNo] [float] NOT NULL,
 CONSTRAINT [PK_GoalNoGoal] PRIMARY KEY CLUSTERED 
(
	[GoalNoGoalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[GoalNoGoal] ON
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (1, 1.6, 2.05, 1, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (2, 1.77, 1.83, 2, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (3, 1.95, 1.67, 3, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (4, 1.83, 1.77, 4, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (5, 1.83, 1.77, 5, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (6, 1.65, 2, 6, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (7, 1.65, 2, 7, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (8, 1.85, 1.75, 8, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (9, 1.7, 1.92, 9, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (10, 1.75, 1.85, 10, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (11, 1.95, 1.67, 11, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (12, 1.6, 2.05, 21, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (13, 1.77, 1.83, 22, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (14, 1.95, 1.67, 23, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (15, 1.83, 1.77, 24, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (16, 1.83, 1.77, 25, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (17, 1.65, 2, 26, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (18, 1.65, 2, 27, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (19, 1.85, 1.75, 28, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (20, 1.7, 1.92, 29, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (21, 1.75, 1.85, 30, 99696)
INSERT [dbo].[GoalNoGoal] ([GoalNoGoalId], [GoalNoGoalBothOdds], [GoalNoGoalOtherOdds], [GoalNoGoalMatchId], [GoalNoGoalNo]) VALUES (22, 1.95, 1.67, 31, 99696)
SET IDENTITY_INSERT [dbo].[GoalNoGoal] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPass] [nvarchar](50) NOT NULL,
	[UserSpecialPass] [nvarchar](50) NOT NULL,
	[UserBalance] [float] NOT NULL,
	[UserTel] [varchar](20) NOT NULL,
	[UserAddress] [nvarchar](200) NOT NULL,
	[UserRegDate] [datetime] NOT NULL,
	[UserStatus] [int] NOT NULL,
	[UserBelongsTo] [int] NOT NULL,
	[UserCancelTime] [datetime] NOT NULL,
	[UserVisibility] [bit] NOT NULL,
	[UserTheme] [int] NOT NULL,
	[UserQuota] [int] NOT NULL,
	[UserNick] [nvarchar](20) NOT NULL,
	[UserCommission] [float] NULL,
	[UserBonus] [float] NULL,
	[UserLiveBonus] [float] NULL,
	[UserSharedReport] [float] NULL,
	[UserCouponPermission] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnderOver]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UnderOver]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UnderOver](
	[UnderOverId] [int] IDENTITY(1,1) NOT NULL,
	[UnderOverUnderOdds] [float] NOT NULL,
	[UnderOverOverOdds] [float] NOT NULL,
	[UnderOverMatchId] [int] NOT NULL,
	[UnderOverType] [int] NOT NULL,
	[UnderOverNo] [float] NOT NULL,
 CONSTRAINT [PK_UnderOver] PRIMARY KEY CLUSTERED 
(
	[UnderOverId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[UnderOver] ON
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (1, 1.47, 2.3, 1, 928155, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (2, 1.62, 2.03, 2, 928156, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (3, 1.32, 2.85, 3, 942917, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (4, 1.18, 3.8, 4, 942918, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (5, 1.19, 3.65, 5, 942919, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (6, 1.32, 2.85, 6, 889264, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (7, 1.3, 3, 7, 905713, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (8, 1.38, 2.6, 8, 905714, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (9, 1.22, 3.5, 9, 905719, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (10, 1.26, 3.15, 10, 887897, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (11, 1.42, 2.45, 11, 888256, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (12, 1.45, 2.4, 12, 943213, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (13, 1.42, 2.45, 13, 889462, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (14, 1.45, 2.4, 14, 889463, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (15, 1, 1, 15, 873926, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (16, 1, 1, 16, 873921, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (17, 1, 1, 17, 873924, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (18, 1.19, 3.7, 18, 926191, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (19, 1.36, 2.65, 19, 927270, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (20, 1.3, 3, 20, 944307, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (21, 1.47, 2.3, 21, 928155, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (22, 1.62, 2.03, 22, 928156, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (23, 1.32, 2.85, 23, 942917, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (24, 1.18, 3.8, 24, 942918, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (25, 1.19, 3.65, 25, 942919, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (26, 1.32, 2.85, 26, 889264, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (27, 1.3, 3, 27, 905713, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (28, 1.38, 2.6, 28, 905714, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (29, 1.22, 3.5, 29, 905719, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (30, 1.26, 3.15, 30, 887897, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (31, 1.42, 2.45, 31, 888256, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (32, 1.45, 2.4, 32, 943213, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (33, 1.42, 2.45, 33, 889462, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (34, 1.45, 2.4, 34, 889463, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (35, 1, 1, 35, 873926, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (36, 1, 1, 36, 873921, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (37, 1, 1, 37, 873924, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (38, 1.19, 3.7, 38, 926191, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (39, 1.36, 2.65, 39, 927270, 154526)
INSERT [dbo].[UnderOver] ([UnderOverId], [UnderOverUnderOdds], [UnderOverOverOdds], [UnderOverMatchId], [UnderOverType], [UnderOverNo]) VALUES (40, 1.3, 3, 40, 944307, 154526)
SET IDENTITY_INSERT [dbo].[UnderOver] OFF
/****** Object:  Table [dbo].[TotalGoal]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalGoal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TotalGoal](
	[TotalGoalId] [int] IDENTITY(1,1) NOT NULL,
	[TotalGoalZeroOneOdds] [float] NOT NULL,
	[TotalGoalTwoThreeOdds] [float] NOT NULL,
	[TotalGoalFourOrMoreOdds] [float] NOT NULL,
	[TotalGoalMatchId] [int] NOT NULL,
	[TotalGoalNo] [float] NOT NULL,
 CONSTRAINT [PK_TotalGoal] PRIMARY KEY CLUSTERED 
(
	[TotalGoalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teams]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](200) NOT NULL,
	[TeamAlsoKnownAs] [nvarchar](200) NULL,
	[TeamLeagueId] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Teams] ON
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (1, N'İngiltere (W)', NULL, 1)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (2, N'Rusya (W)', NULL, 1)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (3, N'Ispanya (W)', NULL, 1)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (4, N'Fransa(W)', NULL, 1)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (5, N'Martinique', NULL, 2)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (6, N'Meksika', NULL, 2)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (7, N'El Salvador', NULL, 2)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (8, N'Haiti', NULL, 2)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (9, N'Honduras', NULL, 2)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (10, N'Trinidad ve Tobago', NULL, 2)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (11, N'Vancouver  W.', NULL, 3)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (12, N'Chicago', NULL, 3)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (13, N'Criciuma', NULL, 4)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (14, N'Goias', NULL, 4)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (15, N'Cruzeiro', NULL, 4)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (16, N'Nautico', NULL, 4)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (17, N'Vasco', NULL, 4)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (18, N'Flamengo', NULL, 4)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (19, N'KuPS', NULL, 5)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (20, N'Jyvaskyla JK', NULL, 5)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (21, N'Helsingborg', NULL, 6)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (22, N'Osters IF', NULL, 6)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (23, N'Schaffhausen', NULL, 7)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (24, N'Winterthur', NULL, 7)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (25, N'Fylkir', NULL, 8)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (26, N'Akranes', NULL, 8)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (27, N'Valur', NULL, 8)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (28, N'Vikingur O.', NULL, 8)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (29, N'Universitario', NULL, 9)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (30, N'R.Garcilaso', NULL, 9)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (31, N'Jose Galvez', NULL, 9)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (32, N'UTC', NULL, 9)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (33, N'U.Comercio', NULL, 9)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (34, N'Pacifico', NULL, 9)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (35, N'Rostov', NULL, 10)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (36, N'Terek Grozni', NULL, 10)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (37, N'Metalist Khar.', NULL, 11)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (38, N'Metalurh D.', NULL, 11)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (39, N'Atl. Nacional', NULL, 12)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (40, N'Santa Fe', NULL, 12)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (41, N'İngiltere (W)', NULL, 13)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (42, N'Rusya (W)', NULL, 13)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (43, N'Ispanya (W)', NULL, 13)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (44, N'Fransa(W)', NULL, 13)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (45, N'Martinique', NULL, 14)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (46, N'Meksika', NULL, 14)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (47, N'El Salvador', NULL, 14)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (48, N'Haiti', NULL, 14)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (49, N'Honduras', NULL, 14)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (50, N'Trinidad ve Tobago', NULL, 14)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (51, N'Vancouver  W.', NULL, 15)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (52, N'Chicago', NULL, 15)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (53, N'Criciuma', NULL, 16)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (54, N'Goias', NULL, 16)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (55, N'Cruzeiro', NULL, 16)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (56, N'Nautico', NULL, 16)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (57, N'Vasco', NULL, 16)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (58, N'Flamengo', NULL, 16)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (59, N'KuPS', NULL, 17)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (60, N'Jyvaskyla JK', NULL, 17)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (61, N'Helsingborg', NULL, 18)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (62, N'Osters IF', NULL, 18)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (63, N'Schaffhausen', NULL, 19)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (64, N'Winterthur', NULL, 19)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (65, N'Fylkir', NULL, 20)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (66, N'Akranes', NULL, 20)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (67, N'Valur', NULL, 20)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (68, N'Vikingur O.', NULL, 20)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (69, N'Universitario', NULL, 21)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (70, N'R.Garcilaso', NULL, 21)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (71, N'Jose Galvez', NULL, 21)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (72, N'UTC', NULL, 21)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (73, N'U.Comercio', NULL, 21)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (74, N'Pacifico', NULL, 21)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (75, N'Rostov', NULL, 22)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (76, N'Terek Grozni', NULL, 22)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (77, N'Metalist Khar.', NULL, 23)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (78, N'Metalurh D.', NULL, 23)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (79, N'Atl. Nacional', NULL, 24)
INSERT [dbo].[Teams] ([TeamId], [TeamName], [TeamAlsoKnownAs], [TeamLeagueId]) VALUES (80, N'Santa Fe', NULL, 24)
SET IDENTITY_INSERT [dbo].[Teams] OFF
/****** Object:  Table [dbo].[Quotas]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quotas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Quotas](
	[QuotaId] [int] IDENTITY(1,1) NOT NULL,
	[QuotaMatchNo] [int] NOT NULL,
	[QuotaType] [int] NOT NULL,
	[QuotaPutUp] [bit] NOT NULL,
	[QuotaAmount] [int] NOT NULL,
	[QuotaUserId] [uniqueidentifier] NOT NULL,
	[QuotaStatus] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OddEven]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddEven]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OddEven](
	[OddEvenId] [int] IDENTITY(1,1) NOT NULL,
	[OddEvenOddOdds] [float] NOT NULL,
	[OddEvenEvenOdds] [float] NOT NULL,
	[OddEvenMatchId] [int] NOT NULL,
	[OddEvenNo] [float] NULL,
 CONSTRAINT [PK_OddEven] PRIMARY KEY CLUSTERED 
(
	[OddEvenId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MostGoal]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MostGoal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MostGoal](
	[MostGoalId] [int] IDENTITY(1,1) NOT NULL,
	[MostGoalFirstOdds] [float] NOT NULL,
	[MostGoalEqualOdds] [float] NOT NULL,
	[MostGoalSecondOdds] [float] NOT NULL,
	[MostGoalMatchId] [int] NOT NULL,
	[MostGoalNo] [float] NOT NULL,
 CONSTRAINT [PK_MostGoal] PRIMARY KEY CLUSTERED 
(
	[MostGoalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[MostGoal] ON
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (1, 2.9, 3.1, 2, 1, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (2, 2.9, 3.1, 2, 2, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (3, 2.9, 3.1, 2, 3, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (4, 2.9, 3.1, 2, 4, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (5, 2.9, 3.1, 2, 5, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (6, 2.9, 3.1, 2, 6, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (7, 2.9, 3.1, 2, 7, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (8, 2.9, 3.1, 2, 8, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (9, 2.9, 3.1, 2, 9, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (10, 2.9, 3.1, 2, 10, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (11, 2.9, 3.1, 2, 11, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (12, 2.9, 3.1, 2, 12, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (13, 2.9, 3.1, 2, 13, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (14, 2.9, 3.1, 2, 14, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (15, 2.9, 3.1, 2, 15, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (16, 2.9, 3.1, 2, 16, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (17, 2.9, 3.1, 2, 17, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (18, 2.9, 3.1, 2, 18, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (19, 2.9, 3.1, 2, 19, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (20, 2.9, 3.1, 2, 20, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (21, 2.9, 3.1, 2, 21, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (22, 2.9, 3.1, 2, 22, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (23, 2.9, 3.1, 2, 23, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (24, 2.9, 3.1, 2, 24, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (25, 2.9, 3.1, 2, 25, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (26, 2.9, 3.1, 2, 26, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (27, 2.9, 3.1, 2, 27, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (28, 2.9, 3.1, 2, 28, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (29, 2.9, 3.1, 2, 29, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (30, 2.9, 3.1, 2, 30, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (31, 2.9, 3.1, 2, 31, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (32, 2.9, 3.1, 2, 32, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (33, 2.9, 3.1, 2, 33, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (34, 2.9, 3.1, 2, 34, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (35, 2.9, 3.1, 2, 35, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (36, 2.9, 3.1, 2, 36, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (37, 2.9, 3.1, 2, 37, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (38, 2.9, 3.1, 2, 38, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (39, 2.9, 3.1, 2, 39, 154528)
INSERT [dbo].[MostGoal] ([MostGoalId], [MostGoalFirstOdds], [MostGoalEqualOdds], [MostGoalSecondOdds], [MostGoalMatchId], [MostGoalNo]) VALUES (40, 2.9, 3.1, 2, 40, 154528)
SET IDENTITY_INSERT [dbo].[MostGoal] OFF
/****** Object:  Table [dbo].[MatchScores]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MatchScores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MatchScores](
	[MatchScoreId] [int] IDENTITY(1,1) NOT NULL,
	[MatchScoreMinute] [int] NOT NULL,
	[MatchScoreMatchId] [int] NOT NULL,
	[MatchScoreHomeGoals] [int] NOT NULL,
	[MatchScoreVisitorGoals] [int] NOT NULL,
	[MatchScoreHomeFirstHalf] [bit] NOT NULL,
	[MatchScoreVisitorFirstHalf] [bit] NOT NULL,
	[MatchScoreResult] [int] NOT NULL,
	[MatchScoreStatus] [int] NOT NULL,
	[MatchScoreTime] [datetime] NOT NULL,
	[MatchScoreLastUpdate] [datetime] NOT NULL,
 CONSTRAINT [PK_MatchScores] PRIMARY KEY CLUSTERED 
(
	[MatchScoreId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MatchResult]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MatchResult]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MatchResult](
	[MatchResultId] [int] IDENTITY(1,1) NOT NULL,
	[MatchResultHomeOdds] [float] NOT NULL,
	[MatchResultDrawOdds] [float] NOT NULL,
	[MatchResultVisitorOdds] [float] NOT NULL,
	[MatchResultSingleHomeOdds] [float] NOT NULL,
	[MatchResultSingleDrawOdds] [float] NOT NULL,
	[MatchResultSingleVisitorOdds] [float] NOT NULL,
	[MatchResultMatchId] [int] NOT NULL,
	[MatchResultNo] [float] NOT NULL,
 CONSTRAINT [PK_MatchResult] PRIMARY KEY CLUSTERED 
(
	[MatchResultId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[MatchResult] ON
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (1, 1.45, 3.9, 6, 0, 0, 0, 1, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (2, 6.8, 4.7, 1.33, 0, 0, 0, 2, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (3, 7.5, 4.3, 1.36, 0, 0, 0, 3, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (4, 2.45, 3.1, 2.75, 0, 0, 0, 4, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (5, 2.15, 3.15, 3.15, 0, 0, 0, 5, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (6, 1.95, 3.3, 3.55, 0, 0, 0, 6, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (7, 2.05, 3.25, 3.25, 0, 0, 0, 7, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (8, 1.25, 5, 10, 0, 0, 0, 8, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (9, 3.7, 3.3, 1.9, 0, 0, 0, 9, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (10, 1.95, 3.3, 3.55, 0, 0, 0, 10, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (11, 1.3, 5, 7.7, 0, 0, 0, 11, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (12, 3.05, 3.25, 2.1, 0, 0, 0, 12, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (13, 1.95, 3.3, 3.4, 0, 0, 0, 13, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (14, 1.33, 4.5, 7.1, 0, 0, 0, 14, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (15, 1.95, 3.15, 3.5, 0, 0, 0, 15, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (16, 1.9, 3.2, 3.65, 0, 0, 0, 16, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (17, 2, 3.05, 3.5, 0, 0, 0, 17, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (18, 2.55, 3.1, 2.6, 0, 0, 0, 18, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (19, 1.36, 4.1, 7.4, 0, 0, 0, 19, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (20, 2.25, 3.1, 2.9, 0, 0, 0, 20, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (21, 1.45, 3.9, 6, 0, 0, 0, 21, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (22, 6.8, 4.7, 1.33, 0, 0, 0, 22, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (23, 7.5, 4.3, 1.36, 0, 0, 0, 23, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (24, 2.45, 3.1, 2.75, 0, 0, 0, 24, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (25, 2.15, 3.15, 3.15, 0, 0, 0, 25, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (26, 1.95, 3.3, 3.55, 0, 0, 0, 26, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (27, 2.05, 3.25, 3.25, 0, 0, 0, 27, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (28, 1.25, 5, 10, 0, 0, 0, 28, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (29, 3.7, 3.3, 1.9, 0, 0, 0, 29, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (30, 1.95, 3.3, 3.55, 0, 0, 0, 30, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (31, 1.3, 5, 7.7, 0, 0, 0, 31, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (32, 3.05, 3.25, 2.1, 0, 0, 0, 32, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (33, 1.95, 3.3, 3.4, 0, 0, 0, 33, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (34, 1.33, 4.5, 7.1, 0, 0, 0, 34, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (35, 1.95, 3.15, 3.5, 0, 0, 0, 35, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (36, 1.9, 3.2, 3.65, 0, 0, 0, 36, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (37, 2, 3.05, 3.5, 0, 0, 0, 37, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (38, 2.55, 3.1, 2.6, 0, 0, 0, 38, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (39, 1.36, 4.1, 7.4, 0, 0, 0, 39, 1711)
INSERT [dbo].[MatchResult] ([MatchResultId], [MatchResultHomeOdds], [MatchResultDrawOdds], [MatchResultVisitorOdds], [MatchResultSingleHomeOdds], [MatchResultSingleDrawOdds], [MatchResultSingleVisitorOdds], [MatchResultMatchId], [MatchResultNo]) VALUES (40, 2.25, 3.1, 2.9, 0, 0, 0, 40, 1711)
SET IDENTITY_INSERT [dbo].[MatchResult] OFF
/****** Object:  Table [dbo].[Matches]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Matches]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Matches](
	[MatchId] [int] IDENTITY(1,1) NOT NULL,
	[MatchHome] [int] NOT NULL,
	[MatchVisitor] [int] NOT NULL,
	[MatchNo] [int] NOT NULL,
	[MatchDate] [datetime] NOT NULL,
	[MatchIsLive] [bit] NOT NULL,
	[MatchIsEnabled] [bit] NOT NULL,
	[MatchLeague] [float] NULL,
	[MatchLeagueId] [int] NOT NULL,
	[MatchAvailableOdds] [float] NULL,
	[MatchMin] [float] NULL,
	[MatchStatus] [int] NOT NULL,
	[MatchIsActive] [bit] NOT NULL,
	[MatchLiveTime] [datetime] NOT NULL,
	[MatchType] [int] NOT NULL,
	[MatchICode] [float] NULL,
	[MatchIsSpecial] [bit] NOT NULL,
	[MatchVisibility] [bit] NOT NULL,
	[MatchQuota] [float] NULL,
	[MatchScoreExists] [float] NULL,
 CONSTRAINT [PK_Matches] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Matches] ON
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (1, 1, 2, 928155, CAST(0x0000A1FC01391C40 AS DateTime), 0, 0, NULL, 1, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (2, 3, 4, 928156, CAST(0x0000A1FC01624F20 AS DateTime), 0, 0, NULL, 1, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (3, 5, 6, 942917, CAST(0x0000A1FC00107AC0 AS DateTime), 0, 0, NULL, 2, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (4, 7, 8, 942918, CAST(0x0000A1FD0020F580 AS DateTime), 0, 0, NULL, 2, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (5, 9, 10, 942919, CAST(0x0000A1FD004A2860 AS DateTime), 0, 0, NULL, 2, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (6, 11, 12, 889264, CAST(0x0000A1FC0020F580 AS DateTime), 0, 0, NULL, 3, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (7, 13, 14, 905713, CAST(0x0000A1FC00083D60 AS DateTime), 0, 0, NULL, 4, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (8, 15, 16, 905714, CAST(0x0000A1FC00083D60 AS DateTime), 0, 0, NULL, 4, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (9, 17, 18, 905719, CAST(0x0000A1FC00083D60 AS DateTime), 0, 0, NULL, 4, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (10, 19, 20, 887897, CAST(0x0000A1FC0130DEE0 AS DateTime), 0, 0, NULL, 5, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (11, 21, 22, 888256, CAST(0x0000A1FC014AF690 AS DateTime), 0, 0, NULL, 6, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (12, 23, 24, 943213, CAST(0x0000A1FC0155F310 AS DateTime), 0, 0, NULL, 7, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (13, 25, 26, 889462, CAST(0x0000A1FC016EAB30 AS DateTime), 0, 0, NULL, 8, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (14, 27, 28, 889463, CAST(0x0000A1FC016EAB30 AS DateTime), 0, 0, NULL, 8, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (15, 29, 30, 873926, CAST(0x0000A1FC0020F580 AS DateTime), 0, 0, NULL, 9, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (16, 31, 32, 873921, CAST(0x0000A1FC004609B0 AS DateTime), 0, 0, NULL, 9, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (17, 33, 34, 873924, CAST(0x0000A1FC01391C40 AS DateTime), 0, 0, NULL, 9, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (18, 35, 36, 926191, CAST(0x0000A1FC01391C40 AS DateTime), 0, 0, NULL, 10, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (19, 37, 38, 927270, CAST(0x0000A1FC01499700 AS DateTime), 0, 0, NULL, 11, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (20, 39, 40, 944307, CAST(0x0000A1FC0020F580 AS DateTime), 0, 0, NULL, 12, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (21, 41, 42, 928155, CAST(0x0000A1FC01391C40 AS DateTime), 0, 0, NULL, 13, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (22, 43, 44, 928156, CAST(0x0000A1FC01624F20 AS DateTime), 0, 0, NULL, 13, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (23, 45, 46, 942917, CAST(0x0000A1FC00107AC0 AS DateTime), 0, 0, NULL, 14, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (24, 47, 48, 942918, CAST(0x0000A1FD0020F580 AS DateTime), 0, 0, NULL, 14, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (25, 49, 50, 942919, CAST(0x0000A1FD004A2860 AS DateTime), 0, 0, NULL, 14, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (26, 51, 52, 889264, CAST(0x0000A1FC0020F580 AS DateTime), 0, 0, NULL, 15, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (27, 53, 54, 905713, CAST(0x0000A1FC00083D60 AS DateTime), 0, 0, NULL, 16, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (28, 55, 56, 905714, CAST(0x0000A1FC00083D60 AS DateTime), 0, 0, NULL, 16, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (29, 57, 58, 905719, CAST(0x0000A1FC00083D60 AS DateTime), 0, 0, NULL, 16, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (30, 59, 60, 887897, CAST(0x0000A1FC0130DEE0 AS DateTime), 0, 0, NULL, 17, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (31, 61, 62, 888256, CAST(0x0000A1FC014AF690 AS DateTime), 0, 0, NULL, 18, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (32, 63, 64, 943213, CAST(0x0000A1FC0155F310 AS DateTime), 0, 0, NULL, 19, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (33, 65, 66, 889462, CAST(0x0000A1FC016EAB30 AS DateTime), 0, 0, NULL, 20, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (34, 67, 68, 889463, CAST(0x0000A1FC016EAB30 AS DateTime), 0, 0, NULL, 20, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (35, 69, 70, 873926, CAST(0x0000A1FC0020F580 AS DateTime), 0, 0, NULL, 21, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (36, 71, 72, 873921, CAST(0x0000A1FC004609B0 AS DateTime), 0, 0, NULL, 21, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (37, 73, 74, 873924, CAST(0x0000A1FC01391C40 AS DateTime), 0, 0, NULL, 21, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (38, 75, 76, 926191, CAST(0x0000A1FC01391C40 AS DateTime), 0, 0, NULL, 22, NULL, 1, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (39, 77, 78, 927270, CAST(0x0000A1FC01499700 AS DateTime), 0, 0, NULL, 23, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
INSERT [dbo].[Matches] ([MatchId], [MatchHome], [MatchVisitor], [MatchNo], [MatchDate], [MatchIsLive], [MatchIsEnabled], [MatchLeague], [MatchLeagueId], [MatchAvailableOdds], [MatchMin], [MatchStatus], [MatchIsActive], [MatchLiveTime], [MatchType], [MatchICode], [MatchIsSpecial], [MatchVisibility], [MatchQuota], [MatchScoreExists]) VALUES (40, 79, 80, 944307, CAST(0x0000A1FC0020F580 AS DateTime), 0, 0, NULL, 24, NULL, 3, 0, 0, CAST(0x0000000000000000 AS DateTime), 0, 0, 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Matches] OFF
/****** Object:  Table [dbo].[Leagues]    Script Date: 08/09/2013 19:33:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Leagues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Leagues](
	[LeagueId] [int] IDENTITY(1,1) NOT NULL,
	[LeagueName] [nvarchar](200) NOT NULL,
	[LeagueAlsoKnownAs] [nvarchar](200) NULL,
 CONSTRAINT [PK_Leagues] PRIMARY KEY CLUSTERED 
(
	[LeagueId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Leagues] ON
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (1, N'Avrupa Sampiyonası (Kadınlar) Grup C', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (2, N'Amerika Altın Kupası', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (3, N'ABD Major Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (4, N'Brezilya Seri A', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (5, N'Finlandiya Veikkausliga', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (6, N'İsveç Allsvenskan Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (7, N'İsviçre Challange Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (8, N'İzlanda Premier Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (9, N'Peru Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (10, N'Rusya Premier Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (11, N'Ukrayna Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (12, N'Kolombiya Play Off', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (13, N'Avrupa Sampiyonası (Kadınlar) Grup C', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (14, N'Amerika Altın Kupası', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (15, N'ABD Major Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (16, N'Brezilya Seri A', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (17, N'Finlandiya Veikkausliga', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (18, N'İsveç Allsvenskan Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (19, N'İsviçre Challange Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (20, N'İzlanda Premier Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (21, N'Peru Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (22, N'Rusya Premier Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (23, N'Ukrayna Ligi', NULL)
INSERT [dbo].[Leagues] ([LeagueId], [LeagueName], [LeagueAlsoKnownAs]) VALUES (24, N'Kolombiya Play Off', NULL)
SET IDENTITY_INSERT [dbo].[Leagues] OFF
/****** Object:  StoredProcedure [dbo].[ImportDataFromFile]    Script Date: 08/09/2013 19:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImportDataFromFile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ImportDataFromFile]
(
  @XMLStringLg NTEXT,
  @XMLStringMatch NTEXT,
  @XMLStringBets NTEXT,
  @XMLStringBet NTEXT,
  @XMLStringChoice NTEXT
  
)
AS

BEGIN TRY
BEGIN TRANSACTION [Trans1]

Declare @tmpLeagues Table
(
	 LeagueSerialId INT IDENTITY(1,1)
    ,EventId int
    ,EventName nvarchar(200)
 )
 
 DECLARE @hDocLeague INT -- Handle for Xml document
	EXEC sp_xml_preparedocument @hDocLeague OUTPUT, @XMLStringLg 
	
  INSERT INTO @tmpLeagues
			(
			EventId
            ,EventName
			)
			
			SELECT 
			event_Id
            ,name
			FROM OPENXML(@hDocLeague,''DocumentElement/event'',2)
			WITH
			(
			  event_Id int
              ,name nvarchar(200)
             )
          
          
          
Declare @tmpMatches Table
(
	 MatchesSerialId INT IDENTITY(1,1),
    MatchId int,
    Id int,
    MatchName nvarchar(200), 
    HomeName nvarchar(200), 
    VisitorName nvarchar(200), 
    MatchMin float,
    MatchStreaming nvarchar(100),
    MatchLiveId int,
    MatchStartDate datetime,
    EventId int,
    LeagueId int
    
 )
 
 DECLARE @hDocMatches INT -- Handle for Xml document
	EXEC sp_xml_preparedocument @hDocMatches OUTPUT, @XMLStringMatch 
	
  INSERT INTO @tmpMatches
			(
			 MatchId ,
    Id ,
    MatchName , 
      HomeName , 
    VisitorName , 
    MatchMin ,
    MatchStreaming ,
    MatchLiveId ,
    MatchStartDate ,
    EventId 
			)
			
			SELECT 
			match_Id,
    id,
    name,
    MatchHome , 
	MatchVisitor ,
    min,
    streaming,
    live_id ,
    start_date,
    event_Id
    
            
			FROM OPENXML(@hDocMatches,''DocumentElement/match'',2)
			WITH
			(
			  match_Id int,
			  id int,
		      name nvarchar(200),
		      MatchHome nvarchar(200) , 
			  MatchVisitor nvarchar(200),
			  min float,
			  streaming nvarchar(100),
			  live_id int,
			  start_date datetime,
			  event_Id int
			  
             )
          
          

Declare @tmpBets Table
(
	BetsSerialId INT IDENTITY(1,1),
    BetsId int,
    MatchId int,
    DbMatchId int
 )
 
 DECLARE @hDocBets INT -- Handle for Xml document
	EXEC sp_xml_preparedocument @hDocBets OUTPUT, @XMLStringBets 
	
  INSERT INTO @tmpBets
			(
	BetsId ,
    MatchId 
			)
			
			SELECT 
			
			bets_Id,
			match_Id
            
			FROM OPENXML(@hDocBets,''DocumentElement/bets'',2)
			WITH
			(
			bets_Id int,
			match_Id int
             )
          




Declare @tmpBet Table
(
	BetSerialId INT IDENTITY(1,1),
	BetId int,
    BetName nvarchar(100),
    BetCode int,
    BetsId int,
    MatchId int,
    DbMatchId int
 )
 
 DECLARE @hDocBet INT -- Handle for Xml document
	EXEC sp_xml_preparedocument @hDocBet OUTPUT, @XMLStringBet 
	
  INSERT INTO @tmpBet
			(
	BetId ,
    BetName ,
    BetCode ,
    BetsId  
			)
			
			SELECT 
			
			bet_Id,
			name,
			code,
			bets_Id
            
			FROM OPENXML(@hDocBet,''DocumentElement/bet'',2)
			WITH
			(
			bet_Id int,
			name nvarchar(100),
			code int,
			bets_Id int
             )
          
          

Declare @tmpChoice Table
(
	ChoiceSerialId INT IDENTITY(1,1),
	ChoiceName nvarchar(100),
    ChoiceOdd float,
    BetId int
 )
 
 DECLARE @hDocChoice INT -- Handle for Xml document
	EXEC sp_xml_preparedocument @hDocChoice OUTPUT, @XMLStringChoice 
	
  INSERT INTO @tmpChoice
			(
	ChoiceName ,
    ChoiceOdd ,
    BetId 
			)
			
			SELECT 
			name,
			odd,
			bet_Id
			 
            
			FROM OPENXML(@hDocChoice,''DocumentElement/choice'',2)
			WITH
			(
			name nvarchar(100),
			odd float ,
			bet_Id int
             )
          
          


		---LOOP THROUGH EVENT DATA AND INSERT INTO LEAGUE TABLE AND ALSO UPDATE MATCH TEMP TABLE TO HAVE CORRECT DATABASE GENERATED
		--- LEAGUE ID...

        DECLARE @SerialIdLg int
		DECLARE @CounterLg INT
		DECLARE @CountLg INT
		DECLARE @LeagueId INT
		DECLARE @CurrEventId INT
		DECLARE @CurrEventName NVARCHAR(200)
		
		SELECT @CountLg = COUNT(*) FROM @tmpLeagues
		SET @CounterLg = 1
		WHILE (@CounterLg <= @CountLg)
		BEGIN
		
			SELECT @CurrEventId = EventId, @CurrEventName = EventName FROM @tmpLeagues WHERE LeagueSerialId = @CounterLg
			INSERT INTO Leagues (LeagueName) VALUES(@CurrEventName)
			SELECT 	@LeagueId = SCOPE_IDENTITY()
			
			UPDATE @tmpMatches SET LeagueId = @LeagueId WHERE EventId = @CurrEventId
		
			SET @CounterLg = @CounterLg + 1
		END
		
		
		--- LOOP THROUGH MATCH TEMP TABLE AND INSERT INTO DATABASE MATCHES TABLE
		
    
		DECLARE @CurrMatchesSerialId INT
		DECLARE @CurrMatchId INT
		DECLARE @DbMatchId INT
		DECLARE @CurrId INT
		DECLARE @CurrMatchMin FLOAT
		DECLARE @CurrMatchLiveId INT
		
		DECLARE @CurrHomeTeamId INT
		DECLARE @CurrVisitorTeamId INT
		
		DECLARE @CurrHomeName NVARCHAR(200)
		DECLARE @CurrVisitorName NVARCHAR(200)
		DECLARE @CurrMatchStreaming NVARCHAR(200)
		DECLARE @CurrMatchStartDate DATETIME

		SELECT @CountLg = COUNT(*) FROM @tmpMatches
		SET @CounterLg = 1
		WHILE (@CounterLg <= @CountLg)
		BEGIN
		
			SELECT @CurrMatchesSerialId = MatchesSerialId , @CurrEventId= EventId,@CurrId = Id,@CurrMatchId=MatchId
			,@CurrMatchMin=MatchMin,@CurrHomeName=HomeName,@CurrVisitorName=VisitorName,@CurrMatchStartDate=MatchStartDate,@CurrMatchStreaming=MatchStreaming
			,@LeagueId = LeagueId
			
			FROM @tmpMatches WHERE MatchesSerialId = @CounterLg
			
			IF NOT EXISTS(SELECT * FROM Teams WHERE TeamName = @CurrHomeName AND TeamLeagueId = @LeagueId)
			BEGIN
				INSERT INTO Teams (TeamName,TeamLeagueId) VALUES(@CurrHomeName,@LeagueId)
			END

			IF NOT EXISTS(SELECT * FROM Teams WHERE TeamName = @CurrVisitorName AND TeamLeagueId = @LeagueId)
			BEGIN
				INSERT INTO Teams (TeamName,TeamLeagueId) VALUES(@CurrVisitorName,@LeagueId)
			END

			SELECT @CurrHomeTeamId = TeamId FROM Teams WHERE TeamName = @CurrHomeName AND TeamLeagueId = @LeagueId
			SELECT @CurrVisitorTeamId = TeamId FROM Teams WHERE TeamName = @CurrVisitorName AND TeamLeagueId = @LeagueId


			INSERT INTO Matches
			(			
			 MatchHome
			,MatchVisitor
			,MatchNo
			,MatchDate
			,MatchIsLive
			,MatchIsEnabled
			,MatchLeagueId
			,MatchMin
			,MatchStatus
			,MatchIsActive
			,MatchLiveTime
			,MatchType
			,MatchICode
			,MatchIsSpecial
			,MatchVisibility
			)
			VALUES
			(
			ISNULL(@CurrHomeTeamId,0)
			,ISNULL(@CurrVisitorTeamId,0)
			,@CurrId
			,@CurrMatchStartDate
			,ISNULL(@CurrMatchStreaming,0)
			,0
			,ISNULL(@LeagueId,0)
			,ISNULL(@CurrMatchMin,1)
			,0
			,0
			,0
			,0
			,0
			,0
			,0
			)
			
			SELECT 	@DbMatchId = SCOPE_IDENTITY()
			
			UPDATE @tmpBets SET DbMatchId = @DbMatchId WHERE MatchId = @CurrMatchId
			
			UPDATE @tmpBet SET DbMatchId = @DbMatchId,MatchId = @CurrId WHERE BetsId = (SELECT BetsId from @tmpBets WHERE MatchId = @CurrMatchId)
			SET @CounterLg = @CounterLg + 1
		END
		
		--extract data from bet and choice tables and insert into
		DECLARE @CounterBet INT
		DECLARE @CountBet INT
		DECLARE @BetName NVARCHAR(100)
		DECLARE @BetCode INT
		DECLARE @BetId INT
		
		DECLARE @Odd1 FLOAT
		DECLARE @Odd2 FLOAT
		DECLARE @Odd3 FLOAT
		DECLARE @Odd4 FLOAT
		DECLARE @Odd5 FLOAT
		DECLARE @Odd6 FLOAT
		DECLARE @Odd7 FLOAT
		DECLARE @Odd8 FLOAT
		DECLARE @Odd9 FLOAT
		
		SELECT @CountBet = COUNT(*) FROM @tmpBet
		SET @CounterBet = 1
		WHILE (@CounterBet <= @CountBet)
		BEGIN
			SELECT @BetId=BetId, @BetName=BetName,@BetCode=BetCode,@CurrMatchId = MatchId, @DbMatchId = DbMatchId  From @tmpBet WHERE BetSerialId = @CounterBet
			
			--- Insert Values Table [Double]
			
			IF(@BetName = ''Double Chance'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''1/0''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''1/2''
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''2/0''
				
				INSERT INTO [Double] (DoubleHomeOrDrawOdds,DoubleHomeOrVisitorOdds,DoubleDrawOrVisitorOdds,DoubleMatchId,DoubleNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
				
			END
			
			--- Insert Values Table [Asian]
			
			ELSE IF(@BetName = ''Draw No Bet'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''1''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''2''
				
				INSERT INTO [Asian] (AsianHomeOdds,AsianVisitorOdds,AsianMatchId,AsianNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [MostGoal]
			
		ELSE IF(@BetName = ''Half with most goals'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''1''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''0''
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''2''
				
				INSERT INTO [MostGoal] (MostGoalFirstOdds,MostGoalEqualOdds,MostGoalSecondOdds,MostGoalMatchId,MostGoalNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [GoalNoGoal]
			
				ELSE IF(@BetName = ''Both Teams To Score'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''Yes''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName=''No''
				
				INSERT INTO [GoalNoGoal] (GoalNoGoalBothOdds,GoalNoGoalOtherOdds,GoalNoGoalMatchId,GoalNoGoalNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [HandiCap]
			
				ELSE IF(@BetName = ''Match Handicaps'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND (ChoiceName = ''2/-1'' OR ChoiceName = ''2/+1'' )
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND (ChoiceName  = ''0/1+1'' OR ChoiceName = ''0/1-1'' )
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND (ChoiceName = ''1/+1'' OR ChoiceName = ''1/-1'' )
				
				INSERT INTO [HandiCap] (HandiCapFavWinsTwoGapOdds,HandiCapFavWinsOneGapOdds,HandiCapDrawOrOtherWinsOdds,HandiCapMatchId,HandiCapNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [HalfFullTime]
			
					ELSE IF(@BetName = ''Double Result'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''1/1''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = ''1/0''
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''1/2''
				SELECT @Odd4 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''0/1''
				SELECT @Odd5 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''0/0''
				SELECT @Odd6 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''0/2''
				SELECT @Odd7 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''2/1''
				SELECT @Odd8 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''2/0''
				SELECT @Odd9 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''2/2''
				
				INSERT INTO [HalfFullTime] (HalfFullTimeHomeHomeOdds,HalfFullTimeHomeDrawOdds,HalfFullTimeHomeVisitorOdds,HalfFullTimeDrawHomeOdds,HalfFullTimeDrawDrawOdds,
				HalfFullTimeDrawVisitorOdds,HalfFullTimeVisitorHomeOdds,HalfFullTimeVisitorDrawOdds,HalfFullTimeVisitorVisitorOdds,HalfFullTimeMatchId,HalfFullTimeNo)
				VALUES(@Odd1,@Odd2,@Odd3,@Odd4,@Odd5,@Odd6,@Odd7,@Odd8,@Odd9, @DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [FirstGoal]
			
					ELSE IF(@BetName = ''1st Goal'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''1''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = ''2''
				
				INSERT INTO [FirstGoal] (FirstGoalHomeOdds,FirstGoalVisitorOdds,FirstGoalMatchId,FirstGoalNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [HalfTime]
			
							ELSE IF(@BetName = ''1st Half Betting'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''1''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = ''0''
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = ''2''
				
				INSERT INTO [HalfTime] (HalfTimeHomeOdds,HalfTimeDrawOdds,HalfTimeVisitorOdds,HalfTimeMatchId,HalfTimeNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [MatchResult]
			
							ELSE IF(@BetName = ''Match Betting'') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = ''1''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = ''0''
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = ''2''
				
				INSERT INTO [MatchResult] (MatchResultHomeOdds,MatchResultDrawOdds,MatchResultVisitorOdds,MatchResultSingleHomeOdds,
				MatchResultSingleDrawOdds,MatchResultSingleVisitorOdds,MatchResultMatchId,MatchResultNo)
				VALUES(@Odd1,@Odd2,@Odd3,0,0,0,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [UnderOver]
			
							ELSE IF(@BetName = ''1st Half Under/Over'' OR @BetName = ''Total Match Goals Under/Over'' ) 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName LIKE ''Under%''
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName LIKE ''Over%''
				
				INSERT INTO [UnderOver] (UnderOverUnderOdds,UnderOverOverOdds,UnderOverMatchId,UnderOverType,UnderOverNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@CurrMatchId,@BetCode)	
			END
			
			
			
			SET @CounterBet = @CounterBet + 1
		END			
		
COMMIT TRANSACTION [Trans1]

END TRY

BEGIN CATCH

ROLLBACK TRANSACTION [Trans1]

END CATCH
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetMatchDetails]    Script Date: 08/09/2013 19:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMatchDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetMatchDetails]
AS                               -- by uspLogError in the ErrorLog table
BEGIN

select Matches.MatchNo,Teams.TeamName,Matches.MatchDate ,Leagues.LeagueName 
From Matches inner join Teams ON Matches.MatchVisitor = Teams.TeamId 
inner join Leagues ON Matches.MatchLeagueId = Leagues.LeagueId 

END

' 
END
GO
