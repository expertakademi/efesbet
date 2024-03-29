USE [master]
GO
/****** Object:  Database [EfesBet_Back]    Script Date: 08/01/2013 18:20:29 ******/
CREATE DATABASE [EfesBet_Back] ON  PRIMARY 
( NAME = N'EfesBet_Back', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\EfesBet_Back.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EfesBet_Back_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\EfesBet_Back_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EfesBet_Back] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EfesBet_Back].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EfesBet_Back] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EfesBet_Back] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EfesBet_Back] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EfesBet_Back] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EfesBet_Back] SET ARITHABORT OFF
GO
ALTER DATABASE [EfesBet_Back] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [EfesBet_Back] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EfesBet_Back] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EfesBet_Back] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EfesBet_Back] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EfesBet_Back] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EfesBet_Back] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EfesBet_Back] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EfesBet_Back] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EfesBet_Back] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EfesBet_Back] SET  DISABLE_BROKER
GO
ALTER DATABASE [EfesBet_Back] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EfesBet_Back] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EfesBet_Back] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EfesBet_Back] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EfesBet_Back] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EfesBet_Back] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EfesBet_Back] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EfesBet_Back] SET  READ_WRITE
GO
ALTER DATABASE [EfesBet_Back] SET RECOVERY FULL
GO
ALTER DATABASE [EfesBet_Back] SET  MULTI_USER
GO
ALTER DATABASE [EfesBet_Back] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EfesBet_Back] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'EfesBet_Back', N'ON'
GO
USE [EfesBet_Back]
GO
/****** Object:  User [edrdev]    Script Date: 08/01/2013 18:20:29 ******/
CREATE USER [edrdev] FOR LOGIN [edrdev] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[HandiCap]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[HalfTime]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[HalfFullTime]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[GoalNoGoal]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[FirstGoal]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Double]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Columns]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Asian]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Users]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnderOver]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[TotalGoal]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](200) NOT NULL,
	[TeamAlsoKnownAs] [nvarchar](200) NULL,
	[TeamLeagueId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotas]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotas](
	[QuotaId] [int] IDENTITY(1,1) NOT NULL,
	[QuotaMatchNo] [int] NOT NULL,
	[QuotaType] [int] NOT NULL,
	[QuotaPutUp] [bit] NOT NULL,
	[QuotaAmount] [int] NOT NULL,
	[QuotaUserId] [uniqueidentifier] NOT NULL,
	[QuotaStatus] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OddEven]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[MostGoal]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[MatchScores]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[MatchResult]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Matches]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Leagues]    Script Date: 08/01/2013 18:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leagues](
	[LeagueId] [int] IDENTITY(1,1) NOT NULL,
	[LeagueName] [nvarchar](200) NOT NULL,
	[LeagueAlsoKnownAs] [nvarchar](200) NULL,
 CONSTRAINT [PK_Leagues] PRIMARY KEY CLUSTERED 
(
	[LeagueId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ImportDataFromFile]    Script Date: 08/01/2013 18:20:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ImportDataFromFile]
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
			FROM OPENXML(@hDocLeague,'DocumentElement/event',2)
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
    
            
			FROM OPENXML(@hDocMatches,'DocumentElement/match',2)
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
            
			FROM OPENXML(@hDocBets,'DocumentElement/bets',2)
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
            
			FROM OPENXML(@hDocBet,'DocumentElement/bet',2)
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
			 
            
			FROM OPENXML(@hDocChoice,'DocumentElement/choice',2)
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
			
			IF(@BetName = 'Double Chance') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='1/0'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='1/2'
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='2/0'
				
				INSERT INTO [Double] (DoubleHomeOrDrawOdds,DoubleHomeOrVisitorOdds,DoubleDrawOrVisitorOdds,DoubleMatchId,DoubleNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
				
			END
			
			--- Insert Values Table [Asian]
			
			ELSE IF(@BetName = 'Draw No Bet') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='1'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='2'
				
				INSERT INTO [Asian] (AsianHomeOdds,AsianVisitorOdds,AsianMatchId,AsianNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [MostGoal]
			
		ELSE IF(@BetName = 'Half with most goals') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='1'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='0'
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='2'
				
				INSERT INTO [MostGoal] (MostGoalFirstOdds,MostGoalEqualOdds,MostGoalSecondOdds,MostGoalMatchId,MostGoalNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [GoalNoGoal]
			
				ELSE IF(@BetName = 'Both Teams To Score') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='Yes'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName='No'
				
				INSERT INTO [GoalNoGoal] (GoalNoGoalBothOdds,GoalNoGoalOtherOdds,GoalNoGoalMatchId,GoalNoGoalNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [HandiCap]
			
				ELSE IF(@BetName = 'Match Handicaps') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND (ChoiceName = '2/-1' OR ChoiceName = '2/+1' )
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND (ChoiceName  = '0/1+1' OR ChoiceName = '0/1-1' )
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND (ChoiceName = '1/+1' OR ChoiceName = '1/-1' )
				
				INSERT INTO [HandiCap] (HandiCapFavWinsTwoGapOdds,HandiCapFavWinsOneGapOdds,HandiCapDrawOrOtherWinsOdds,HandiCapMatchId,HandiCapNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [HalfFullTime]
			
					ELSE IF(@BetName = 'Double Result') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '1/1'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = '1/0'
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '1/2'
				SELECT @Odd4 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '0/1'
				SELECT @Odd5 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '0/0'
				SELECT @Odd6 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '0/2'
				SELECT @Odd7 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '2/1'
				SELECT @Odd8 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '2/0'
				SELECT @Odd9 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '2/2'
				
				INSERT INTO [HalfFullTime] (HalfFullTimeHomeHomeOdds,HalfFullTimeHomeDrawOdds,HalfFullTimeHomeVisitorOdds,HalfFullTimeDrawHomeOdds,HalfFullTimeDrawDrawOdds,
				HalfFullTimeDrawVisitorOdds,HalfFullTimeVisitorHomeOdds,HalfFullTimeVisitorDrawOdds,HalfFullTimeVisitorVisitorOdds,HalfFullTimeMatchId,HalfFullTimeNo)
				VALUES(@Odd1,@Odd2,@Odd3,@Odd4,@Odd5,@Odd6,@Odd7,@Odd8,@Odd9, @DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [FirstGoal]
			
					ELSE IF(@BetName = '1st Goal') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '1'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = '2'
				
				INSERT INTO [FirstGoal] (FirstGoalHomeOdds,FirstGoalVisitorOdds,FirstGoalMatchId,FirstGoalNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [HalfTime]
			
							ELSE IF(@BetName = '1st Half Betting') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '1'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = '0'
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = '2'
				
				INSERT INTO [HalfTime] (HalfTimeHomeOdds,HalfTimeDrawOdds,HalfTimeVisitorOdds,HalfTimeMatchId,HalfTimeNo)
				VALUES(@Odd1,@Odd2,@Odd3,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [MatchResult]
			
							ELSE IF(@BetName = 'Match Betting') 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName = '1'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = '0'
				SELECT @Odd3 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName  = '2'
				
				INSERT INTO [MatchResult] (MatchResultHomeOdds,MatchResultDrawOdds,MatchResultVisitorOdds,MatchResultSingleHomeOdds,
				MatchResultSingleDrawOdds,MatchResultSingleVisitorOdds,MatchResultMatchId,MatchResultNo)
				VALUES(@Odd1,@Odd2,@Odd3,0,0,0,@DbMatchId,@BetCode)	
			END
			
			--- Insert Values Table [UnderOver]
			
							ELSE IF(@BetName = '1st Half Under/Over' OR @BetName = 'Total Match Goals Under/Over' ) 
			BEGIN
				SELECT @Odd1 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName LIKE 'Under%'
				SELECT @Odd2 = ChoiceOdd FROM @tmpChoice WHERE BetId = @BetId AND ChoiceName LIKE 'Over%'
				
				INSERT INTO [UnderOver] (UnderOverUnderOdds,UnderOverOverOdds,UnderOverMatchId,UnderOverType,UnderOverNo)
				VALUES(@Odd1,@Odd2,@DbMatchId,@CurrMatchId,@BetCode)	
			END
			
			
			
			SET @CounterBet = @CounterBet + 1
		END			
		

select * from @tmpLeagues
select * from @tmpMatches
select * from @tmpBets
select * from @tmpBet
select * from @tmpChoice

COMMIT TRANSACTION [Trans1]

END TRY

BEGIN CATCH

ROLLBACK TRANSACTION [Trans1]

END CATCH
GO
