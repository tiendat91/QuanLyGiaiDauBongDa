USE [master]
GO
/****** Object:  Database [QuanLyGiaiDauBongDa]    Script Date: 03-Mar-22 7:11:36 PM ******/
CREATE DATABASE [QuanLyGiaiDauBongDa]
GO

ALTER DATABASE [QuanLyGiaiDauBongDa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET QUERY_STORE = OFF
GO
USE [QuanLyGiaiDauBongDa]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[full_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[email] [nvarchar](50) NULL,
	[dob] [date] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[player_id] [int] NOT NULL,
	[match_id] [int] NOT NULL,
	[card_time] [int] NOT NULL,
	[card_type] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Club]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club](
	[club_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[year_created] [nvarchar](4) NULL,
	[country_id] [int] NULL,
	[city] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[stadium_id] [int] NULL,
	[logo_url] [nvarchar](50) NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[club_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[short_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goal]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goal](
	[goal_id] [int] NOT NULL,
	[match_id] [int] NOT NULL,
	[player_id] [int] NOT NULL,
	[goal_time] [int] NOT NULL,
 CONSTRAINT [PK_Goal] PRIMARY KEY CLUSTERED 
(
	[goal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[match_id] [int] NOT NULL,
	[play_date] [date] NOT NULL,
	[host_id] [int] NOT NULL,
	[guest_id] [int] NOT NULL,
	[referee_id] [int] NOT NULL,
	[tourseason_id] [int] NOT NULL,
	[play_stage] [nvarchar](50) NOT NULL,
	[venue_id] [int] NOT NULL,
 CONSTRAINT [PK_Match_1] PRIMARY KEY CLUSTERED 
(
	[match_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Match_Result]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match_Result](
	[match_id] [int] NOT NULL,
	[play_stage] [nvarchar](50) NULL,
	[club_id] [int] NULL,
	[win_lose] [nvarchar](50) NULL,
	[goal_score] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[player_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[dob] [nvarchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
	[position_id] [nvarchar](50) NOT NULL,
	[height] [nvarchar](50) NOT NULL,
	[weight] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[player_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playing_Position]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playing_Position](
	[position_id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Playing_Position] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referee]    Script Date: 03-Mar-22 7:11:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referee](
	[referee_id] [int] IDENTITY(1,1) NOT NULL,
	[referee_name] [nvarchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_Referee] PRIMARY KEY CLUSTERED 
(
	[referee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03-Mar-22 7:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 03-Mar-22 7:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[role_id] [int] NULL,
	[username] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stadiun]    Script Date: 03-Mar-22 7:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadiun](
	[stadium_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stadiun] PRIMARY KEY CLUSTERED 
(
	[stadium_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 03-Mar-22 7:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[club_id] [int] NULL,
	[player_id] [int] NULL,
	[match_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venue]    Script Date: 03-Mar-22 7:11:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venue](
	[venue_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[audience_capacity] [int] NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[venue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'afussie5', N'Ardelle Fussie', N'5xFmcs8G6CXx', N'afussie5@earthlink.net', CAST(N'1980-11-12' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'asaurd', N'Ainslie Saur', N'odFxThXvRh', N'asaurd@flickr.com', CAST(N'2008-05-24' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'atantoni', N'Adriane Tanton', N'H3bwiJu', N'atantoni@wired.com', CAST(N'2003-10-08' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'brevane', N'Bruis Revan', N'eJIIFbGOpT3a', N'brevane@dot.gov', CAST(N'1986-02-12' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'ddresself', N'Drucie Dressel', N'iSUfOm7uz08', N'ddresself@businesswire.com', CAST(N'2002-10-23' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'dpaolaccig', N'Dianne Paolacci', N'dq7Cs9O5tO', N'dpaolaccig@omniture.com', CAST(N'2008-07-25' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'dtd91', N'David Dang', N'123', N'datdthe151528@gmail.com', CAST(N'2001-10-09' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'gboulter7', N'Georgena Boulter', N'S0rouqm7f', N'gboulter7@imageshack.us', CAST(N'2003-10-06' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'ggoldspinkj', N'Glen Goldspink', N'A2h2IQRh5t73', N'ggoldspinkj@elpais.com', CAST(N'2001-06-09' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'ggrieveson9', N'Gallagher Grieveson', N'XCWMEFPmi', N'ggrieveson9@hp.com', CAST(N'1984-05-28' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'isidgwick2', N'Iain Sidgwick', N'twfl35Yt47', N'isidgwick2@bigcartel.com', CAST(N'1993-01-27' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'kannetts0', N'Konstanze Annetts', N'Po0AhlbdNl3', N'kannetts0@tiny.cc', CAST(N'1998-09-05' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'lguilfoylec', N'Laural Guilfoyle', N'UwsdbC9gISf', N'lguilfoylec@spotify.com', CAST(N'1994-04-10' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'lhenrieb', N'Loella Henrie', N'thkCTaMATJ', N'lhenrieb@vinaora.com', CAST(N'2002-03-07' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'lrogers6', N'Leon Rogers', N'i9NK9dvc0vaG', N'lrogers6@flickr.com', CAST(N'2005-03-25' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'nbointonh', N'Nickie Bointon', N'tecK8VQEm4c', N'nbointonh@washingtonpost.com', CAST(N'1984-01-30' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'podooghaine1', N'Pamella O''Dooghaine', N'ZZNXzgn', N'podooghaine1@indiegogo.com', CAST(N'2001-10-08' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'rpeizer3', N'Rayner Peizer', N'hdSAtyJPf', N'rpeizer3@home.pl', CAST(N'1986-01-11' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'sbaitmana', N'Salomone Baitman', N'klPMihD5', N'sbaitmana@tiny.cc', CAST(N'1994-09-12' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'tgerok8', N'Theodoric Gerok', N'2rmPKS', N'tgerok8@storify.com', CAST(N'1998-11-29' AS Date))
INSERT [dbo].[Account] ([username], [full_name], [password], [email], [dob]) VALUES (N'tjanczyk4', N'Trudie Janczyk', N'Mnwyc6TgBM8', N'tjanczyk4@csmonitor.com', CAST(N'2003-08-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Club] ON 

INSERT [dbo].[Club] ([club_id], [name], [year_created], [country_id], [city], [address], [stadium_id], [logo_url]) VALUES (1, N'MANCHESTER UNITED
', N'1878', 6, N'Manchester', N'Sir Matt Busby Way', 1, N'mu.png')
INSERT [dbo].[Club] ([club_id], [name], [year_created], [country_id], [city], [address], [stadium_id], [logo_url]) VALUES (2, N'NEWCASTLE', N'1892', 6, N'Newcastle upon Tyne
', N'St. James'' Street', 2, N'newcastle.png')
INSERT [dbo].[Club] ([club_id], [name], [year_created], [country_id], [city], [address], [stadium_id], [logo_url]) VALUES (3, N'WATFORD', N'1881', 6, N'Watford', N'Vicarage Road', 3, N'watford.png')
INSERT [dbo].[Club] ([club_id], [name], [year_created], [country_id], [city], [address], [stadium_id], [logo_url]) VALUES (4, N'WOLVES', N'1877', 6, N'Wolverhampton, West Midlands', N'Waterloo Road', 4, N'wolves.png')
INSERT [dbo].[Club] ([club_id], [name], [year_created], [country_id], [city], [address], [stadium_id], [logo_url]) VALUES (5, N'LIVERPOOL', N'1892', 6, N'
Liverpool', N'
Anfield Road', 5, N'liverpool.png')
SET IDENTITY_INSERT [dbo].[Club] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (1, N'Albania', N'ALB')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (2, N'Austria', N'AUT')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (3, N'Belgium', N'BEL')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (4, N'Croatia', N'CRO')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (5, N'Czech Republic
', N'CZE	')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (6, N'England', N'ENG')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (7, N'France', N'FRA')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (8, N'Germany', N'GER')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (9, N'Hungary', N'HUN')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (10, N'Iceland', N'ISL')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (11, N'Italy', N'ITA')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (12, N'Northern Ireland
', N'NIR')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (13, N'Poland', N'POL')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (14, N'Portugal', N'POR')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (15, N'Republic of Ireland
', N'IRL')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (16, N'Romania', N'ROU')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (17, N'Russia', N'RUS')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (18, N'Slovakia', N'SVK')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (19, N'Spain', N'ESP')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (20, N'Sweden', N'SWE')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (21, N'Switzerland', N'SUI')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (22, N'Turkey', N'TUR')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (23, N'Ukraine', N'UKR')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (24, N'Wales', N'WAL')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (25, N'Slovenia', N'SLO')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (26, N'Netherlands', N'NED')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (27, N'Serbia', N'SRB')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (28, N'Scotland', N'SCO')
INSERT [dbo].[Country] ([country_id], [name], [short_name]) VALUES (29, N'Norway', N'NOR')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'CB', N'Trung vệ')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'CF', N'Tiền đạo trung tâm')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'CM', N'Tiền vệ trung tâm')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'GK', N'Thủ môn')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'LB', N'Hậu vệ trái')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'LF', N'Tiền đạo cánh trái')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'LM', N'Tiền vệ trái')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'LS', N'Hậu vệ trái')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'LWB', N'Hậu vệ chạy cánh trái')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'RB', N'Hậu vệ phải')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'RF', N'Tiền đạo cánh phải')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'RM', N'Tiền vệ phải')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'RS', N'Hậu vệ phải')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'RWB', N'Hậu vệ chạy cánh phải')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'ST', N'Tiền đạo cắm')
INSERT [dbo].[Playing_Position] ([position_id], [name]) VALUES (N'SW', N'Trung vệ thòng')
GO
SET IDENTITY_INSERT [dbo].[Referee] ON 

INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (3, N'Damir Skomina', 2)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (4, N'Martin Atkinson', 2)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (5, N'Felix Brych', 10)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (6, N'Cuneyt Cakir', 9)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (7, N'Mark Clattenburg', 8)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (8, N'	Jonas Eriksson', 2)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (9, N'Viktor Kassai', 14)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (10, N'Bjorn Kuipers', 4)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (11, N'Szymon Marciniak', 2)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (12, N'Milorad Mazic', 5)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (13, N'Nicola Rizzoli', 1)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (14, N'Carlos Velasco Carballo', 6)
INSERT [dbo].[Referee] ([referee_id], [referee_name], [country_id]) VALUES (15, N'William Collum', 15)
SET IDENTITY_INSERT [dbo].[Referee] OFF
GO
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'User')
GO
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'afussie5')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'asaurd')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'atantoni')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'brevane')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'ddresself')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'dpaolaccig')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (1, N'dtd91')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'gboulter7')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'ggoldspinkj')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'ggrieveson9')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'isidgwick2')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'kannetts0')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'lguilfoylec')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'lhenrieb')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'lrogers6')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'nbointonh')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'podooghaine1')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'rpeizer3')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'sbaitmana')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'tgerok8')
INSERT [dbo].[Role_Account] ([role_id], [username]) VALUES (2, N'tjanczyk4')
GO
SET IDENTITY_INSERT [dbo].[Stadiun] ON 

INSERT [dbo].[Stadiun] ([stadium_id], [name]) VALUES (1, N'Old Trafford')
INSERT [dbo].[Stadiun] ([stadium_id], [name]) VALUES (2, N'
St. James'' Park')
INSERT [dbo].[Stadiun] ([stadium_id], [name]) VALUES (3, N'Vicarage Road')
INSERT [dbo].[Stadiun] ([stadium_id], [name]) VALUES (4, N'
Molineux Stadium')
INSERT [dbo].[Stadiun] ([stadium_id], [name]) VALUES (5, N'Anfield')
SET IDENTITY_INSERT [dbo].[Stadiun] OFF
GO
SET IDENTITY_INSERT [dbo].[Venue] ON 

INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (1, N'Stade de Bordeaux	', 42115)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (2, N'Stade Bollaert-Delelis', 38223)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (3, N'Stade Pierre Mauroy', 49822)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (4, N'Stade de Lyon', 58585)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (5, N'	Stade VElodrome', 64354)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (6, N'Stade de Nice', 35624)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (7, N'Parc des Princes', 47294)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (8, N'	Stade de France', 80100)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (9, N'Stade Geoffroy Guichard', 42000)
INSERT [dbo].[Venue] ([venue_id], [name], [audience_capacity]) VALUES (10, N'Stadium de Toulouse', 33150)
SET IDENTITY_INSERT [dbo].[Venue] OFF
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_Match] FOREIGN KEY([match_id])
REFERENCES [dbo].[Match] ([match_id])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_Match]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_Player] FOREIGN KEY([player_id])
REFERENCES [dbo].[Player] ([player_id])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_Player]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Country]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Stadiun] FOREIGN KEY([stadium_id])
REFERENCES [dbo].[Stadiun] ([stadium_id])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Stadiun]
GO
ALTER TABLE [dbo].[Goal]  WITH CHECK ADD  CONSTRAINT [FK_Goal_Match] FOREIGN KEY([match_id])
REFERENCES [dbo].[Match] ([match_id])
GO
ALTER TABLE [dbo].[Goal] CHECK CONSTRAINT [FK_Goal_Match]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Club] FOREIGN KEY([host_id])
REFERENCES [dbo].[Club] ([club_id])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Club]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Club1] FOREIGN KEY([guest_id])
REFERENCES [dbo].[Club] ([club_id])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Club1]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Referee] FOREIGN KEY([referee_id])
REFERENCES [dbo].[Referee] ([referee_id])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Referee]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Venue] FOREIGN KEY([venue_id])
REFERENCES [dbo].[Venue] ([venue_id])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Venue]
GO
ALTER TABLE [dbo].[Match_Result]  WITH CHECK ADD  CONSTRAINT [FK_Match_Result_Club] FOREIGN KEY([club_id])
REFERENCES [dbo].[Club] ([club_id])
GO
ALTER TABLE [dbo].[Match_Result] CHECK CONSTRAINT [FK_Match_Result_Club]
GO
ALTER TABLE [dbo].[Match_Result]  WITH CHECK ADD  CONSTRAINT [FK_Match_Result_Match] FOREIGN KEY([match_id])
REFERENCES [dbo].[Match] ([match_id])
GO
ALTER TABLE [dbo].[Match_Result] CHECK CONSTRAINT [FK_Match_Result_Match]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Country]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Playing_Position] FOREIGN KEY([position_id])
REFERENCES [dbo].[Playing_Position] ([position_id])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Playing_Position]
GO
ALTER TABLE [dbo].[Referee]  WITH CHECK ADD  CONSTRAINT [FK_Referee_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Referee] CHECK CONSTRAINT [FK_Referee_Country]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Club] FOREIGN KEY([club_id])
REFERENCES [dbo].[Club] ([club_id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Club]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Match] FOREIGN KEY([match_id])
REFERENCES [dbo].[Match] ([match_id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Match]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Player] FOREIGN KEY([player_id])
REFERENCES [dbo].[Player] ([player_id])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Player]
GO
USE [master]
GO
ALTER DATABASE [QuanLyGiaiDauBongDa] SET  READ_WRITE 
GO
