USE [master]
GO
/****** Object:  Database [Movies]    Script Date: 8/15/2019 18:57:08 ******/
CREATE DATABASE [Movies]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Movies', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Movies.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Movies_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Movies_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Movies] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Movies].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Movies] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Movies] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Movies] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Movies] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Movies] SET ARITHABORT OFF 
GO
ALTER DATABASE [Movies] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Movies] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Movies] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Movies] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Movies] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Movies] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Movies] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Movies] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Movies] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Movies] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Movies] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Movies] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Movies] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Movies] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Movies] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Movies] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Movies] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Movies] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Movies] SET  MULTI_USER 
GO
ALTER DATABASE [Movies] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Movies] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Movies] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Movies] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Movies] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Movies] SET QUERY_STORE = OFF
GO
USE [Movies]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Movies]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
	[Born] [nvarchar](150) NULL,
	[Country] [nvarchar](150) NULL,
	[Nationality] [nvarchar](150) NULL,
	[Awards] [text] NULL,
	[Info] [text] NULL,
	[Status] [bit] NULL,
	[Wikipedia] [text] NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Comment] [text] NULL,
	[Date] [datetime] NOT NULL,
	[MovieID] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Telephone] [nvarchar](250) NULL,
	[Message] [text] NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Password] [text] NULL,
 CONSTRAINT [PK_Logins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieActors]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieActors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActorID] [int] NULL,
	[MovieID] [int] NULL,
 CONSTRAINT [PK_MovieActors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenres]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[GenreID] [int] NULL,
 CONSTRAINT [PK_MovieGenres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](150) NULL,
	[Number] [int] NULL,
	[Name] [nvarchar](150) NULL,
	[Production] [nvarchar](150) NULL,
	[Duration] [nvarchar](150) NULL,
	[Year] [float] NULL,
	[Director] [nvarchar](150) NULL,
	[Imdb] [float] NULL,
	[Video] [nvarchar](150) NULL,
	[Slider] [bit] NULL,
	[Status] [bit] NULL,
	[Info] [text] NULL,
	[Top] [bit] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieSeans]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieSeans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[SeansID] [int] NULL,
 CONSTRAINT [PK_MovieSeans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seans]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [nvarchar](150) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Seans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeansTables]    Script Date: 8/15/2019 18:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeansTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[Time] [nvarchar](150) NULL,
	[Hall] [nvarchar](150) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_SeansTables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 

INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1, N'Bill Nighy', N'Bill_Nighy_02.jpg', N'December 12, 1949 (age 69 years)', N'Caterham, Surrey, England', N'British
', N'32nd Goya Awards in February 2018', N'William Francis Nighy is an English actor. He worked in theatre and television before his first cinema role in 1981, and made his name in television with The Men''s Room in 1991, in which he played the womaniser Professor Mark Carleton. Nighy became widely known for his performance as Billy Mack in Love Actually ', 1, N'https://en.wikipedia.org/wiki/Bill_Nighy')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (2, N'Chris Geere', N'Chris_Geere.jpg', N'March 18, 1981 (age 38 years)', N'Cambridge, United Kingdom', N'British', N'---', N'Christopher William Geere is an English actor. He is best known for playing the lead role of Jimmy Shive-Overly in the FXX comedy You''re the Worst and Roger Clifford in the 2019 movie Pokémon Detective Pikachu', 1, N'https://en.wikipedia.org/wiki/Chris_Geere')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (3, N'Kathryn Newton', N'Kathryn-Newton.jpg', N' February 8, 1997 (age 22 years)', N'Orlando, Florida, United States', N'American', N'2009 30th Young Artist Best Performance,Supporting Young Actress Gary Unmarried Nominated', N'Kathryn Love Newton is an American actress best known for her role as Allie Pressman in the Netflix series The Society, Lucy Stevens in Pokémon Detective Pikachu, Louise Brooks in the CBS television', 1, N'https://en.wikipedia.org/wiki/Kathryn_Newton')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (4, N'Ken Watanabe', N'Ken_Watanabe.jpg', N'October 21, 1959 (age 59 years)', N'Hirokami, Niigata, Japan', N'Japanese ', N'Watanabe at the New York premiere of Memories of Tomorrow in May 2007', N'Ken Watanabe is a Japanese actor. To English-speaking audiences, he is known for playing tragic hero characters, such as General Tadamichi Kuribayashi in Letters from Iwo Jima and Lord Katsumoto Moritsugu in The Last Samurai, for which he was nominated for the Academy Award for Best Supporting Actor', 1, N'https://en.wikipedia.org/wiki/Ken_Watanabe')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (5, N'Rita Ora', N'rita-ora.jpg', N'26 November 1990 (age 28)', N'Pristina, SFR Yugoslavia', N'Yugoslavian', N'ASCAP Pop Music Awards,Bambi Awards,BBC Radio 1 Teen Awards,BET Awards,Billboard Music Awards', N'DescriptionRita Sahatçiu Ora is an English singer, songwriter and actress. She rose to prominence in February 2012 when she featured on DJ Fresh''s single "Hot Right Now", which reached number one in the UK. Her debut studio album, Ora, released in August 2012, debuted at number one in the United Kingdom', 1, N'https://en.wikipedia.org/wiki/Rita_Ora')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (6, N'Daniel Dae ', N'Daniel_Dae_Kim.png', N'August 4, 1968 (age 50 years)', N'Busan, South Korea', N'South Korean', N'Kim on the set of Hawaii Five-O in October 2013', N'Daniel Dae Kim is an American actor, voice actor, and producer. He is known for his roles as Jin-Soo Kwon in Lost, Chin Ho Kelly in Hawaii Five-0, Gavin Park in Angel and Johnny Gat in the Saints Row series of video games', 1, N'https://en.wikipedia.org/wiki/Daniel_Dae_Kim')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (7, N'David Harbour', N'David_Harbour.jpg', N'April 10, 1975 (age 44)', N'White Plains, New York, U.S.', N'American', N'Harbour at the 2017 San Diego Comic-Con', N'David Kenneth Harbour (born 10 April 1975) is an American actor. He is best known for his role as Jim Hopper in the Netflix science fiction horror series Stranger Things (2016–2019), which has earned him a Critics'' Choice Television Award in 2018. He has also received Primetime Emmy Award and Golden Globe Award nominations for the role.', 1, N'https://en.wikipedia.org/wiki/David_Harbour')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (8, N'Ian McShane', N'ian-mcshane.png', N'September 29, 1942 (age 76 years)', N'Blackburn, United Kingdom', N'British', N'Golden Globe Award for Best Performance by an Actor in a Television Series – Drama', N'Ian David McShane is a British actor. He is known for his television performances, particularly the title role in the BBC series Lovejoy and as Al Swearengen on the HBO series Deadwood and its 2019 film', 1, N'https://en.wikipedia.org/wiki/Ian_McShane')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (9, N'Milla Jovovich', N'Milla-Jovovich.jpg', N'December 17, 1975 (age 43 years)', N'Kyiv, Ukraine', N'Ukrainian', N'2003 Nominee Saturn Award, Best Actress Resident Evil(2002), Best Supporting Actress The Fifth Element(1997) ', N'Milica Bogdanovna "Milla" Jovovich is an American actress, model, and musician. Her starring roles in numerous science fiction and action films led the music channel VH1 to deem her the "reigning queen of kick-butt" in 2006. In 2004, Forbes determined that she was the highest-paid model in the world', 1, N'https://en.wikipedia.org/wiki/Milla_Jovovich')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (10, N'Sasha Lane', N'sashalane.jpg', N'September 28, 1995 (age 23)', N'Houston, Texas, U.S.', N'American
', N'The British Independent Film Award for Best Performance by an Actress in a British Independent Film', N'Sasha Bianca Lane (born September 29, 1995) is an American actress. She made her film debut in American Honey (2016) directed by Andrea Arnold.', 1, N'https://en.wikipedia.org/wiki/Sasha_Lane')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (11, N'Ben Mendelsohn', N'Ben-Mendelsohn-696x522.jpg', N'April 3, 1969 (age 50 years)', N'Melbourne, Australia', N'Australian
', N'Primetime Emmy Award for Outstanding Supporting Actor in a Drama Series', N'Paul Benjamin Mendelsohn is an Australian actor, who first rose to prominence in Australia for his breakout role in The Year My Voice Broke and internationally for his role in the crime drama Animal Kingdom', 1, N'https://en.wikipedia.org/wiki/Ben_Mendelsohn')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (12, N'Brie Larson
', N'Brie_Larson.jpg', N'October 1, 1989 (age 29 years)', N'Sacramento, California, United States', N'American', N'Academy Awards, British Academy of Film and Television Arts Awards, Golden Globe Awards, Screen Actors Guild Awards', N'Brianne Sidonie Desaulniers, known professionally as Brie Larson, is an American actress and filmmaker. Noted for her supporting work in comedies when a teenager, she has since expanded to leading roles in independent dramas and film franchises, receiving such accolades as an Academy Award and a Golden Globe', 1, N'https://en.wikipedia.org/wiki/Brie_Larson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (13, N'Gemma Chan', N'gemma-chan.jpg', N'November 29, 1982 (age 36 years)', N'London, United Kingdom', N'British
', N'MTV Movie Award for Best Kiss, MTV Movie Award for Best Villain, MTV Generation Award', N'Gemma Chan is an English actress. Born in London and raised in Kent, Chan attended the Newstead Wood School for Girls and studied jurisprudence at Worcester College, Oxford', 1, N'https://en.wikipedia.org/wiki/Gemma_Chan')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (14, N'Jude Law', N'judelaw.jpg', N'December 29, 1972 (age 46 years)', N' Lewisham, London, United Kingdom', N'British', N'Best Actor in a Leading Role Cold Mountain (2003), 2000vNominee Oscar,	Best Actor in a Supporting Role The Talented Mr. Ripley (1999)', N'David Jude Heyworth Law is an English actor. He has received nominations for two Academy Awards, four Golden Globe Awards, two Screen Actors Guild Awards, and two British Academy Awards, winning one', 1, N'https://en.wikipedia.org/wiki/Jude_Law')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (15, N'Samuel L. Jackson', N'Samuel_L_Jackson.jpg', N'December 21, 1948 (age 70 years)', N' Washington, D.C., United States', N'American', N'Academy Awards, BAFTA Awards, Black Reel Awards, Golden Globe Awards, Independent Spirit Awards, MTV Movie Awards', N'Samuel Leroy Jackson is an American actor and film producer. A recipient of critical acclaim and numerous accolades and awards, Jackson is the actor whose films have made the highest total gross revenue', 1, N'https://en.wikipedia.org/wiki/Samuel_L._Jackson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (16, N'Christoph Waltz', N'Christoph_Waltz.jpg', N'October 4, 1956 (age 62 years)', N'Vienna, Austria', N'Austrian', N'Academy Award for Best Actor in a Supporting Role', N'Christoph Waltz is a German-Austrian actor and director, mainly active in the United States. His breakout role came in Quentin Tarantino''s 2009 film Inglourious Basterds, where he played SS officer Hans Landa', 1, N'https://en.wikipedia.org/wiki/Christoph_Waltz')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (17, N'Ed Skrein', N'Ed_Skrein.jpg', N'March 29, 1983 (age 36 years)', N' London Borough of Camden, London, United Kingdom', N'British', N'Best Fight Deadpool (2016) Shared with: Ryan Reynolds', N'Edward George Skrein is an English actor and rapper. Outside his rap career, he is best known for his roles as Daario Naharis in the third season of Game of Thrones, Frank Martin Jr. in The Transporter Refueled, Francis Freeman/Ajax in Deadpool and as the cocky hunter warrior Zapan in Alita: Battle Angel', 1, N'https://en.wikipedia.org/wiki/Ed_Skrein')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (18, N'Eiza González
', N'Eiza-Gonzalez.jpg', N'January 30, 1990 (age 29 years)', N' Mexico City, Mexico', N'Mexican', N'Premio Juventud for Best Novela Theme Song - Novelas', N'Eiza González Reyna is a Mexican actress, singer, songwriter, and model. She gained popularity for her debut role as Lola Valente in the Mexican musical telenovela Lola, érase una vez. She also portrayed the lead role of Clara Molina on the Nickelodeon teen drama Sueña conmigo', 1, N'https://en.wikipedia.org/wiki/Eiza_Gonz%C3%A1lez')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (19, N'Mahershala Ali', N'mahershala-ali-what-you-need-know.jpg', N'February 16, 1974 (age 45 years)', N'Oakland, California, United States', N'American', N'Academy Awards, British Academy of Film and Television Arts Awards, Emmy Awards (Primetime), Golden Globe Awards ,Screen Actors Guild Awards', N'Mahershalalhashbaz Ali, known professionally as Mahershala Ali, is an American actor and rapper who is a recipient of several awards, including two Academy Awards and a Golden Globe Award. Time magazine named Ali one of the 100 most influential people in the world in 2019', 1, N'https://en.wikipedia.org/wiki/Mahershala_Ali')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (20, N'Rosa Salazar
', N'Rosa-Salazar.jpg', N'July 16, 1985 (age 34 years)', N'Washington, D.C., United States', N'American', N'Best Vocal Ensemble in a Video Game
Batman: Arkham Origins (2013) ', N'Rosa Bianca Salazar is an American actress. She had roles in the NBC series Parenthood and the FX anthology series American Horror Story: Murder House. She played the title character in the film Alita: Battle Angel', 1, N'https://en.wikipedia.org/wiki/Rosa_Salazar')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (21, N'Chris Evans
', N'Chris_Evans.jpg', N'June 13, 1981 (age 38 years)', N' Boston, Massachusetts, United States', N'American', N'Best Actor Avengers: Endgame (2019), Best Actor Captain America: Civil War (2016), Best Actor Captain America: The Winter Soldier (2014), Best Actor
Captain America: The First Avenger (2011) ', N'Christopher Robert Evans is an American actor. Evans is known for his superhero roles as the Marvel Comics characters Steve Rogers in the Marvel Cinematic Universe and the Human Torch in Fantastic Four and its 2007 sequel', 1, N'https://en.wikipedia.org/wiki/Chris_Evans_(actor)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (22, N'Chris Hemsworth
', N'Chris_Hemsworth.jpg', N'August 11, 1983 (age 35 years)', N'Melbourne, Australia', N'Australian', N'Best Fight, Best Kiss, Best Hero, Best Shirtless Performance, Best Global Actor in a Motion Picture, Best International Actor, Favorite Movie Actor', N'Christopher Hemsworth is an Australian actor. He rose to prominence playing Kim Hyde in the Australian TV series Home and Away', 1, N'https://en.wikipedia.org/wiki/Chris_Hemsworth')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (23, N'Robert Downey, Jr.
', N'Robert_Downey_jn.jpg', N'April 4, 1965 (age 54 years)', N'Manhattan, New York, United States', N'American', N'Best Performance by an Actor in a Supporting Role, Best Actor in a Leading Role, Best Supporting Actor, Best Actor', N'Robert John Downey Jr. is an American actor and singer. His career has been characterized by critical and popular notoriety in his youth, followed by a period of substance abuse and legal troubles, before a resumption of critical repute and resurgence of commercial success in middle age', 1, N'https://en.wikipedia.org/wiki/Robert_Downey_Jr.')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (24, N'Scarlett Johansson
', N'Scarlett-Johansson.jpg', N'November 22, 1984 (age 34 years)', N' Manhattan, New York, United States', N'American, Danish', N'British Academy Film Awards, Golden Globe Awards, Broadcast Film Critics Association, Film Critics Awards, Gotham Independent Film Awards, Academy of Science Fiction, Fantasy and Horror Films, Miscellaneous', N'Scarlett Ingrid Johansson is an American actress and singer. She is the world''s highest-paid actress, has a star on the Hollywood Walk of Fame, has made multiple appearances in the Forbes Celebrity 100, and is the recipient of several awards, including a Tony Award and a British Academy Film Award', 1, N'https://en.wikipedia.org/wiki/Scarlett_Johansson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (25, N'Becky G', N'becky-g.jpg', N'March 2, 1997 (age 22 years)', N'Inglewood, California, United States', N'American', N'2015 Artist of the Year, 2017 Hot Latin Songs Artist of the Year, 2018 Hot Latin Songs Artist of the Year, 2019 Hot Latin Songs Artist of the Year
', N'Rebbeca Marie Gomez, known as Becky G, is an American singer, songwriter and actress. Gomez first gained recognition in 2011 when she began posting videos of herself covering popular songs online', 1, N'https://en.wikipedia.org/wiki/Becky_G')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1025, N'Lou Taylor Pucci
', N'Lou_Taylor_Pucci.jpg', N'July 27, 1985 (age 34 years)', N'Seaside Heights, New Jersey, United States', N'American', N'Silver Bear for Best Actor
', N'Lou Taylor Pucci is an American actor who first appeared on film in Rebecca Miller''s Personal Velocity: Three Portraits in 2002. Pucci had his breakthrough leading role in Thumbsucker, for which he won a Special Jury Prize at the Sundance Film Festival', 1, N'https://en.wikipedia.org/wiki/Lou_Taylor_Pucci')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1026, N'Patricia De Leon
', N'Patricia_De_Leon.jpg', N'January 2, 1978 (age 41 years)', N'Panama City, Panama', N'Panamanian
', N'Rica Famosa Latina (2017) as herself, Scorpion (2017) as Lucinda', N'Patricia Michelle de León is a Panamanian actress, TV host, model and beauty pageant title holder. She started working as a model at an early age. After being crowned Miss Panama, she hosted La Corte de Familia and La Corte del Pueblo on Telemundo', 1, N'https://en.wikipedia.org/wiki/Patricia_de_Leon_(actress)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1027, N'Ted McGinley
', N'Ted_McGinley.jpg', N'May 30, 1958 (age 61 years)', N'Newport Beach, California, United States', N'American', N'Best Vocal Ensemble in a Television Series', N'Theodore Martin "Ted" McGinley is an American actor. He is known for his roles as Jefferson D''Arcy on the television sitcom Married... with Children and as Charley Shanowski on the ABC sitcom Hope & Faith. He was also a late regular on Happy Days, Dynasty and The Love Boat', 1, N'https://en.wikipedia.org/wiki/Ted_McGinley')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1028, N'Thomas Jane
', N'Thomas_Jane.jpg', N'February 22, 1969 (age 50 years)', N'Baltimore, Maryland, United States', N'American', N'Golden Globe Award for Best Actor in a Television Series - Musical or Comedy, Best Ensemble Cast', N'Thomas Jane is an American actor. He is known for appearing in such films as Evening Raga of the West, Boogie Nights, The Thin Red Line, Deep Blue Sea, The Punisher, The Mist, Mutant Chronicles, 1922 and The Predator', 1, N'https://en.wikipedia.org/wiki/Thomas_Jane')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1029, N'Christopher Denham
', N'Christopher_Denham.jpg', N'1980 (age 39 years)', N'Alsip, Illinois, United States', N'American', N' Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture', N'Christopher Denham is an American actor, film director, writer, and producer. He directed Home Movie and is best known for his role in Argo Denham is a 1998 graduate of Marist High School and 2002 graduate of the University of Illinois, Champaign-Urbana', 1, N'https://en.wikipedia.org/wiki/Christopher_Denham')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1030, N'David Strathairn
', N'davidstrathairn.jpg', N'January 26, 1949 (age 70 years)', N' San Francisco, California, United States', N'American
', N'Best Performance by an Actor in a Leading Role
', N'David Russell Strathairn is an American actor. Strathairn came to prominence in the 1980s and the 1990s performing in the films of fellow Williams grad John Sayles, including Return of the Secaucus 7, The Brother from Another Planet, Matewan, City of Hope, Eight Men Out, and Limbo', 1, N'https://en.wikipedia.org/wiki/David_Strathairn')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1031, N'Gugu Mbatha-Raw
', N'Gugu-Mbatha-Raw.jpg', N'April 21, 1983 (age 36 years)', N'Oxford, United Kingdom', N'English, British', N'The British Independent Film Award for Best Performance by an Actress in a British Independent Film', N'Gugulethu Sophia Mbatha-Raw MBE is an English actress, known for her role as Kelly in Black Mirror, Dido Elizabeth Belle in Belle, Noni Jean in Beyond the Lights, and Plumette in Beauty and the Beast', 1, N'https://en.wikipedia.org/wiki/Gugu_Mbatha-Raw')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1032, N'Jermaine Washington
', N'Jermaine_Washington.jpg', N'October 28, 1992 (age 26)
', N'Prince George''s County, Maryland, U.S.', N'American', N'---', N'Jermaine''s acting career started by accident when he took a friend to a local extra casting call. At first, Jermaine was not interested in the casting call, but a producer persuaded him to try out. After a few more extras casting calls and attending an acting workshop, the acting bug bit him. He contacted Shari Rhodes, a local New Mexico and Texas', 1, N'https://en.wikipedia.org/wiki/Jermaine_Crawford')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1033, N'Lorraine Toussaint
', N'Lorraine_Toussaint.jpg', N'April 4, 1960 (age 59 years)', N'Trinidad, Trinidad and Tobago', N'American, Trinidadian', N'	TV Guide Award,	Best Actress in a Drama Series, Viewers for Quality Television Award, National Bar Association Award', N'Lorraine Toussaint is a Trinidadian-American actress and producer. Toussaint began her career in theatre before supporting performances in films such as Breaking In, Hudson Hawk, and Dangerous Minds', 1, N'https://en.wikipedia.org/wiki/Lorraine_Toussaint')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1034, N'Marisa Tomei
', N'marisa-tomei.jpg', N'December 4, 1964 (age 54 years)', N' Brooklyn, New York, United States', N'American, Italian', N'Academy Awards, Best Supporting Actress , MTV Movie Awards,  Best Breakthrough Performance,Chicago Film Critics Association, MTV Movie Award for Best Kiss (shared with Christian Slater)
', N'Marisa Tomei is an American actress. She is the recipient of various accolades including an Academy Award and nominations for a BAFTA Award, two Golden Globe Awards, and three Screen Actors Guild Awards', 1, N'https://en.wikipedia.org/wiki/Marisa_Tomei')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1035, N'Tom Holland
', N'Tom_Holland.jpg', N'June 1, 1996 (age 23 years)', N' Kingston upon Thames, United Kingdom', N'English, 
British', N'BAFTA Rising Star Award 2017, Teen Choice Award for Choice Summer Movie Star: Male, Empire Award for Best Male Newcomer
', N'Thomas Stanley Holland is an English actor and dancer. He is best known for playing Spider-Man in the Marvel Cinematic Universe. He has starred or co-starred as the character in five films: Captain America: Civil War, Spider-Man: Homecoming, Avengers: Infinity War, Avengers: Endgame, and Spider-Man: Far From Home', 1, N'https://en.wikipedia.org/wiki/Tom_Holland_(actor)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1036, N'Zendaya', N'zendaya-lead.jpg', N'September 1, 1996 (age 22 years)', N' Oakland, California, United States', N'American', N'Radio Disney Music Award for Best Style 2014, Teen Choice Award for Candie''s Choice Style Icon 2014, 
Kids'' Choice Award for Favorite Female TV Star 2019', N'Zendaya Maree Stoermer Coleman is an American actress and singer. She began her career as a child model and backup dancer, before gaining prominence for her role as Rocky Blue on the Disney Channel sitcom Shake It Up', 1, N'https://en.wikipedia.org/wiki/Zendaya')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1037, N'Jake Gyllenhaal', N'jake_Gyllenhaal.jpg', N'December 19, 1980 (age 38 years)', N'Los Angeles, California, United States', N'American', N'2017 Nominee BAFTA Film Award Best Leading Actor,
2006 Winner BAFTA Film Award Best Performance Actor', N'Jacob Benjamin Gyllenhaal is an American actor. Born into the Gyllenhaal family, he is the son of director Stephen Gyllenhaal and screenwriter Naomi Foner. He began acting as a child, making his acting debut in City Slickers, followed by roles in his father''s films A Dangerous Woman and Homegrown', 1, N'https://en.wikipedia.org/wiki/Jake_Gyllenhaal')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1038, N'Avan Jogia
', N'avan_jogia.jpg', N'February 9, 1992 (age 27 years)', N'Killarney, Vancouver, Canada', N'British, Canadian', N'2014 Teen Choice Award Choice TV Actor: DramaTwisted (2013),
2013 Teen Choice Award	Choice Summer TV Star: Male', N'Avan Tudor Jogia is a Canadian-British actor, activist and director. He is known for his roles as Ben Stark in Syfy show Caprica, Beck Oliver in the Nickelodeon sitcom Victorious, and Danny Desai in the ABC Family drama Twisted', 1, N'https://en.wikipedia.org/wiki/Avan_Jogia')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1039, N'Method Man
', N'method-man-may-2018-billboard-1548.jpg', N'March 2, 1971 (age 48 years)', N' Hempstead, New York, United States', N'American', N'Best Rap Performance By A Duo Or Group', N'Clifford M. Smith Jr., better known by his stage name Method Man, is an American rapper, record producer and actor. He is known as a member of the East Coast hip hop collective Wu-Tang Clan. He is also one half of the hip hop duo Method Man & Redman. He took his stage name from the 1979 film Method Man', 1, N'https://en.wikipedia.org/wiki/Method_Man')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1040, N'Regina Hall
', N'regina-hall-quick-talk-web-2.jpg', N'December 12, 1970 (age 48 years)', N'Washington, D.C., United States', N'American ', N'New York Film Critics Circle Award for Best Actress', N'Regina Lee Hall is an American actress and comedian. She is best known for her multiple leading roles, most recently in Girls Trip, Little and Shaft. Hall, who was an English major in college and studied journalism in graduate school, envisioned a career as a journalist, but ventured into acting in her late twenties', 1, N'https://en.wikipedia.org/wiki/Regina_Hall')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1041, N'Richard Roundtree
', N'Richard-Roundtree-attends-What-Men-Want-premiere-in-Los-Angeles_10.jpg', N' July 9, 1942 (age 77 years)', N' New Rochelle, New York, United States', N'American ', N'MTV Lifetime Achievement Award', N'Richard Roundtree is an American actor and former model. Roundtree is noted as being "the first black action hero" for his portrayal of private detective John Shaft in the 1971 film Shaft, and its four sequels, released between 1972 and 2019', 1, N'https://en.wikipedia.org/wiki/Richard_Roundtree')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1042, N'Asher Angel
', N'asher-2019-819x1024.jpg', N'September 6, 2002 (age 16 years)', N' Phoenix, Arizona, United States', N'American ', N'---', N'Asher Dov Angel is an American actor. He began his career as a child actor in the 2008 film Jolene, starring Jessica Chastain. He is known for his role as Jonah Beck in the 2017 Disney Channel series Andi Mack. In 2019, Angel portrays Billy Batson in the DC Extended Universe film Shazam!', 1, N'https://en.wikipedia.org/wiki/Asher_Angel')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1043, N'Djimon Hounsou
', N'Djimo_Hounsou.jpg', N'April 24, 1964 (age 55 years)', N'Cotonou, Benin', N'American, Beninois', N'NAACP Image Award for Outstanding Supporting Actor in a Motion Picture 2007 · Blood Diamond, Independent Spirit Award for Best Supporting Male 2004 · In America,
National Board of Review Award for Best Supporting Actor 2006 · Blood Diamond', N'Djimon Gaston Hounsou is a Beninese American actor and model. Hounsou began his career appearing in music videos. He made his film debut in the Sandra Bernhard film Without You I''m Nothing and gained widespread recognition for his role as Cinqué in the Steven Spielberg film Amistad', 1, N'https://en.wikipedia.org/wiki/Djimon_Hounsou')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1044, N'Jack Dylan Grazer
', N'Jack_Dylan_Grazer.jpg', N'September 3, 2003 (age 15 years)', N' Los Angeles, California, United States', N'American', N'2017 Fright Meter Awards, Best Supporting Actor, 
2018 MTV Movie & TV Awards,	Best On-Screen Team', N'Jack Dylan Grazer is an American actor. He played the part of Eddie Kaspbrak in the feature film adaptation of Stephen King''s It, and will reprise his role the 2019 sequel. He also starred on the CBS series Me, Myself, and I, and portrayed Freddy Freeman in the 2019 DC Comics film Shazam!', 1, N'https://en.wikipedia.org/wiki/Jack_Dylan_Grazer')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1045, N'Mark Strong
', N'mark-strong.jpg', N'August 5, 1963 (age 55 years)', N'London, United Kingdom', N'British
', N'2004 British Academy Television Award for Best Actor, 
2008 London Film Critics Circle Award for Best British Supporting Actor	Body of Lies, 
2009 MTV Movie Award for Best Fight', N'Mark Strong is an English actor. He is best known for his roles in films, such as Prince Septimus in Stardust, Lord Henry Blackwood in Sherlock Holmes, Frank D''Amico in Kick-Ass, Jim Prideaux in Tinker', 1, N'https://en.wikipedia.org/wiki/Mark_Strong')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1046, N'Zachary Levi
', N'zachary-levi-1555949530.jpg', N'September 29, 1980 (age 38 years)', N' Lake Charles, Louisiana, United States', N'American', N'Teen Choice Award for Choice TV Actor: Action, Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Comedy Series
2019 · The Marvelous Mrs. Maisel', N'Zachary Levi Pugh is an American actor and singer. He received critical acclaim for starring as Chuck Bartowski in the series Chuck, and as the title character in Shazam!, as a part of the DC Extended Universe', 1, N'https://en.wikipedia.org/wiki/Zachary_Levi')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1047, N'Charlie Hunnam
', N'Charlie_Hunnam_at_Berlinale_2017.jpeg', N'April 10, 1980 (age 39 years)', N'Newcastle upon Tyne, United Kingdom', N'British', N'National Board of Review, Huading Awards, International Online Cinema Awards, CinemaCon Award', N'Charles Matthew Hunnam is an English actor and model. He is known for his roles as Jackson "Jax" Teller in the FX drama series Sons of Anarchy for which he was twice nominated for the Critics'' Choice', 1, N'https://en.wikipedia.org/wiki/Charlie_Hunnam')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1048, N'Olja Hrustic
', N'Olja_Hrustic.jpg', N'May 3, 1992 (age 27 years)', N'Killarney, Vancouver, Canada', N'British
', N'---', N'Olja Hrustic is an actress originally from Bosnia and Herzegovina. After leaving her war torn country in the early Nineties, she moved to Serbia for a few years before settling in New York City. She currently spends most of her time in Los Angeles. Olja studied with renowned acting teacher William Esper for over two years and has extensively', 1, N'https://www.imdb.com/name/nm2055475/')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1049, N'Rami Malek
', N'Rami-Malek-Getty-3.jpg', N'May 12, 1981 (age 38 years)', N' Los Angeles, California, United States', N'American', N'Academy Award for Best Actor
2019 · Bohemian Rhapsody, 
Primetime Emmy Award for Outstanding Lead Actor in a Drama Series
2016 · Mr. Robot, 
Critics'' Choice Television Award for Best Actor in a Drama Series
2016 · Mr. Robot, 
Golden Globe Award for Best Actor – Motion Picture – Drama
2019 · Bohemian Rhapsody, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role
2019 · Bohemian Rhapsody, 
BAFTA Award for Best Actor in a Leading Role
2019 · Bohemian Rhapsody, 
AACTA International Award for Best Actor
2019 · Bohemian Rhapsody, 
Satellite Award for Best Actor – Motion Picture Musical or Comedy
2019 · Bohemian Rhapsody', N'Rami Said Malek is an American actor and producer. His breakthrough role was as computer hacker Elliot Alderson in the USA Network television series Mr. Robot, for which he received several accolades, including the 2016 Primetime Emmy Award for Outstanding Lead Actor in a Drama Series', 1, N'https://en.wikipedia.org/wiki/Rami_Malek')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1050, N'Tommy Flanagan
', N'tommy-flanagan.jpeg', N'July 3, 1965 (age 54 years)', N'Easterhouse, Glasgow, United Kingdom', N'Scottish, British', N'Best Ensemble Acting
Dead Dogs Lie (2001) ', N'Tommy Flanagan is a Scottish actor. He is best known for his role as Filip "Chibs" Telford in the FX crime drama television series Sons of Anarchy', 1, N'https://en.wikipedia.org/wiki/Tommy_Flanagan_(actor)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1051, N'Yorick van Wageningen
', N'Yorick_van_Wageningen.jpg', N'April 16, 1964 (age 55 years)', N'Baarn, Netherlands', N'Dutch
', N'Best Dutch Actor, Best Actor 	
The Resurrection of a Bastard', N'Yorick van Wageningen is a Dutch actor who has performed in Dutch and American films, including The Chronicles of Riddick and the 2011 remake of The Girl with the Dragon Tattoo', 1, N'https://en.wikipedia.org/wiki/Yorick_van_Wageningen')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1052, N'Beyoncé
', N'Beyonce-Knowles-Hairstyles-Voluminous-Long-Hair.jpg', N'born September 4, 1981 (age 38 years)', N'Houston, Texas', N'American', N'American Music Awards, Antville Music Video Awards, ARIA Music Awards, ASCAP Awards, ASCAP Latin Awards, ASCAP Pop Music Awards, 
ASCAP PRS Awards, ASCAP Rhythm & Soul Music Awards', N'Beyoncé Giselle Knowles-Carter is an American singer, actress, songwriter, record producer, director, model, dancer, fashion designer and businesswoman. Born and raised in Houston, Texas, Beyoncé performed in various singing and dancing competitions as a child', 1, N'https://en.wikipedia.org/wiki/Beyonc%C3%A9')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1053, N'Donald Glover
', N'Donald_Glover.jpg', N'September 25, 1983 (age 35 years)', N' Edwards Air Force Base, California, United States', N'American', N'Emmy Awards,
Golden Globe Awards,
Grammy Awards,
Guild awards,
Directors Guild Awards,
Producers Guild Awards,
Screen Actors Guild Awards,
Writers Guild Awards', N'Donald McKinley Glover Jr. is an American actor, comedian, writer, producer, director, musician, and DJ. He performs music under the stage name Childish Gambino and as a DJ under the name mcDJ', 1, N'https://en.wikipedia.org/wiki/Donald_Glover')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1054, N'Chiwetel Ejiofor
', N'Chiwetel_Ejiofor.jpg', N'July 10, 1977 (age 42 years)', N' Forest Gate, London, United Kingdom', N'British
', N'BAFTA Award for Best Actor in a Leading Role
2014 · 12 Years a Slave, 
Laurence Olivier Award for Best Actor
2008 · Othello, 
British Independent Film Award for Best Actor
2003 · Dirty Pretty Things, 
Independent Spirit Award for Best Supporting Male
2008 · Talk To Me, 
Gotham Independent Film Award for Best Ensemble Performance
2007 · Talk To Me, 
AACTA International Award for Best Actor
2014 · 12 Years a Slave, 
British Independent Film Award – The Richard Harris Award 2015, 
BET Award for Best Actor
2014 · 12 Years a Slave, 
Jack Tinker Award for Most Promising Newcomer
2001 · Blue/Orange, 
John and Wendy Trewin Award for Best Shakespearean Performance
2008 · Othello, 
Nigeria Entertainment Award for Best Actor (Nigeria in Hollywood)
2015', N'Chiwetel Umeadi Ejiofor CBE is a British actor and director. After enrolling at the National Youth Theatre in 1995 and attending the London Academy of Music and Dramatic Art, at age 19 and three months into his course, Ejiofor was cast by Steven Spielberg to play a supporting role in the film Amistad as James Covey', 1, N'https://en.wikipedia.org/wiki/Chiwetel_Ejiofor')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1055, N'Billy Eichner
', N'eichner-romcom.jpg', N'September 18, 1978 (age 40 years)', N' New York, New York, United States', N'American', N'Daytime Emmy Award for Outstanding Game Show Host
2013 · Billy on the Street,
Shorty Award for Best in Comedy
2018,
Primetime Emmy Award for Outstanding Short-Format Live-Action Entertainment Program
2015 · Billy on the Street', N'Billy Eichner is an American comedian, actor, and producer. He is the star, executive producer, and creator of Funny Or Die''s Billy on the Street, a comedy game show that airs on truTV. Eichner was nominated for a Daytime Emmy Award for "Outstanding Game Show Host" in 2013', 1, N'https://en.wikipedia.org/wiki/Billy_Eichner')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1056, N'Alfre Woodard
', N'Woodard-Makers-Hollywood-02.jpg', N'November 8, 1952 (age 66 years)', N'Tulsa, Oklahoma, United States', N'American', N'Primetime Emmy Award for Outstanding Lead Actress in a Limited Series or a Movie
1997 · Miss Evers'' Boys, 
Primetime Emmy Award for Outstanding Supporting Actress in a Drama Series
1984 · Hill Street Blues, 
Primetime Emmy Award for Outstanding Guest Actress in a Drama Series
2003, 1987 · The Practice, L.A. Law, 
Primetime Emmy Award for Outstanding Guest Actor in a Drama Series
1988 · St. Elsewhere, 
Golden Globe Award for Best Performance by an Actress In A Mini-series or Motion Picture Made for Television
1998 · Miss Evers'' Boys, 
Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Comedy Series
2006 · Desperate Housewives', N'Alfre Woodard is an American actress, producer, and political activist. Woodard has been named one of the most versatile and accomplished actors of her generation', 1, N'https://en.wikipedia.org/wiki/Alfre_Woodard')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1057, N'Bob Gunton
', N'Bob_Gunton.jpg', N'November 15, 1945 (age 73 years)', N' Santa Monica, California, United States', N'American
', N'Drama Desk Award for Outstanding Featured Actor in a Musical, Obie Award for Performance', N'Robert Patrick Gunton Jr. is an American actor. Gunton is known for playing strict, authoritarian characters, including Warden Samuel Norton in the 1994 prison film The Shawshank Redemption, Chief George', 1, N'https://en.wikipedia.org/wiki/Bob_Gunton')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1058, N'Gil Bellows
', N'Gil_Bellows.jpg', N'June 28, 1967 (age 52 years)', N'Vancouver, Canada', N'Canadian', N'Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Comedy Series', N'Gil Bellows is a Canadian film and television actor, screenwriter and director. He is best known for the roles of Tommy Williams in The Shawshank Redemption, Billy Thomas in the television series Ally McBeal, and as CIA agent Matt Callan in the television series The Agency', 1, N'https://en.wikipedia.org/wiki/Gil_Bellows')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1059, N'Morgan Freeman
', N'Morgan_Freeman.jpg', N'June 1, 1937 (age 82 years)', N'Memphis, Tennessee, United States', N'American', N'Academy Award for Best Actor in a Supporting Role
2005 · Million Dollar Baby,
AFI Life Achievement Award
2011, 
Screen Actors Guild Life Achievement Award
2018, 
Golden Globe Cecil B.DeMille Award
2012, 
Golden Globe Award for Best Actor – Motion Picture Musical or Comedy
1990 · Driving Miss Daisy, 
Kennedy Center Honors
2008, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role
2005 · Million Dollar Baby, 
NAACP Image Award for Outstanding Supporting Actor in a Motion Picture
2005, 2004, 1999, ... · Million Dollar Baby, Bruce Almighty, Deep Impact, ...
National Board of Review Award for Best Actor
2009, 1989 · Invictus, Driving Miss Daisy', N'Morgan Freeman is an American actor, film director, and film narrator. Freeman won an Academy Award in 2005 for Best Supporting Actor with Million Dollar Baby, and he has received Oscar nominations for his performances in Street Smart, Driving Miss Daisy, The Shawshank Redemption, and Invictus', 1, N'https://en.wikipedia.org/wiki/Morgan_Freeman')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1060, N'Tim Robbins
', N'tim_robbins.jpg', N'October 16, 1958 (age 60 years)', N' West Covina, California, United States', N'American
', N'Academy Award for Best Actor in a Supporting Role
2004 · Mystic River,
Golden Globe Award for Best Supporting Actor – Motion Picture
2004 · Mystic River,
Golden Globe Award for Best Actor – Motion Picture Musical or Comedy
1993 · The Player,
Cannes Best Actor Award
1992 · The Player,
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role
2004 · Mystic River,
Critics'' Choice Movie Award for Best Supporting Actor
2004 · Mystic River,
Gotham Independent Film Tribute Award', N'Timothy Francis Robbins is an American actor, screenwriter, director, producer, and musician. He is known for his portrayal of Andy Dufresne in the prison drama film The Shawshank Redemption', 1, N'https://en.wikipedia.org/wiki/Tim_Robbins')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1061, N'William Sadler
', N'william_sadler_2.jpg', N'April 13, 1950 (age 69 years)', N'Buffalo, New York, United States', N'American', N'Obie Award for Performance
', N'William Thomas Sadler is an American film and television actor. His television and motion picture roles have included Chesty Puller in The Pacific, Luther Sloan in Star Trek: Deep Space Nine, Sheriff ', 1, N'https://en.wikipedia.org/wiki/William_Sadler_(actor)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1062, N' Al Pacino', N'al-pacino-tiff-porttraits-vf.jpg', N'April 25, 1940 (age 79 years)', N' East Harlem, New York, United States', N'American', N'Major awards,
Academy Awards,
British Academy of Film and Television Arts Awards,
Directors Guild Awards,
Emmy Awards (Primetime),
Golden Globe Awards,
Grammy Awards,
Screen Actors Guild Awards,
Tony Awards,
American Comedy Awards,
American Movie Awards,
Blockbuster Entertainment Awards,
Boston Society of Film Critics Awards,
Chicago Film Critics Association Awards,
David di Donatello Awards,
Drama Desk Awards,
Golden Raspberry Awards', N'Alfredo James Pacino, known professionally as Al Pacino, is an American actor and filmmaker who has had a career spanning more than five decades', 1, N'https://en.wikipedia.org/wiki/Al_Pacino')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1063, N'Diane Keaton
', N'diane_keaton_afi_h.jpg', N'January 5, 1946 (age 73 years)', N' Los Angeles, California, United States', N'American', N'1991: The Hasty Pudding Woman of the Year award from Harvard''s Hasty Pudding Theatricals – given to performers who give a lasting and impressive contribution to the world of entertainment, 
1995: New York Women in Film & Television honored her with the Muse Award along with Angela Bassett, Cokie Roberts, Gena Rowlands and Thelma Schoonmaker, 
1996: Golden Apple Award—the Female Star of the Year award shared with her First Wives Club co-stars Goldie Hawn and Bette Midler, 
1997: Crystal Award at the Women in Film Crystal + Lucy Awards—honors outstanding women, who through their endurance and excellence in their work, have helped to expand the role of women within the entertainment industry.[citation needed]
1998: Elle Women in Hollywood Awards—the Icon Award, along with Sigourney Weaver, Lucy Fisher and Gillian Armstrong, 
2004: Inducted into the OFTA Film Hall of Fame for Acting by the Online Film & Television Association, 
2004: AFI Star Award during the US Comedy Arts Festival, 
2005: Lifetime Achievement award by the Hollywood Film Awards', N'Diane Keaton is an American actress, director, producer, photographer, real estate developer, author, and singer. She has received various accolades, including an Academy Award, a BAFTA Award, two Golden Globe Awards, and the AFI Life Achievement Award', 1, N'https://en.wikipedia.org/wiki/Diane_Keaton')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1064, N'James Caan
', N'james_caan.jpg', N'March 26, 1940 (age 79 years)', N' The Bronx, New York, United States', N'American', N'TV Land Blockbuster Movie of the Week Award', N'James Edmund Caan is an American actor. After early roles in The Glory Guys, for which he received a Golden Globe nomination, El Dorado, and The Rain People, he came to prominence in the 1970s with', 1, N'https://en.wikipedia.org/wiki/James_Caan')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1065, N'Marlon Brando', N'Marlon_Brandon.jpg', N'April 3, 1924', N'Omaha, Nebraska, United States', N'American
', N'Academy Award for Best Actor,
1973, 1955 · The Godfather, On the Waterfront,
Golden Globe Award for Best Actor – Motion Picture – Drama
1973, 1955 · The Godfather, On the Waterfront,
Cannes Best Actor Award
1952 · Viva Zapata!,
New York Film Critics Circle Award for Best Actor
1973 · Last Tango in Paris,
BAFTA Award for Best Foreign Actor
1955, 1954, 1953 · On the Waterfront, Julius Caesar, Viva Zapata!,
National Society of Film Critics Award for Best Actor
1974 · Last Tango in Paris,
Golden Globe Henrietta Award for World Film Favorites
1974, 1973, 1956,
David di Donatello for Best Foreign Actor
1958 · Sayonara,
Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or a Movie
1979 · Roots: The Next Generations,
Jussi Award for Best Foreign Filmmaker
1973', N'Marlon Brando Jr. was an American actor and film director. With a career spanning 60 years, he is well-regarded for his cultural influence on 20th-century film. Brando''s Academy Award-winning performances include that of Terry Malloy in On the Waterfront and Don Vito Corleone in The Godfather', 1, N'https://en.wikipedia.org/wiki/Marlon_Brando')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1066, N'Robert Duvall
', N'Robert_Duvall.jpg', N'January 5, 1931 (age 88 years)', N' San Diego, California, United States', N'American
', N'Academy Awards,
British Academy of Film and Television Arts Awards,
Emmy Awards (Primetime),
Golden Globe Awards,
Screen Actors Guild Awards,
American Movie Awards,
Blockbuster Entertainment Awards,
Cable ACE Award,
Chicago Film Critics Association,
Critics'' Choice Awards', N'Robert Selden Duvall is an American actor and filmmaker whose career spans more than six decades. He has been nominated for seven Academy Awards and seven Golden Globe Awards, and has won a BAFTA, a Screen Actors Guild Award, and an Emmy Award. He received the National Medal of Arts in 2005', 1, N'https://en.wikipedia.org/wiki/Robert_Duvall')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1067, N'Robert De Niro
', N'Robert_De_Niro_3_by_David_Shankbone.jpg', N'August 17, 1943 (age 75 years)', N'Greenwich Village, New York, United States', N'American, Italian', N'1975 The Godfather Part II   Best Supporting Actor, 
1977 Taxi Driver Best Actor,
1979 The Deer Hunter Best Actor, 
1981 Raging Bull Best Actor,
1991 Awakenings Best Actor, 
1992 Cape Fear Best Actor', N'Robert Anthony De Niro Jr. is an American-Italian actor, producer, and director. He is a recipient of numerous accolades, including two Academy Awards, a Golden Globe Award, the Cecil B DeMille Award', 1, N'https://en.wikipedia.org/wiki/Robert_De_Niro')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1068, N'Aaron Eckhart
', N'Aaron-Eckhart-1.jpg', N'March 12, 1968 (age 51 years)', N' Cupertino, California, United States', N'American', N'Independent Spirit Award for Best Debut Performance
1998 · In the Company of Men, 
People''s Choice Award for Favorite Cast
2009 · The Dark Knight, 
Satellite Special Achievement Award for Outstanding New Talent
1998 · In the Company of Men', N'Aaron Edward Eckhart is an American actor. Born in Cupertino, California, Eckhart moved to England at age 13, when his father relocated the family. Several years later, he began his acting career by performing in school plays, before moving to Australia for his high school senior year', 1, N'https://en.wikipedia.org/wiki/Aaron_Eckhart')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1069, N'Christian Bale
', N'christian148582319.jpg', N'January 30, 1974 (age 45 years)', N'Haverfordwest, United Kingdom', N'British', N'Academy Award for Best Actor in a Supporting Role
2011 · The Fighter, 
Golden Globe Award for Best Supporting Actor – Motion Picture
2011 · The Fighter, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2014 · American Hustle, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role
2011 · The Fighter, 
Critics'' Choice Movie Award for Best Supporting Actor
2011 · The Fighter, 
Critics'' Choice Movie Award for Best Actor in a Comedy
2019, 2016 · Vice, The Big Short, 
Critics'' Choice Movie Award for Best Acting Ensemble
2011 · The Fighter, 
MTV Movie Award for Best Hero
2006 · Batman Begins, 
Satellite Award for Best Supporting Actor – Motion Picture
2016, 2010 · The Big Short, The Fighter, 
People''s Choice Award for Favorite On-Screen Chemistry
2009 · The Dark Knight, 
People''s Choice Award for Favorite Superhero
2009 · The Dark Knight, 
National Board of Review Award for Best Supporting Actor
2010 · The Fighter', N'Christian Charles Philip Bale is an English-American actor who is known for his intense method acting style, often transforming his body drastically for his roles. Bale is the recipient of many awards, including an Academy Award and two Golden Globes, and was featured in the Time 100 list of 2011', 1, N'https://en.wikipedia.org/wiki/Christian_Bale')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1070, N'Heath Ledger
', N'Health_Ledger.jpg', N'April 4, 1979', N'Perth, Australia', N'Australian', N'Academy Award for Best Actor in a Supporting Role
2009 · The Dark Knight, 
MTV Movie Award for Best Villain
2009 · The Dark Knight, 
MTV Movie Award for Best Kiss
2006 · Brokeback Mountain,
Golden Globe Award for Best Supporting Actor – Motion Picture
2009 · The Dark Knight, 
BAFTA Award for Best Actor in a Supporting Role
2009 · The Dark Knight, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role
2009 · The Dark Knight, 
New York Film Critics Circle Award for Best Actor
2005 · Brokeback Mountain,
People''s Choice Award for Favorite On-Screen Chemistry
2009 · The Dark Knight, 
Critics'' Choice Movie Award for Best Supporting Actor
2009 · The Dark Knight, 
Australian Film Institute International Award for Best Actor
2008, 2006 · The Dark Knight, Brokeback Mountain,
Independent Spirit Robert Altman Award
2008 · I''m Not There', N'Heath Andrew Ledger was an Australian actor and music video director. After performing roles in several Australian television and film productions during the 1990s, Ledger left for the United States in 1998 to further develop his film career', 1, N'https://en.wikipedia.org/wiki/Heath_Ledger')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1071, N'Michael Caine
', N'michael-caine.jpg', N'March 14, 1933 (age 86 years)', N'Rotherhithe, United Kingdom', N'English, British', N'Academy Awards, 
BAFTA Awards, 
Golden Globe Awards, 
Screen Actors Guild Awards,
Bangkok International Film Festival Awards,
British Independent Film Awards, 
Central Ohio Film Critics Association Awards,
Chicago Film Critics Association Awards,
Critics'' Choice Movie Awards, 
Detroit Film Critics Society Awards, 
David di Donatello Awards,
European Film Awards,
Empire Awards', N'Sir Michael Caine, CBE is an English actor, producer and author. He has appeared in more than 130 films in a career spanning 70 years and is considered a British film icon. Known for his cockney accent, Caine was born in South London', 1, N'https://en.wikipedia.org/wiki/Michael_Caine')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1072, N'Henry Fonda
', N'henry_fonda.jpg', N'May 16, 1905', N'Grand Island, Nebraska, United States', N'American
', N'Academy Award for Best Actor
1982 · On Golden Pond, 
Academy Honorary Award
1981, 
AFI Life Achievement Award
1978, 
Golden Globe Award for Best Actor – Motion Picture – Drama
1982 · On Golden Pond, 
Kennedy Center Honors
1979, 
Golden Globe Cecil B. DeMille Award
1980, 
Tony Award for Best Lead Actor in a Play
1948 · Mister Roberts, 
BAFTA Award for Best Foreign Acto', N'Henry Jaynes Fonda was an American film and stage actor with a career spanning five decades. Fonda made his mark early as a Broadway actor. He also appeared in 1938 in plays performed in White Plains, New York, with Joan Tompkins', 1, N'https://en.wikipedia.org/wiki/Henry_Fonda')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1073, N'Jack Warden
', N'Jack_Warden.jpg', N'September 18, 1920', N'Newark, New Jersey, United States', N'American', N'Outstanding Performance by an Actor in a Supporting Role, 
1985 Outstanding Lead Actor in a Comedy Series	Crazy Like a Fox, 
1976 Academy Award,	Best Actor in a Supporting Role	Shampoo, 
1979 Best Actor in a Supporting Role, 
1976 BAFTA Award Best Supporting Actor', N'Jack Warden was an American character actor of film and television. He was twice nominated for an Academy Award for Best Supporting Actor—for Shampoo, and Heaven Can Wait. He received a BAFTA nomination for the former movie, and won an Emmy for his performance in Brian''s Song', 1, N'https://en.wikipedia.org/wiki/Jack_Warden')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1074, N'Joseph Sweeney
', N'Joseph_Sweeney.jpg', N'July 26, 1884', N'Philadelphia, Pennsylvania, United States', N'American', N'Joseph Sweeney (July 26, 1884 (other sources state 1882) – November 25, 1963) was an American actor who worked in stage productions, television and movies.', N'Joseph Sweeney was an American actor who worked in stage productions, television and movies. His most famous role was as the elderly Juror #9 in the 1957 film 12 Angry Men, the role he originated in a 1954 Westinghouse Studio One live teleplay of which the film was an adaptation', 1, N'https://en.wikipedia.org/wiki/Joseph_Sweeney_(actor)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1075, N'Lee J. Cobb
', N'Lee_J._Cobb_1960s.jpg', N'December 8, 1911', N'The Bronx, New York, United States', N'American
', N'Academy Award for Best Actor in a Supporting Role
1959, 1955 · The Brothers Karamazov, On the Waterfront, 
Golden Globe Award for Best Supporting Actor – Motion Picture
1964, 1958 · Come Blow Your Horn, 12 Angry Men, 
Primetime Emmy Award for Outstanding Single Performance By An Actor In A Leading Role
1967 · Death of a Salesman, 
Primetime Emmy Award for Outstanding Single Performance by an Actor (Lead or Support)
1960 · Playhouse 90, 
Primetime Emmy Award for Actor - Best Single Performance - Lead or Support
1958 · Studio One', N'Lee J. Cobb was an American actor. He is best known for his performances in On the Waterfront, 12 Angry Men, and The Exorcist. He also played the role of Willy Loman in the original Broadway production of Arthur Miller''s 1949 play Death of a Salesman under the direction of Elia Kazan', 1, N'https://en.wikipedia.org/wiki/Lee_J._Cobb')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1076, N'Martin Balsam
', N'Martin_Balsam.jpg', N'November 4, 1919', N'The Bronx, New York, United States', N'American
', N'Best Supporting Actor – The Carpetbaggers, 
Tony Awards
(1968) Best Actor in a Play – You Know I Can''t Hear You When the Water''s Running, 
Golden Globe Awards
(1974) Best Supporting Actor – Summer Wishes, Winter Dreams, 
BAFTA Awards
(1976) Best Supporting Actor – The Taking of Pelham One Two Three, 
(1977) Best Supporting Actor – All the President''s Men', N'Martin Henry Balsam was an American character actor. He is best known for a number of renowned film roles, including detective Milton Arbogast in Alfred Hitchcock''s Psycho, Arnold Burns in A Thousand', 1, N'https://en.wikipedia.org/wiki/Martin_Balsam')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1077, N'Ben Kingsley
', N'Ben_Kingsley_2012.jpg', N'December 31, 1943 (age 75 years)', N'Snainton, United Kingdom', N'English, British', N'1982 BAFTA Award for Best Actor in a Leading Role,
1982 Golden Globe Award for Best Actor – Motion Picture Drama, 
1982 Golden Globe Award for New Star of the Year in a Motion Picture, 
1985 Grammy Award for Best Spoken Word Album[39] "The Words of Gandhi", 
1991 Academy Award for Best Supporting Actor Bugsy, 
1991 Golden Globe Award for Best Supporting Actor – Motion Picture, 
1993 BAFTA Award for Best Actor in a Supporting Role Schindler''s List, 
2001 Academy Award for Best Supporting Actor Sexy Beast', N'Sir Ben Kingsley is an English actor with a career spanning over 50 years. He has won an Oscar, a Grammy, a BAFTA, two Golden Globes, and a Screen Actors Guild Award. Kingsley is best known for his starring role as Mohandas Gandhi in the 1982 film Gandhi, for which he won the Academy Award for Best Actor', 1, N'https://en.wikipedia.org/wiki/Ben_Kingsley')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1078, N'Caroline Goodall
', N'caroline_Gooddall.jpg', N'November 13, 1959 (age 59 years)', N'London, United Kingdom', N'British, Australian', N'Best Actress in a Lead Role
, Best Actress in a Leading Role in a Telefeature or Mini Series, Most Outstanding Actress', N'Caroline Cruice Goodall is an English actress and screenwriter. She was nominated for AFI Awards for her roles in the 1989 miniseries Cassidy, and the 1995 film Hotel Sorrento. Her other film appearances include Hook, Cliffhanger, Schindler''s List, Disclosure, White Squall, The Princess Diaries and The Dressmaker', 1, N'https://en.wikipedia.org/wiki/Caroline_Goodall')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1079, N'Embeth Davidtz
', N'Embeth-Davidtz.jpg', N'August 11, 1965 (age 53 years)', N'Lafayette, Indiana, United States', N'American, South African', N'Favorite Actress - Comedy
, 	Best Supporting Actress
Army of Darkness (1992) ', N'Embeth Jean Davidtz is an American actress. Her screen roles include movies such as Army of Darkness, Schindler''s List, Matilda, Junebug, Mansfield Park, Bicentennial Man, and Fracture, and the television series Californication and Mad Men', 1, N'https://en.wikipedia.org/wiki/Embeth_Davidtz')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1080, N'Liam Neeson
', N'Liam_Neeson.jpg', N'June 7, 1952 (age 67 years)', N'Ballymena, United Kingdom', N'American, British, Irish', N'Academy Awards,
Tony Awards,
BAFTA Awards,
Golden Globe Awards,
ALOS Awards,
Chicago Film Critics Association,
Critics'' Choice Television Awards,
Dallas–Fort Worth Film Critics Association,
Drama Desk Awards,
Evening Standard British Film Awards,
Independent Spirit Awards,
Irish Film and Television Academy', N'Liam John Neeson OBE is an actor from Northern Ireland. He has been nominated for a number of awards, including an Academy Award for Best Actor, a BAFTA Award for Best Actor in a Leading Role, and three Golden Globe Awards for Best Actor in a Motion Picture Drama', 1, N'https://en.wikipedia.org/wiki/Liam_Neeson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1081, N'Ralph Fiennes
', N'Ralph_Fiennes.jpg', N' December 22, 1962 (age 56 years)', N'Ipswich, United Kingdom', N'British, Serbian', N'Academy Awards, 
British Academy Film Awards, 
Golden Globe Awards, 
Screen Actors Guild Awards', N'Ralph Nathaniel Twisleton-Wykeham-Fiennes is an English actor, film producer, and director. A Shakespeare interpreter, he first achieved success onstage at the Royal National Theatre', 1, N'https://en.wikipedia.org/wiki/Ralph_Fiennes')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1082, N'Elijah Wood
', N'Elijah_Wood.jpg', N'January 28, 1981 (age 38 years)', N' Cedar Rapids, Iowa, United States', N'American', N'Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2004 · The Lord of the Rings: The Return of the King, 
Critics'' Choice Movie Award for Best Acting Ensemble
2004 · The Lord of the Rings: The Return of the King, 
MTV Movie Award for Best On-Screen Duo
2003 · The Lord of the Rings: The Two Towers, 
Young Hollywood Award for Hottest Coolest Young Veteran - Male
2002, 
British Independent Film Award for Discovery Award
2016 · The Greasy Strangler', N'Elijah Jordan Wood is an American actor, film producer, and DJ. He portrayed Frodo Baggins in the Lord of the Rings film trilogy and in The Hobbit: An Unexpected Journey. Wood made his film debut in 1989 with a small part in Back to the Future Part II', 1, N'https://en.wikipedia.org/wiki/Elijah_Wood')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1083, N'Hugo Weaving
', N'Hugo_Weaving.jpg', N'April 4, 1960 (age 59 years)', N'Ibadan, Nigeria', N'Nigerian, 
English, 
British, 
Australian', N'1991 – Australian Film Institute Awards, Best Actor in a Lead Role: Proof, 
1998 – Australian Film Institute Awards, Best Actor in a Lead Role: The Interview, 
2005 – Australian Film Institute Awards, Best Actor in a Lead Role: Little Fish, 
2007 – The Constellation Awards, Best Male Performance in a 2006 Science Fiction Film, TV Movie, or Miniseries: V for Vendetta, 
2011 – Sydney Theatre Award, Best Supporting Actor:Sydney Theatre Company''s Uncle Vanya', N'Hugo Wallace Weaving is an Australian film and stage actor. He is best known for playing Agent Smith in The Matrix trilogy, Elrond in The Lord of the Rings and The Hobbit film trilogies, V in V for Vendetta, Red Skull in Captain America: The First Avenger and Tom Doss in Hacksaw Ridge', 1, N'https://en.wikipedia.org/wiki/Hugo_Weaving')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1084, N'Liv Tyler
', N'Livtyler.jpg', N'July 1, 1977 (age 42 years)', N'New York, New York, United States', N'American', N'Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture, 
The Lord of the Rings: The Return of the King', N'Liv Rundgren Tyler is an American actress, producer and former model. She portrayed Arwen Undómiel in the Lord of the Rings film trilogy. Tyler began a career in modeling at age 14. She later decided to focus on acting, and made her film debut in Silent Fall', 1, N'https://en.wikipedia.org/wiki/Liv_Tyler')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1085, N'Orlando Bloom
', N'Orlando_Bloom.jpg', N'January 13, 1977 (age 42 years)', N'Canterbury, United Kingdom', N'British
', N'Empire Awards, MTV Movie Awards, Saturn Awards, Screen Actors Guild Awards, Teen Choice Awards, Golden Raspberry Awards, Britannia Awards', N'Orlando Jonathan Blanchard Bloom is an English actor. After making his breakthrough as Legolas in The Lord of the Rings film series, he rose to fame by further appearing in epic fantasy, historical epic, and fantasy adventure films. He later reprised his role as Legolas in The Hobbit film series', 1, N'https://en.wikipedia.org/wiki/Orlando_Bloom')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1086, N'Viggo Mortensen', N'Viggo_Mortensen.jpg', N'October 20, 1958 (age 60 years)', N' Manhattan, New York, United States', N'American, 
Danish', N'Academy Awards, 
BAFTA Awards, 
Golden Globe Awards, 
creen Actors Guild Awards, 
Academy of Canadian Cinema and Television, 
British Independent Film Awards, 
Canadian Screen Awards, 
Chicago Film Critics Association, 
Critics'' Choice Movie Awards, 
Empire Awards, 
Fangoria Chainsaw Awards', N'Viggo Peter Mortensen Jr. is a Danish-American actor, author, musician, photographer, poet, and painter. Born in New York to a Danish father and American mother, he was a resident of Venezuela and Argentina during his childhood', 1, N'https://en.wikipedia.org/wiki/Viggo_Mortensen')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1087, N'Bruce Willis
', N'bruce-willis-medium.jpg', N'March 19, 1955 (age 64 years)', N'Idar-Oberstein, Germany', N'American', N'American Comedy Awards, 
Awards Circuit Community Awards, 
Blockbuster Entertainment Awards, 
Boston Society of Film Critics Awards, 
CableACE Award, 
Central Ohio Film Critics Association Awards, 
Chlotrudis Awards, 
Critics'' Choice Movie Awards, 
Gold Derby Awards, 
Golden Globe Awards, 
Golden Raspberry Awards, 
Gotham Awards, 
Independent Spirit Awards', N'Walter Bruce Willis is an American actor, producer, and singer. Born to a German mother and American father in Idar-Oberstein, Germany, he moved to the United States with his family in 1957. His career began on the Off-Broadway stage in the 1970s', 1, N'https://en.wikipedia.org/wiki/Bruce_Willis')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1088, N'Harvey Keitel
', N'harvey_keitel.jpg', N'May 13, 1939 (age 80 years)', N'Brooklyn, New York, United States', N'American
', N'Independent Spirit Award for Best Male Lead
1993 · Bad Lieutenant, 
National Society of Film Critics Award for Best Supporting Actor
1992 · Thelma & Louise, Bugsy, Mortal Thoughts, 
David di Donatello for Best Foreign Actor
1996 · Smoke, 
AACTA Award for Best Lead Actor
1993 · The Piano, 
Locarno International Film Festival: Lifetime Achievement Award
2016, 
Golden Orange Lifetime Achievement Award
2016, 
Gotham Independent Film Tribute Award
1993', N'Harvey Keitel is an American actor and producer. He has starred in films such as Mean Streets, Taxi Driver, The Duellists, Bugsy, Thelma & Louise, Reservoir Dogs, Sister Act, The Piano, Pulp Fiction, From Dusk till Dawn, Cop Land, Red Dragon, The Grand Budapest Hotel, and Isle of Dogs', 1, N'https://en.wikipedia.org/wiki/Harvey_Keitel')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1089, N'John Travolta
', N'John_Travolta.jpg', N' February 18, 1954 (age 65 years)', N' Englewood, New Jersey, United States', N'American', N'Academy Awards, 
BAFTA Awards, 
Golden Globe Awards, 
Primetime Emmy Award, 
Screen Actors Guild Awards, 
American Comedy Awards, 
Blockbuster Entertainment Awards, 
Chicago Film Critics Association, 
Critics'' Choice Movie Awards', N'John Joseph Travolta is an American actor, film producer, dancer, and singer. Travolta rose to fame during the 1970s, appearing on the television series Welcome Back, Kotter and starring in the box office successes Saturday Night Fever and Grease', 1, N'https://en.wikipedia.org/wiki/John_Travolta')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1090, N'Uma Thurman
', N'uma_thurman.jpg', N'April 29, 1970 (age 49 years)', N'Boston, Massachusetts, United States', N'American', N'Cognac Festival du Film Policier, Razzie Award, Academy Award, BAFTA Award, Golden Globe Award, MTV Movie & TV Awards	', N'Uma Karuna Thurman is an American actress and model. She has performed in a variety of films, ranging from romantic comedies and dramas to science fiction and action movies. Following her appearances on the December 1985 and May 1986 covers of British Vogue, Thurman starred in Dangerous Liaisons', 1, N'https://en.wikipedia.org/wiki/Uma_Thurman')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1091, N'Aldo Giuffrè
', N'AldoGiuffre.jpg', N'April 10, 1924', N'Naples, Italy', N'Italian', N'David di Donatello for Best Supporting Actor', N'Aldo Giuffrè was an Italian film actor and comedian who appeared in over 90 films between 1948 and 2001. He was born in Naples and was the brother of actor Carlo Giuffrè', 1, N'https://en.wikipedia.org/wiki/Aldo_Giuffr%C3%A8')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1092, N'Clint Eastwood
', N'Clint-Eastwood-Westerns.jpeg', N'May 31, 1930 (age 89 years)', N' San Francisco, California, United States', N'American
', N'Best Actor in a Leading Role, Best Director, Best Actor in a Leading Role', N'Clinton Eastwood Jr. is an American actor, filmmaker, musician, and politician. After achieving success in the Western TV series Rawhide, he rose to international fame with his role as the Man with No', 1, N'https://en.wikipedia.org/wiki/Clint_Eastwood')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1093, N'Eli Wallach
', N'Eli_Wallach_-_publicity.jpg', N'December 7, 1915', N'Red Hook, New York, United States', N'American', N'Academy Honorary Award', N'Eli Herschel Wallach was an American film, television and stage actor whose career spanned more than six decades, beginning in the late 1940s. Trained in stage acting, which he enjoyed doing most, he became "one of the greatest ''character actors'' ever to appear on stage and screen", with over 90 film credits', 1, N'https://en.wikipedia.org/wiki/Eli_Wallach')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1094, N'Lee Van Cleef
', N'lee-van-cleef-acteur.jpg', N'January 9, 1925', N'Somerville, New Jersey, United States', N'American', N'Golden Boot Awards
', N'Clarence Leroy Van Cleef Jr., was an American actor best known for his roles in Spaghetti Westerns such as For A Few Dollars More and The Good, the Bad and the Ugly', 1, N'https://en.wikipedia.org/wiki/Lee_Van_Cleef')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1095, N'Rada Rassimov
', N'Rada_Rassimov.jpg', N'May 7, 1938 (age 81 years)', N'Trieste, Italy', N'Italian
', N'Primetime Emmy Award for Outstanding Classical Music-Dance Program
2001 · Great Performances, 
Primetime Emmy Award for Outstanding Classical Program - Performing Arts
1993 · Great Performances
', N'Rada Rassimov is an Italian actress of Serb origin, who has appeared in film since the early 1960s and television since 1975', 1, N'https://en.wikipedia.org/wiki/Rada_Rassimov')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1096, N'Brad Pitt', N'brad-pitt-2.jpg', N'December 18, 1963 (age 55 years)', N'Shawnee, Oklahoma, United States', N'American', N'AACTA Awards, 
Academy Awards, 
American Film Institute, 
BAFTA Awards, 
Golden Globe Awards, 
Primetime Emmy Awards, 
Producers Guild of America, 
Satellite Awards, 
Saturn Awards, 
Screen Actors Guild Awards', N'William Bradley Pitt is an American actor and film producer. He has received multiple awards and nominations including an Academy Award as producer under his own company, Plan B Entertainment. Pitt first gained recognition as a cowboy hitchhiker in the road movie Thelma & Louise', 1, N'https://en.wikipedia.org/wiki/Brad_Pitt')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1097, N'Edward Norton
', N'Edward_Norton.jpg', N'August 18, 1969 (age 49 years)', N'Boston, Massachusetts, United States', N'American', N'Golden Globe Award for Best Supporting Actor – Motion Picture
1997 · Primal Fear, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2015 · Birdman, 
Satellite Award for Best Actor – Motion Picture Drama
1999 · American History X, 
Obie Award for Performance
2003 · Burn This, 
Los Angeles Film Critics Association Award for Best Supporting Actor, 
1996 · Primal Fear, The People vs.Larry Flynt, Everyone Says I Love You
Boston Society of Film Critics Award for Best Supporting Actor, 
1996 · Primal Fear, The People vs.Larry Flynt, Everyone Says I Love You
Gotham Independent Film Tribute Award', N'Edward Harrison Norton is an American actor and filmmaker. He has received multiple awards and nominations including a Golden Globe Award and three Academy Award nominations. Raised in Columbia, Maryland, Norton was drawn to theatrical productions at local venues as a child', 1, N'https://en.wikipedia.org/wiki/Edward_Norton')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1098, N'Helena Bonham Carter
', N'HBCarter.jpg', N'May 26, 1966 (age 53 years)', N'Islington, London, United Kingdom', N'British', N'BAFTA Award for Best Actress in a Supporting Role
2011 · The King''s Speech, 
Critics'' Choice Movie Award for Best Actress
1998 · The Wings of the Dove, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2011 · The King''s Speech, 
National Board of Review Award for Best Actress
1997 · The Wings of the Dove, 
International Emmy Award for Best Performance by an Actress
2010 · Enid, 
London Film Critics Circle Award for British Actress of the Year
1998 · The Wings of the Dove, 
British Independent Film Award for Best Supporting Actress
2010 · The King''s Speech, 
Los Angeles Film Critics Association Award for Best Actress
1997 · The Wings of the Dove', N'Helena Bonham Carter CBE is an English actress. She is known for her roles in both low-budget independent art films and large-scale blockbusters. She was nominated for the Academy Award for Best Actress for her role as Kate Croy in The Wings of the Dove', 1, N'https://en.wikipedia.org/wiki/Helena_Bonham_Carter')
GO
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1099, N'Jared Leto
', N'Jared_Leto.jpg', N'December 26, 1971 (age 47 years)', N' Bossier City, Louisiana, United States', N'American
', N'AACTA Awards, 
Academy Awards, 
Critics'' Choice Movie Awards, 
Golden Globe Awards, 
Screen Actors Guild Awards', N'Jared Joseph Leto is an American actor, singer, songwriter, and director. After starting his career with television appearances in the early 1990s, Leto achieved recognition for his role as Jordan Catalano on the television series My So-Called Life', 1, N'https://en.wikipedia.org/wiki/Jared_Leto')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1100, N'Meat Loaf
', N'Meat_Leaf.jpg', N'September 27, 1947 (age 71 years)', N'Dallas, Texas, United States', N'American
', N'Grammy Award for Best Solo Rock Vocal Performance
1994 · I''D Do Anything for Love (But I Won''t Do That), 
Echo Award for Best International Rock/Pop Male Artist
1994, 
Danish Music Award for International Album of the Year
1994 · Bat Out of Hell II: Back into Hell
NME Award for Worst Single, 
1994 · I''D Do Anything for Love (But I Won''t Do That)
Brit Award for Best Selling Single and Album, 
1994 · Bat Out of Hell II: Back into Hell, I''D Do Anything for Love (But I Won''t Do That)', N'Michael Lee Aday, known professionally as Meat Loaf, is an American singer, songwriter, record producer, and actor. He is noted for his wide-ranging operatic voice and theatrical live shows', 1, N'https://en.wikipedia.org/wiki/Meat_Loaf')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1101, N'Gary Sinise', N'gary_sinise.jpg', N'March 17, 1955 (age 64 years)', N'Blue Island, Illinois, United States', N'American
', N'National Board of Review, Saturn Awards, Academy Awards, Chicago Film Critics Association, Dallas-Fort Worth Film Critics Association', N'Gary Alan Sinise is an American actor, director and musician. He is known for his comedic and dramatic roles in his career. Among other awards, he has won an Emmy Award, a Golden Globe Award, a star on Hollywood Walk of Fame and has been nominated for an Academy Award', 1, N'https://en.wikipedia.org/wiki/Gary_Sinise')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1102, N'Mykelti Williamson
', N'Mykelti_Williamson.jpg', N'March 4, 1957 (age 62 years)', N'St. Louis, Missouri, United States', N'American
', N'Best Cast Ensemble
, Outstanding Television or Mini-Series Performance, Male
', N'Michael T. "Mykelti" Williamson is an American actor best known for his roles in the films Forrest Gump and Con Air, and the television shows Boomtown, 24, and Justified', 1, N'https://en.wikipedia.org/wiki/Mykelti_Williamson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1103, N'Robin Wright
', N'Robin_Wright_2009.jpg', N'April 8, 1966 (age 53 years)', N'Dallas, Texas, United States', N'American', N'Blockbuster Entertainment Awards, 
British Independent Film Awards, 
Critis'' Choice Television Awards, 
Daytime Emmy Awards, 
Gold Derby Awards, 
Golden Globe Awards, 
Gotham Awards, 
Independent Spirit Awards, 
Locarno International Film Festival', N'Robin Gayle Wright is an American actress. She is the recipient of eight Primetime Emmy Award nominations and has earned a Golden Globe Award and a Satellite Award for her work in television. Wright first gained attention for her role in the NBC Daytime soap opera Santa Barbara, as Kelly Capwell from 1984 to 1988', 1, N'https://en.wikipedia.org/wiki/Robin_Wright')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1104, N'Sally Field
', N'Sally_Field.jpg', N'November 6, 1946 (age 72 years)', N' Pasadena, California, United States', N'American
', N'Primetime Emmy Awards, Golden Globe Awards, Cannes Film Festival, Los Angeles Film Critics Association Awards, National Board of Review, New York Film Critics Circle Awards, National Society of Film Critics Awards', N'Sally Margaret Field is an American actress and director. She is the recipient of various accolades, including two Academy Awards, three Primetime Emmy Awards, two Golden Globe Awards, a Screen Actors Guild Award, and has been nominated for a Tony Award and two BAFTA Awards', 1, N'https://en.wikipedia.org/wiki/Sally_Field')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1105, N'Tom Hanks
', N'tom_hanks.jpg', N'July 9, 1956 (age 63 years)', N'Concord, California, United States', N'American
', N'Academy Awards, 
Golden Globe Awards, 
Emmy Awards, 
Tony Awards, 
BAFTA Awards, 
Screen Actors Guild', N'Thomas Jeffrey Hanks is an American actor and filmmaker. Hanks is known for his comedic and dramatic roles in such films as Splash, Big, Turner & Hooch, A League of Their Own, Sleepless in Seattle', 1, N'https://en.wikipedia.org/wiki/Tom_Hanks')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1106, N'Alec Guinness
', N'Alec_Guinness_Allan_Warren_(2).jpg', N'April 2, 1914', N' Maida Vale', N'British', N'Academy Award for Best Actor
1958 · The Bridge on the River Kwai, 
Academy Honorary Award
1980, 
Golden Globe Award for Best Actor – Motion Picture – Drama
1958 · The Bridge on the River Kwai, 
Volpi Cup for Best Actor
1958 · The Horse''s Mouth, 
Tony Award for Best Lead Actor in a Play
1964 · Dylan, 
BAFTA Fellowship
1989, 
National Board of Review Award for Best Actor, 
1957, 1950 · The Bridge on the River Kwai, Kind Hearts and Coronets
BAFTA Award for Best British Actor, 
1958 · The Bridge on the River Kwai', N'Sir Alec Guinness, CH, CBE was an English actor. After an early career on the stage, Guinness was featured in several of the Ealing Comedies, including The Ladykillers and Kind Hearts and Coronets in which he played nine different characters', 1, N'https://en.wikipedia.org/wiki/Alec_Guinness')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1107, N'Billy Dee Williams
', N'Billy_Dee.jpg', N'April 6, 1937 (age 82 years)', N'New York, New York, United States', N'American', N'NAACP Image Award for Outstanding Actor in a Motion Picture
1977, 1972 · The Bingo Long Traveling All-Stars & Motor Kings, Lady Sings the Blues, 
TV Land Blockbuster Movie of the Week Award
2006 · Brian''s Song', N'William December "Billy Dee" Williams Jr. is an American actor, artist, and singer. Williams is best known for his role as Lando Calrissian in the Star Wars film franchise, first appearing in The Empire Strikes Back in 1980', 1, N'https://en.wikipedia.org/wiki/Billy_Dee_Williams')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1108, N'Carrie Fisher
', N'Carrie_Fisher.jpg', N'October 21, 1956', N'Burbank, California, United States', N'American', N'Saturn Awards,BAFTA Awards, Emmy Awards, Grammy Awards, Hugo Award, Teen Choice Awards', N'Carrie Frances Fisher was an American actress, writer, and comedian. Fisher is best known for playing Princess Leia in the Star Wars films, a role for which she was nominated for four Saturn Awards', 1, N'https://en.wikipedia.org/wiki/Carrie_Fisher')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1109, N'Harrison Ford
', N'harrison-ford-2.jpg', N'July 13, 1942 (age 77 years)', N'Chicago, Illinois, United States', N'American
', N'AFI Life Achievement Award
2000, Golden Globe Cecil B.DeMille Award
2002,
Honorary César
2010, 
People''s Choice Award for Favorite Movie Actor
2000, 1998, 
MTV Movie Award for Best On-Screen Duo
1994 · The Fugitive, 
Artists Inspiration Awards
2018, 
American Society of Cinematographers Board of the Governors Award
2012, 
Jane Alexander Global Wildlife Ambassador Award
2018, 
Bambi - International Film
1997 · Air Force One, 
Young Hollywood Award for Role Model
2003, 
People''s Choice Award for Favorite All-Time Entertainer
1999', N'Harrison Ford is an American actor. He gained worldwide fame for his starring roles as Han Solo in the Star Wars film series and as the title character of Indiana Jones movie series. Five of his movies are within the 30 top-grossing movies of all time at the US box office', 1, N'https://en.wikipedia.org/wiki/Harrison_Ford')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1110, N'Mark Hamill
', N'Mark_Hamill.jpg', N'September 25, 1951 (age 67 years)', N' Oakland, California, United States', N'American
', N'Saturn Awards, Drama Desk Awards, CableACE Awards, Annie Awards, DVD Exclusive Awards, NAVGTR Awards, Spike Video Game Awards, Disney Legends', N'Mark Richard Hamill is an American actor, voice actor, and writer. Hamill is known for playing Luke Skywalker in the Star Wars films, which won him the Saturn Award for Best Actor three times', 1, N'https://en.wikipedia.org/wiki/Mark_Hamill')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1111, N'Ellen Page
', N'ellen_page.jpg', N'February 21, 1987 (age 32 years)', N' Halifax Regional Municipality, Canada', N'Canadian', N'Academy Awards, 
BAFTA Awards, 
Golden Globe Awards, 
Screen Actors Guild Awards, 
AARP Movies for Grownups Awards, 
Academy of Canadian Cinema & Television, 
ACTRA Maritimes Awards, 
Alliance of Women Film Journalists Awards, 
Atlantic Film Festival, 
Austin Film Critics Association Awards, 
Awards Circuit Community Awards, 
Behind the Voice Actors Awards', N'Ellen Grace Philpotts-Page is a Canadian actress and producer. Her career began with roles in television shows such as Pit Pony, Trailer Park Boys and ReGenesis. She starred in the 2005 drama Hard Candy, for which she won the Austin Film Critics Association''s Award for Best Actress', 1, N'https://en.wikipedia.org/wiki/Ellen_Page')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1112, N'Joseph Gordon-Levitt
', N'joseph_gordon_levitt.jpg', N'February 17, 1981 (age 38 years)', N' Los Angeles, California, United States', N'American
', N'Golden Globe Awards, 
Independent Spirit Awards, 
MTV Movie Awards, 
People''s Choice Awards, 
Primetime Emmy Awards, 
Saturn Awards, 
Satellite Award, 
Screen Actors Guild, 
Teen Choice Awards, 
Young Artist Awards', N'Joseph Leonard Gordon-Levitt is an American actor, filmmaker, singer, and entrepreneur. As a child, Gordon-Levitt appeared in the films A River Runs Through It, Angels in the Outfield, Holy Matrimony and 10 Things I Hate About You, and as Tommy Solomon in the TV series 3rd Rock from the Sun', 1, N'https://en.wikipedia.org/wiki/Joseph_Gordon-Levitt')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1113, N'Leonardo DiCaprio
', N'Leonardo_Di_Caprio.jpg', N'November 11, 1974 (age 44 years)', N'Los Angeles, California, United States', N'American
', N'AACTA Awards, 
Academy Awards,
Alliance of Women Film Journalists,
Austin Film Critics Association, 
Australian Film Critics Association,
Berlin International Film Festival, 
Blockbuster Entertainment Awards, 
Boston Society of Film Critics, 
British Academy Film Awards,
Chicago Film Critics Association, 
Critics'' Choice Awards, 
Dallas–Fort Worth Film Critics Association, 
Detroit Film Critics Society,
Dorian Awards, 
Dublin Film Critics'' Circle, 
Empire Awards,
Film Critics Circle of Australia,
Golden Globe Awards,
Golden Raspberry Awards,
Hollywood Film Awards,
Irish Film & Television Academy,
London Film Critics Circle', N'Leonardo Wilhelm DiCaprio is an American actor, film producer, and environmentalist. His accolades include an Academy Award and three Golden Globe Awards. DiCaprio began his career by appearing in television commercials in the late 1980s', 1, N'https://en.wikipedia.org/wiki/Leonardo_DiCaprio')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1114, N'Marion Cotillard
', N'Marion-Cotillard.jpg', N'September 30, 1975 (age 43 years)', N'Paris, France', N'French', N'Academy Award for Best Actress
2008 · La Vie en rose, 
BAFTA Award for Best Actress in a Leading Role
2008 · La Vie en rose, 
César Award for Best Actress
2008 · La Vie en rose, 
Golden Globe Award for Best Actress – Motion Picture – Musical or Comedy
2008 · La Vie en rose, 
César Award for Best Supporting Actress
2005 · A Very Long Engagement, 
European Film Award for Best Actress
2014 · Two Days, One Night, 
New York Film Critics Circle Award for Best Actress
2014 · The Immigrant, Two Days, One Night, 
National Society of Film Critics Award for Best Actress
2015 · Two Days, One Night, 
Satellite Award for Best Actress – Motion Picture Drama
2007 · La Vie en rose, 
London Film Critics'' Circle Award for Actress of the Year
2007 · La Vie en rose, 
Los Angeles Film Critics Association Award for Best Actress
2007 · La Vie en rose, 
Satellite Award for Best Ensemble – Motion Picture
2009 · Nine', N'Marion Cotillard is a French actress, singer-songwriter, musician, and environmentalist. She is the recipient of an Academy Award, a BAFTA Award, a Golden Globe Award, two César Awards, a European Award, and a Lumières Award', 1, N'https://en.wikipedia.org/wiki/Marion_Cotillard')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1115, N'Brad Dourif
', N'Brad_Dourif.jpg', N'March 18, 1950 (age 69 years)', N' Huntington, West Virginia, United States', N'American', N'BAFTA Award for Best Actor in a Supporting Role
1977 · One Flew Over the Cuckoo''s Nest, 
Golden Globe Award for Best New Star of the Year – Actor
1976 · One Flew Over the Cuckoo''s Nest', N'Bradford Claude Dourif is an American actor. He was nominated for an Oscar, and won Golden Globe and BAFTA Awards for his supporting role as Billy Bibbit in the film One Flew Over the Cuckoo''s Nest', 1, N'https://en.wikipedia.org/wiki/Brad_Dourif')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1116, N'Christopher Lloyd
', N'Christopher_Lloyd.jpg', N'October 22, 1938 (age 80 years)', N' Stamford, Connecticut, United States', N'American', N'Obie Award, Drama Desk Award, Primetime Emmy Award, Saturn Award, Primetime Emmy Award, Independent Spirit Awards, Daytime Emmy Awards, Golden Raspberry Awards, British Independent Film Awards, National Academy of Video Game Trade Reviewers', N'Christopher Allen Lloyd is an American actor and voice actor. Lloyd came to public attention in Northeastern theater productions during the 1960s and early 1970s, earning Drama Desk and Obie awards for his work', 1, N'https://en.wikipedia.org/wiki/Christopher_Lloyd')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1117, N'Danny DeVito
', N'Danny_DeVito.jpg', N'November 17, 1944 (age 74 years)', N' Neptune Township, New Jersey, United States', N'American', N'Primetime Emmy Award for Outstanding Supporting Actor in a Comedy Series
1981 · Taxi, 
Golden Globe Award for Best Supporting Actor in a Series, Miniseries, or Motion Picture Made for Television
1980 · Alice, Taxi, 
Drama Desk Award for Outstanding Featured Actor in a Play
2017 · The Price, 
TV Land The Medallion Award
2007 · Taxi, 
Outer Critics Circle Award for Outstanding Featured Actor in a Play
2017 · The Price, 
TV Land Bossiest Boss Award
2004 ', N'Daniel Michael DeVito Jr. is an American actor, director, producer, and filmmaker. He gained prominence for his portrayal of the taxi dispatcher Louie De Palma in the television series Taxi, which won him a Golden Globe Award and an Emmy Award', 1, N'https://en.wikipedia.org/wiki/Danny_DeVito')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1118, N'Jack Nicholson
', N'jack-nicholson-medium.jpg', N'April 22, 1937 (age 82 years)', N'Neptune City, New Jersey, United States', N'American
', N'Academy Awards, 
Boston Society of Film Critics, 
British Academy of Film and Television Arts Awards, 
Golden Globe Awards, 
Grammy Awards, 
MTV Movie & TV Awards, 
National Board of Review, 
Satellite Awards, 
Saturn Awards, 
Screen Actors Guild Awards, 
Film critic awards, 
Miscellaneous awards', N'John Joseph Nicholson is an American actor and filmmaker who has performed for over sixty years. He is known for playing a wide range of starring or supporting roles, including satirical comedy, romance, and darkly comic portrayals of anti-heroes and villainous characters', 1, N'https://en.wikipedia.org/wiki/Jack_Nicholson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1119, N'Louise Fletcher
', N'louise_fletcher1.jpg', N'July 22, 1934 (age 85 years)', N' Birmingham, Alabama, United States', N'American', N'Academy Award for Best Actress
1976 · One Flew Over the Cuckoo''s Nest, 
Golden Globe Award for Best Actress – Motion Picture – Drama
1976 · One Flew Over the Cuckoo''s Nest, 
BAFTA Award for Best Actress in a Leading Role
1977 · One Flew Over the Cuckoo''s Nest, 
Satellite Mary Pickford Award
2016', N'Estelle Louise Fletcher, known professionally as Louise Fletcher, is an American actress. Fletcher had her acting debut in the television series Yancy Derringer in 1958. She guest starred in the television series Wagon Train in 1959 before making her film debut in A Gathering of Eagles in 1963', 1, N'https://en.wikipedia.org/wiki/Louise_Fletcher')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1120, N'Joe Pesci
', N'Joe_Pesci.jpg', N'February 9, 1943 (age 76 years)', N' Newark, New Jersey, United States', N'American', N'National Board of Review Award, Best Supporting Actor, New York Film Critics Circle Award, Best Supporting Actor, Academy Award, Best Supporting Actor, Golden Globe Award, Best Supporting Actor in a Motion Picture, Kansas City Film Critics Circle Award, Best Supporting Actor', N'Joseph Frank Pesci is an American actor, comedian and singer who is known for portraying tough, volatile characters in a variety of genres and for his collaborations with Robert De Niro and Martin Scorsese in the films Raging Bull, Goodfellas, and Casino and the upcoming The Irishman', 1, N'https://en.wikipedia.org/wiki/Joe_Pesci')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1121, N'Lorraine Bracco
', N'lorraine_bracco.w330.h330.jpg', N' October 2, 1954 (age 64 years)', N' Bay Ridge, New York, United States', N'American
', N'Los Angeles Film Critics Association Awards, New York Film Critics Circle Awards, Academy Awards, Chicago Film Critics Association Awards, Golden Globe Awards, Razzie Awards, Primetime Emmy Awards, Satellite Awards', N'Lorraine Bracco is an American actress. She is best known for her performances as Dr. Jennifer Melfi on the HBO series The Sopranos, and as Karen Friedman Hill in the 1990 Martin Scorsese film Goodfellas, for which she was nominated for the Academy Award for Best Supporting Actress', 1, N'https://en.wikipedia.org/wiki/Lorraine_Bracco')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1122, N'Paul Sorvino
', N'Paul_Sorvino.jpg', N'April 13, 1939 (age 80 years)', N'Brooklyn, New York, United States', N'American
', N'Outstanding Cast Performance - Feature
, Excellence in Film Making
', N'Paul Anthony Sorvino is an American actor, opera singer, businessman, writer, and sculptor. He often portrays authority figures on both sides of the law, and is possibly best known for his roles as', 1, N'https://en.wikipedia.org/wiki/Paul_Sorvino')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1123, N'Ray Liotta
', N'RayLiotta.jpg', N'December 18, 1954 (age 64 years)', N' Newark, New Jersey, United States', N'American
', N'Primetime Emmy Award for Outstanding Guest Actor in a Drama Series
2005 · ER, 
VGX Award for Best Performance by a Human
2003 · Grand Theft Auto: Vice City, 
Satellite Award for Outstanding Character from an Interactive Media
2004 · Grand Theft Auto: Vice City', N'Raymond Allen Liotta is an American actor, film producer, and voice actor. Liotta is known for his portrayal of Henry Hill in the crime drama Goodfellas; other notable roles include Ray Sinclair in ', 1, N'https://en.wikipedia.org/wiki/Ray_Liotta')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1124, N'Carrie-Anne Moss
', N'Carrie-Anne_Moss.jpg', N'August 21, 1967 (age 51 years)', N'Burnaby, Canada', N'American, Canadian', N'Gemini Award for Best Guest Actress in a Drama, Empire Award for Best Newcomer, MTV Movie Award for Breakthrough Female Performance, Saturn Award for Best Actress, Independent Spirit Award for Best Supporting Female, Genie Award for Best Performance by an Actress in a Supporting Role', N'Carrie-Anne Moss is a Canadian actress. Following early roles on television, she rose to international prominence for her role of Trinity in The Matrix trilogy. She has starred in Memento, Red Planet, Chocolat, Fido, Snow Cake, Disturbia, Unthinkable, Silent Hill: Revelation, and Pompeii', 1, N'https://en.wikipedia.org/wiki/Carrie-Anne_Moss')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1125, N'Joe Pantoliano
', N'JoePantoliano.jpg', N'September 12, 1951 (age 67 years)', N' Hoboken, New Jersey, United States', N'American
', N'Saturn Awards, Television Critics Association, Viewers for Quality Television, Screen Actors Guild Awards, Primetime Emmy Awards', N'Joseph Peter Pantoliano is an American actor and comedian who has often played shady characters, criminals or corrupt individuals', 1, N'https://en.wikipedia.org/wiki/Joe_Pantoliano')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1126, N'Keanu Reeves
', N'Keanu-Reeves-1-1024x695.jpg', N'September 2, 1964 (age 54 years)', N'Beirut, Lebanon', N'American, British, Canadian', N'2006 Winner Teen Choice Award Movies - Choice Liplock The Lake House (2006) Shared with: Sandra Bullock, 
2004 Nominee Teen Choice Award Choice Movie Actor - Drama/Action Adventure The Matrix Revolutions (2003), 
2003 Nominee Teen Choice Award Choice Movie Actor - Drama/Action Adventure The Matrix Reloaded (2003)', N'Keanu Charles Reeves is a Canadian actor and musician. He gained fame for his starring roles in several blockbuster films, including comedies from the Bill and Ted franchise; action thrillers Point ', 1, N'https://en.wikipedia.org/wiki/Keanu_Reeves')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1127, N'Laurence Fishburne
', N'Laurence-Fishburne.jpg', N'July 30, 1961 (age 58 years)', N' Augusta, Georgia, United States', N'American
', N'Academy Award, Saturn Award, BET Award, Black Film Award, Black Movie Award, Black Reel Award', N'Laurence John Fishburne III is an American actor, playwright, producer, screenwriter, and film director', 1, N'https://en.wikipedia.org/wiki/Laurence_Fishburne')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1128, N'Bokuzen Hidari
', N'bokuzen.jpg', N'February 20, 1894', N'Tokorozawa, Saitama Prefecture, Japan', N'Japanese
', N'---', N'Bokuzen Hidari was a Japanese actor and comedian born in Kotesashi Village, Iruma District, Saitama Prefecture, Japan. He appeared in such films as Akira Kurosawa''s Seven Samurai, The Lower Depths and Ikiru', 1, N'https://en.wikipedia.org/wiki/Bokuzen_Hidari')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1129, N'Eijirō Tōno
', N'Eijiro.jpg', N'September 17, 1907', N'Gunma Prefecture, Japan', N'Japanese
', N'---', N'Eijiro Tono was a Japanese actor who, in a career lasting more than 50 years, appeared in over 400 television shows, nearly 250 films and numerous stage productions', 1, N'https://en.wikipedia.org/wiki/Eijir%C5%8D_T%C5%8Dno')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1130, N'Takashi Shimura
', N'ikirushimura.jpg', N'March 12, 1905', N'Ikuno', N'Japanese
', N'---', N'Takashi Shimura was a Japanese actor who appeared in over 200 films between 1934 and 1981. He is particularly noted for his appearances in 21 of Akira Kurosawa''s 30 films, including as a lead actor in Drunken Angel, Rashomon, Ikiru and Seven Samurai', 1, N'https://en.wikipedia.org/wiki/Takashi_Shimura')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1131, N'Toshiro Mifune
', N'Toshiro_Mifune.jpg', N'April 1, 1920', N'Qingdao, China', N'Japanese
', N'---', N'Toshiro Mifune was a Japanese actor who appeared in over 150 feature films. He is best known for his 16-film collaboration with Akira Kurosawa in such works as Rashomon, Seven Samurai, The Hidden Fortress, Throne of Blood, and Yojimbo', 1, N'https://en.wikipedia.org/wiki/Toshiro_Mifune')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1132, N'Yoshio Inaba
', N'Yoshio.jpg', N'July 15, 1920', N'Narita, Chiba Prefecture, Japan', N'Japanese
', N'---', N'Yoshio Inaba was a Japanese actor best known for his role as Gorobei in Akira Kurosawa''s Seven Samurai. In addition to his career in film, Inaba was also a prolific theater actor and a member of the prestigious Haiyuza Theatre Company He died of a heart attack at the age of 77', 1, N'https://en.wikipedia.org/wiki/Yoshio_Inaba')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1133, N'Gwyneth Paltrow
', N'Gwyneth_Paltrow.jpg', N'September 27, 1972 (age 46 years)', N' Los Angeles, California, United States', N'American
', N'Academy Awards, 
British Academy of Film and Television Arts Awards, 
Emmy Awards (Primetime), 
Golden Globe Awards, 
Grammy Awards, 
Screen Actors Guild Awards, 
Critics'' Choice Awards, 
MTV Movie Awards, 
Teen Choice Awards', N'Gwyneth Kate Paltrow is an American actress, singer, author, and businesswoman. She has won an Academy Award, a Golden Globe Award, a Primetime Emmy Award and two Screen Actors Guild Awards. Her films have grossed US$3.2 billion at the U.S. box office and US$8.2 billion worldwide', 1, N'https://en.wikipedia.org/wiki/Gwyneth_Paltrow')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1134, N'Kevin Spacey
', N'Kevin_Spacey.jpg', N'July 26, 1959 (age 60 years)', N'South Orange, New Jersey, United States', N'American
', N'Academy Award for Best Actor
2000 · American Beauty, 
Academy Award for Best Actor in a Supporting Role
1996 · The Usual Suspects, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role
2000 · American Beauty, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2000 · American Beauty, 
BAFTA Award for Best Actor in a Leading Role
2000 · American Beauty, 
Golden Globe Award for Best Performance by an Actor in a Television Series – Drama
2015 · House of Cards, 
MTV Movie Award for Best Villain
1996 · Seven', N'Kevin Spacey Fowler KBE is an American actor, producer, and singer. Spacey began his career as a stage actor during the 1980s, obtaining supporting roles in film and television', 1, N'https://en.wikipedia.org/wiki/Kevin_Spacey')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1135, N'R. Lee Ermey
', N'220px-RLeeErmeyCrop.jpeg', N'March 24, 1944', N'Emporia, Kansas, United States', N'American
', N'Meritorious Unit Commendation, Gallantry Cross', N'Ronald Lee Ermey was an American actor, voice actor and marine. He achieved fame when he played Gunnery Sergeant Hartman in the 1987 film Full Metal Jacket, which earned him a Golden Globe Award nomination for Best Supporting Actor', 1, N'https://en.wikipedia.org/wiki/R._Lee_Ermey')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1136, N'Alexandre Rodrigues
', N'alexandre_rodrigues.jpg', N'May 21, 1983 (age 36 years)', N'Rio de Janeiro, State of Rio de Janeiro, Brazil', N'Brazilian', N'Best Actor, 
Best Supporting Actor', N'Alexandre Rodrigues is a Brazilian actor. He is most famous for playing the part of Buscapé, the narrator and protagonist in the 2002 film Cidade de Deus. He has most recently appeared in American singer John Legend''s music video for the song "P.D.A. " released in 2007', 1, N'https://en.wikipedia.org/wiki/Alexandre_Rodrigues_(actor)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1137, N'Alice Braga
', N'alica_braga.jpg', N'April 15, 1983 (age 36 years)', N'São Paulo, State of São Paulo, Brazil', N'Brazilian', N'Cinema Brazil Grand Prize, Rio de Janeiro International Film Festival, São Paulo Association of Art Critics Awards, Cinema Brazil Grand Prize	, Black Reel Awards, Best Supporting Actress', N'Alice Braga Moraes is a Brazilian actress. She has appeared in several Brazilian films, most notably as Angélica in the highly acclaimed City of God and as Karinna in Lower City', 1, N'https://en.wikipedia.org/wiki/Alice_Braga')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1138, N'Douglas Silva
', N'douglas-silva-2.jpg', N'September 27, 1988 (age 30 years)', N' Rio de Janeiro, State of Rio de Janeiro, Brazil', N'Brazilian', N'Havana Film Festival	Best Actor, Grande Prêmio do Cinema Brasileiro	Best Supporting Actor, 	International Emmy Awards	Best Actor', N'Douglas Silva is a Brazilian actor. He is known for played Dadinho in the 2002 Brazilian film, City of God. He also played Acerola in the spin-off series City of Men and the 2007 film based on it. He became the first Brazilian actor to be nominated for the International Emmy Award', 1, N'https://en.wikipedia.org/wiki/Douglas_Silva')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1139, N'Jonathan Haagensen
', N'Jonathan_Haagensen.jpg', N'February 23, 1983 (age 36 years)', N'Vidigal, Rio de Janeiro, State of Rio de Janeiro, Brazil', N'Brazilian', N'Grande Prêmio do Cinema Brasileiro Best Actor', N'Jonathan Haagensen is a Brazilian actor, model and singer', 1, N'https://en.wikipedia.org/wiki/Jonathan_Haagensen')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1140, N'Matheus Nachtergaele
', N'matheus_cortada.jpg', N'January 3, 1968 (age 51 years)', N' São Paulo, State of São Paulo, Brazil', N'Brazilian', N'Best Director (Melhor Diretor)
, Best Film (Melhor Filme)
, Best Screenplay (Melhor Roteiro)
', N'Matheus Nachtergaele is a Brazilian actor and director', 1, N'https://en.wikipedia.org/wiki/Matheus_Nachtergaele')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1141, N'James Earl Jones
', N'James_Earl_Jones.jpg', N'January 17, 1931 (age 88 years)', N'Arkabutla, Mississippi, United States', N'American', N'Best Actor in a Play	The Great White Hope, Best Actor in a Play Fences, Best Actor in a Play	On Golden Pond, Best Actor in a Play The Best Man', N'James Earl Jones is an American actor. His career has spanned more than six decades, and he has been described as "one of America''s most distinguished and versatile" actors and "one of the greatest actors in American history"', 1, N'https://en.wikipedia.org/wiki/James_Earl_Jones')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1142, N'Anthony Hopkins
', N'anthony-hopkins.jpg', N'December 31, 1937 (age 81 years)', N' Margam, United Kingdom', N'American, 
British', N'British Academy Film Awards (BAFTA), 
Golden Globe awards, 
Primetime Emmy awards, 
Screen Actors Guild awards, 
MTV Movie + TV awards, 
People''s Choice awards, 
Alliance of Women Film Journalists awards, 
Boston Society of Film Critics awards, 
CableACE awards, 
Chicago Film Critics Association awards', N'Sir Philip Anthony Hopkins CBE is a Welsh actor, director, and producer. He won the Academy Award for Best Actor in 1992, and was nominated three additional times. Hopkins has also won three BAFTAs, two Emmys, and the Cecil B. DeMille Award. In 1993, he was knighted by Queen Elizabeth II for services to the arts', 1, N'https://en.wikipedia.org/wiki/Anthony_Hopkins')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1143, N'Jodie Foster
', N'Jodie_Foster.jpg', N'November 19, 1962 (age 56 years)', N'Los Angeles, California, United States', N'American', N'Academy Awards, 
AARP''s Movies for Grownup Awards, 
Alliance of Women Film Journalists Awards, 
American Cinematheque Award, 
American Comedy Awards, 
AFI Conservatory, 
American Society of Cinematographers, 
Athena Film Festival, 
Berlin International Film Festival, 
Boston Film Festival, 
Boston Society of Film Critics, 
Blockbuster Entertainment Awards, 
Bravo Otto Awards, 
Britannia Awards, 
British Academy Film Awards, 
Cable ACE Awards', N'Alicia Christian "Jodie" Foster is an American actress, director, and producer. She has received two Academy Awards, three British Academy Film Awards, two Golden Globe Awards, and the Cecil B DeMille Award. For her work as a director, she has been nominated for a Primetime Emmy Award', 1, N'https://en.wikipedia.org/wiki/Jodie_Foster')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1144, N'Kasi Lemmons
', N'kasi-lemmons.jpg', N'February 24, 1961 (age 58 years)', N'St. Louis, Missouri, United States', N'American
', N'Independent Spirit Award for Best First Feature
1998 · Eve''s Bayou, 
NAACP Image Award for Outstanding Directing in a Motion Picture
2008 · Talk To Me', N'Kasi Lemmons is an American film director and actress, most notable for her work on the films Eve''s Bayou, The Caveman''s Valentine and Talk to Me. She was described by film scholar Wheeler Winston Dixon as "an ongoing testament to the creative possibilities of film"', 1, N'https://en.wikipedia.org/wiki/Kasi_Lemmons')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1145, N'Scott Glenn', N'Scott_Glenn.jpg', N'January 26, 1941 (age 78 years)', N' Pittsburgh, Pennsylvania, United States', N'American', N'Best Guest Performance in a Television Series
Daredevil (2015) ', N'Theodore Scott Glenn is an American actor. His roles have included Wes Hightower in Urban Cowboy, astronaut Alan Shepard in The Right Stuff, Emmett in Silverado, Commander Bart Mancuso in The Hunt for', 1, N'https://en.wikipedia.org/wiki/Scott_Glenn')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1146, N'Ted Levine
', N'Ted_Levine.jpg', N'May 29, 1957 (age 62 years)', N'Bellaire, Ohio, United States', N'American', N'Awards Circuit Community Awards	Best Actor in a Supporting Role, 2008	Screen Actors Guild Award	Outstanding Performance by a Cast in a Motion Picture, 2015	Beaufort International Film Festival Best Actor', N'Frank Theodore Levine is an American actor. He is best known for his roles as Buffalo Bill in the film The Silence of the Lambs and as Leland Stottlemeyer in the television series Monk. His other notable roles were in Wild Wild West, American Gangster and Jurassic World: Fallen Kingdom', 1, N'https://en.wikipedia.org/wiki/Ted_Levine')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1147, N'Argentina Brunetti
', N'Argentina_Brunetti.jpg', N'August 31, 1907', N'Buenos Aires, Argentina', N'Argentine
', N'---', N'Argentina Brunetti was an Argentine stage and film actress and writer', 1, N'https://en.wikipedia.org/wiki/Argentina_Brunetti')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1148, N'Donna Reed
', N'donna-reed-1943.jpg', N'January 27, 1921', N'Denison, Iowa, United States', N'American', N'1953	Academy Award Best Supporting Actress,  1963	Golden Globe Award	Best TV Star – Female, 1964	Golden Apple Award	Most Cooperative Actress, 1959	Emmy Award	Best Actress in a Leading Role in a Comedy Series ', N'Donna Reed was an American film, television actress and producer. Her career spanned more than 40 years, with performances in more than 40 films. She is well known for her role as Mary Hatch Bailey in Frank Capra''s 1946 film It''s a Wonderful Life', 1, N'https://en.wikipedia.org/wiki/Donna_Reed')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1149, N'Gloria Grahame
', N'Gloria_Grahame.jpg', N'November 28, 1923', N' Los Angeles, California, United States', N'American', N'Academy Award for Best Actress in a Supporting Role', N'Gloria Grahame Hallward, known professionally as Gloria Grahame, was an American stage, film, and television actress and singer. She began her acting career in theatre and in 1944 made her first film for MGM', 1, N'https://en.wikipedia.org/wiki/Gloria_Grahame')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1150, N'James Stewart
', N'James_stewart.jpg', N'May 20, 1908', N' Indiana, Pennsylvania, United States', N'American
', N'U.S. Military and civilian awards, 
Film industry awards and honors, 
Major awards, 
United States National Film Registry', N'James Maitland Stewart was an American actor and military officer who is among the most honored and popular stars in film history. Known for his distinctive drawl, down-to-earth persona, and authentic acting style, Stewart''s film career spanned over 55 years and included performances in 80 films', 1, N'https://en.wikipedia.org/wiki/James_Stewart')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1151, N'Ward Bond
', N'Ward_Bond.jpg', N'April 9, 1903', N'Benkelman, Nebraska, United States', N'American', N'960	Winner
Star on the Walk of Fame	Television
On 8 February 1960. At 6933 Hollywood Blvd.', N'Wardell Edwin Bond was an American film character actor who appeared in more than 200 films and the NBC television series Wagon Train from 1957 to 1960. Among his best-remembered roles are Bert, the cop, in Frank Capra''s It''s a Wonderful Life and Captain Clayton in John Ford''s The Searchers', 1, N'https://en.wikipedia.org/wiki/Ward_Bond')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1152, N'Giorgio Cantarini
', N'Cantarini-Giorgio-Planet-Film-61.jpg', N'April 12, 1992 (age 27 years)', N'Orvieto, Italy', N'Italian
', N'Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture', N'Giorgio Cantarini is an Italian actor who, to date, has appeared in two Academy Award winning films: 1997''s Life Is Beautiful and 2000''s Gladiator', 1, N'https://en.wikipedia.org/wiki/Giorgio_Cantarini')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1153, N'Giustino Durano
', N'Giustino_Durano.jpg', N'May 5, 1923', N'May 5, 1923', N'Italian', N'Nastro d''Argento for Best Supporting Actor', N'Giustino Durano was a long lasting movie actor who is best known for his work as Eliseo Orefice in the 1997 film, Life Is Beautiful. For his role he was nominated in part for a Screen Actors Guild Award for Outstanding Performance by a Cast', 1, N'https://en.wikipedia.org/wiki/Giustino_Durano')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1154, N'Horst Buchholz
', N'Horst_Buchholz.jpg', N'December 4, 1933', N'Berlin, Germany', N'German', N'German Film Award for Best Overall Acting Performance
1984 · Fear of Falling, 
German Film Award for Best Young Actor
1956 · Sky Without Stars', N'Horst Werner Buchholz was a German actor and voice actor who appeared in more than 60 feature films from 1951 to 2002. During his youth, he was sometimes called "the German James Dean"', 1, N'https://en.wikipedia.org/wiki/Horst_Buchholz')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1155, N'Nicoletta Braschi
', N'Nicoletta_Braschi.jpg', N'April 19, 1960 (age 59 years)', N'Cesena, Italy', N'Italian
', N'David di Donatello for Best Supporting Actress', N'Nicoletta Braschi is an Italian actress and producer, best known for her work with her husband, actor and director Roberto Benigni', 1, N'https://en.wikipedia.org/wiki/Nicoletta_Braschi')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1156, N'Roberto Benigni
', N'Roberto_Benigni.jpg', N'October 27, 1952 (age 66 years)', N'Manciano La Misericordia', N'Italian
', N'Academy Award for Best Actor
1999 · Life Is Beautiful, 
Academy Award for Best International Feature Film
1999 · Life Is Beautiful, 
BAFTA Award for Best Actor in a Leading Role
1999 · Life Is Beautiful, 
David di Donatello for Best Actor
1998, 1989 · Life Is Beautiful, The Little Devil, 
David di Donatello for Best Film
1998 · Life Is Beautiful, 
César Award for Best Foreign Film
1999 · Life Is Beautiful, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role
1999 · Life Is Beautiful, 
David di Donatello for Best Director
1998 · Life Is Beautiful, 
Honorary César
2008
David di Donatello for Best Screenplay
1998 · Life Is Beautiful, 
David di Donatello Special Award
2017, 
European Film Award for Best Actor
1998 · Life Is Beautiful', N'Roberto Remigio Benigni Cavaliere di Gran Croce OMRI is an Italian actor, comedian, screenwriter and director. Internationally, he is best known for co-writing, directing and starring in the 1997 film Life Is Beautiful, for which he won the Academy Award for Best Actor at the 71st Oscars Ceremony', 1, N'https://en.wikipedia.org/wiki/Roberto_Benigni')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1157, N'Jake Johnson
', N'Jake_Johnson.jpg', N'May 28, 1978 (age 41 years)', N' Evanston, Illinois, United States', N'American', N'Best Actor in a Comedy Series
New Girl (2011), Comedy Lead Actor
New Girl (2011) , Best Ensemble Performance
Safety Not Guaranteed (2012) ', N'Jake Johnson is an American actor and comedian, best known for his role as Nick Miller in the Fox sitcom New Girl, for which he was nominated for the Critics'' Choice Television Award for Best Actor in', 1, N'https://en.wikipedia.org/wiki/Jake_Johnson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1158, N'Hailee Steinfeld
', N'Hailee_Steinfeld.jpg', N'December 11, 1996 (age 22 years)', N'Tarzana, Los Angeles, California, United States', N'American', N'2019 Teen Choice Awards, Critics'' Choice Movie Award Best Young Performer', N'Hailee Steinfeld is an American actress and singer. Her breakthrough role was as Mattie Ross in True Grit, for which she was nominated for the Academy Award for Best Supporting Actress. Thereafter, Steinfeld gained prominence for roles in Ender''s Game, Romeo & Juliet, Begin Again, and 3 Days to Kill', 1, N'https://en.wikipedia.org/wiki/Hailee_Steinfeld')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1159, N'Nicolas Cage
', N'Nicolas_Cage.jpg', N'January 7, 1964 (age 55 years)', N'Long Beach, California, United States', N'American', N'Academy Award for Best Actor
1996 · Leaving Las Vegas, 
Golden Globe Award for Best Actor – Motion Picture – Drama
1996 · Leaving Las Vegas, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role
1996 · Leaving Las Vegas, 
New York Film Critics Circle Award for Best Actor
1995 · Leaving Las Vegas, 
MTV Movie Award for Best On-Screen Duo
1998, 1997 · Face/Off, The Rock, 
National Society of Film Critics Award for Best Actor
1996 · Leaving Las Vegas, 
National Board of Review Award for Best Actor
1995 · Leaving Las Vegas, 
Los Angeles Film Critics Association Award for Best Actor
1995 · Leaving Las Vegas', N'Nicolas Kim Coppola, known professionally as Nicolas Cage, is an American actor and filmmaker. During his early career, Cage starred in a variety of films such as Valley Girl, Racing with the Moon', 1, N'https://en.wikipedia.org/wiki/Nicolas_Cage')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1160, N'Liev Schreiber
', N'liev_schreiber.jpg', N' October 4, 1967 (age 51 years)', N' San Francisco, California, United States', N'American', N'2000
Golden Globe Awards	Best Actor – Miniseries or Television Film, 2005
Tony Awards	Best Featured Actor in a Play, Saturn Awards	Best Supporting Actor, 2007
Tony Awards	Best Actor in a Play', N'Isaac Liev Schreiber is an American actor, director, screenwriter, and producer. He became known during the late 1990s and early 2000s, having appeared in several independent films, and later mainstream', 1, N'https://en.wikipedia.org/wiki/Liev_Schreiber')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1161, N'Lauren Vélez
', N'Lauren_Velez.jpg', N'November 2, 1964 (age 54 years)', N' Brooklyn, New York, United States', N'American, Puerto Rican', N'ALMA Award for Favorite TV Actress - Drama
2009, 1996 · Dexter, New York Undercover, 
ALMA Award for Outstanding Actress in a Television Series
2001 · Oz', N'Luna Vélez is an American actress and the twin sister of actress Lorraine Vélez. Her most notable roles are as María LaGuerta on Showtime''s Dexter, Detective Nina Moreno on Fox''s New York Undercover, Dr. Gloria Nathan on HBO''s prison drama Oz, and Elena on ABC''s comedy-drama Ugly Betty', 1, N'https://en.wikipedia.org/wiki/Lauren_V%C3%A9lez')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1162, N'Ryunosuke Kamiki
', N'Ryunosuke_kamiki.jpg', N'May 19, 1993 (age 26 years)', N'Saitama Prefecture, Japan', N'Japanese', N'Japan Academy Award for Newcomer of the Year', N'Ryunosuke Kamiki is a Japanese actor and voice actor from Saitama Prefecture. Kamiki was diagnosed with a life-threatening disease at 2 years old. His mother entered him into the Central Group talent agency as she wanted to "have proof" that he existed', 1, N'https://en.wikipedia.org/wiki/Ryunosuke_Kamiki')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1163, N'Yo Oizumi
', N'Oizumi_Yo.jpg', N'April 3, 1973 (age 46 years)', N'Ebetsu, Hokkaido, Japan', N'Japanese', N'Japan Academy Prize for Outstanding Performance by an Actor in a Leading Role', N'Yo Oizumi is a TV personality and a stage actor based in Hokkaido. He was born in Ebetsu and has been living in Sapporo since 1984', 1, N'https://en.wikipedia.org/wiki/Yo_Oizumi')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1164, N'Tatsuya Gashuin
', N'Tatsuya_Gashuin.jpg', N'December 10, 1950 (age 68 years)', N' Hiroo, Shibuya, Tokyo, Tokyo, Japan', N'Japanese', N'---', N'Tatsuya Gashûin was born on December 10, 1950 in Tokyo, Japan as Akinosuke Sugano. He is an actor, known for Spirited Away (2001), Howl''s Moving Castle (2004) and Shark Skin Man and Peach Hip Girl (1998)', 1, N'https://www.imdb.com/name/nm0309107/')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1165, N'Mari Natsuki
', N'Mari_Natsuki.jpg', N'May 2, 1952 (age 67 years)', N' Toshima, Tokyo, Japan', N'Japanese', N'Best Supporting Actress
Pinpon (2002), Best Supporting Actress
Kita no hotaru (1984) 
Satomi hakken-den (1983) ', N'Junko Nakajima, more commonly known by her stage name Mari Natsuki, is a Japanese singer, dancer and actress. Born in Tokyo, she started work as a singer from a young age. In 2007, Natsuki announced her engagement to percussionist Nobu Saito, with their marriage taking place in Spring 2008', 1, N'https://en.wikipedia.org/wiki/Mari_Natsuki')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1166, N'Yumi Tamai
', N'Yumi_Tamai.jpg', N'August 6, 1977 (age 42 years)', N'Tokyo, Japan', N'Japanese', N'---', N'Yoomi Tamai, is a Japanese actress and singer from Tokyo. She is member of the performance group Psalm', 1, N'https://en.wikipedia.org/wiki/Yoomi_Tamai')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1167, N'Giovanni Ribisi
', N'giovanni-ribisi.jpg', N'December 17, 1974 (age 44 years)', N' Los Angeles, California, United States', N'American', N'Online Film Critics Society Award for Best Ensemble Cast Performance', N'Antonino Giovanni Ribisi is an American film and television actor known for his roles in the TV series Sneaky Pete, and the films Saving Private Ryan, Avatar, A Million Ways to Die in the West and Ted. He also had recurring roles in My Name Is Earl and Friends', 1, N'https://en.wikipedia.org/wiki/Giovanni_Ribisihttps://en.wikipedia.org/wiki/Giovanni_Ribisi')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1168, N'Matt Damon
', N'Matt_Damon.jpg', N'October 8, 1970 (age 48 years)', N' Cambridge, Massachusetts, United States', N'American', N'Academy Award for Best Original Screenplay
1998 · Good Will Hunting, 
Golden Globe Award for Best Screenplay - Motion Picture
1998 · Good Will Hunting, 
Golden Globe Award for Best Actor – Motion Picture Musical or Comedy
2016 · The Martian, 
Critics'' Choice Movie Award for Best Screenplay
1998 · Good Will Hunting, 
Empire Award for Best Actor
2016, 2005 · The Martian, The Bourne Supremacy, 
Satellite Award for Best Original Screenplay
1998 · Good Will Hunting, 
National Board of Review Award for Best Cast
2006 · The Departed, 
People''s Choice Award for Favorite Action Movie Actor
2008, 
Satellite Award for Best Ensemble – Motion Picture
2006 · The Departed, 
BFCA Critics'' Choice Award for Best Breakthrough Performer
1998 · Good Will Hunting', N'Matthew Paige Damon is an American actor, film producer and screenwriter. He is ranked among Forbes magazine''s most bankable stars and is one of the highest-grossing actors of all time', 1, N'https://en.wikipedia.org/wiki/Matt_Damon')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1169, N'Paul Giamatti
', N'Paul_Giamatti.jpg', N'June 6, 1967 (age 52 years)', N' New Haven, Connecticut, United States', N'American
', N'Golden Globe Award for Best Actor – Motion Picture Musical or Comedy
2011 · Barney''s Version, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2005 · Sideways, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role
2006 · Cinderella Man, 
Primetime Emmy Award for Outstanding Lead Actor in a Limited Series or a Movie
2008 · John Adams, 
Critics'' Choice Movie Award for Best Acting Ensemble
2005 · Sideways, 
Independent Spirit Award for Best Male Lead
2005 · Sideways, 
Golden Globe Award for Best Performance by an Actor in a Mini-Series or Motion Picture Made for Television
2009 · John Adams', N'Paul Edward Valentine Giamatti is an American actor and producer. He first garnered attention for his breakout role in Private Parts as Kenny "Pig Vomit" Rushton, which led to him playing more supporting', 1, N'https://en.wikipedia.org/wiki/Paul_Giamatti')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1170, N'Vin Diesel
', N'Vin_Diesel.jpg', N'July 18, 1967 (age 52 years)', N' Alameda County, California, United States', N'American', N'MTV Movie Award for Best On-Screen Duo
2014, 2002 · Fast & Furious 6, The Fast and the Furious, 
Online Film Critics Society Award for Best Ensemble Cast Performance
1999 · Saving Private Ryan', N'Mark Sinclair, better known by his stage name Vin Diesel, is an American actor, producer, director, and screenwriter. After featuring in the epic war film Saving Private Ryan, he rose to international fame with his role as Dominic Toretto in The Fast and the Furious franchise', 1, N'https://en.wikipedia.org/wiki/Vin_Diesel')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1171, N'Benicio del Toro
', N'Benicio_Del_Toro.jpg', N'February 19, 1967 (age 52 years)', N' San Germán, Puerto Rico', N'American, Puerto Rican, Spanish', N'	Chicago Film Critics Association Most Promising Actor, National Board of Review Best Cast, National Board of Review Best Cast, 	Independent Spirit Award	Best Supporting Male, ALMA Award	Outstanding Individual Performance in a Crossover Role, Broadcast Film Critics Association	Best Supporting Actor, Golden Globe Award	Best Supporting Actor – Motion Picture  ', N'Benicio Monserrate Rafael del Toro Sánchez is an actor who won an Academy Award, BAFTA Award, Golden Globe Award and Screen Actors Guild Award for his portrayal of the jaded but morally upright police officer Javier Rodriguez in the film Traffic', 1, N'https://en.wikipedia.org/wiki/Benicio_del_Toro')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1172, N'Chazz Palminteri
', N'chazz_palminteri.jpg', N'May 15, 1952 (age 67 years)', N'The Bronx, New York, United States', N'American', N'Independent Spirit Award for Best Supporting Male
1995 · Bullets over Broadway, 
Outer Critics Circle Special Award
1990, 
Sundance Film Festival Special Jury Prize for Best Ensemble Cast
2006 · A Guide to Recognizing Your Saints', N'Calogero Lorenzo "Chazz" Palminteri is an American actor, screenwriter, producer and playwright. He is best known for his Academy Award-nominated role for Best Supporting Actor in Bullets over Broadway', 1, N'https://en.wikipedia.org/wiki/Chazz_Palminteri')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1173, N'Gabriel Byrne
', N'gabriel_byrne.jpg', N'May 12, 1950 (age 69 years)', N' Walkinstown, Dublin, Ireland', N'Irish
', N'Golden Globe Award for Best Performance by an Actor in a Television Series – Drama
2009 · In Treatment, 
Outer Critics Circle Award for Outstanding Actor in a Play
2006 · A Touch of the Poet', N'Gabriel James Byrne is an Irish actor, film director, film producer, writer, cultural ambassador and audiobook narrator. His acting career began in the Focus Theatre before he joined London''s Royal Court Theatre in 1979. Byrne''s screen debut came in the Irish drama serial The Riordans and the spin-off show Bracken', 1, N'https://en.wikipedia.org/wiki/Gabriel_Byrne')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1174, N'Kevin Pollak
', N'kevin_pollak.png', N'October 30, 1957 (age 61 years)', N'San Francisco, California, United States', N'American
', N'Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Comedy Series', N'Kevin Elliot Pollak is an American actor, impressionist, and comedian. He has appeared in over 80 films; his roles include Sam Weinberg in the legal film A Few Good Men, Jacob Goldman in Grumpy Old Men', 1, N'https://en.wikipedia.org/wiki/Kevin_Pollak')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1175, N'Elizabeth Regen
', N'Elizabeth_Regen.jpg', N'March 12, 1975 (age 44 years)', N' New York, New York, United States', N'American', N'Los Angeles Drama Critics Circle Award for Featured Performance', N'Elizabeth Regen is an American actress best known for her role as Rita Nash in the television sitcom Whoopi, appearing in 22 episodes from 2003-2004. She made her screen debut in the 1994 feature film The Professional, playing the ill fated sister of the main protagonist, Mathilda (played by Natalie Portman). She followed up with roles in the movies', 1, N'https://www.imdb.com/name/nm0716408/')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1176, N'Gary Oldman
', N'Gary-Oldman-Cropped.jpeg', N'March 21, 1958 (age 61 years)', N'New Cross, London, England', N'American, 
British', N'Academy Award for Best Actor
2018 · Darkest Hour, 
Golden Globe Award for Best Actor – Motion Picture – Drama
2018 · Darkest Hour, 
BAFTA Award for Best Actor in a Leading Role
2018 · Darkest Hour, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role
2018 · Darkest Hour, 
BAFTA Award for Best British Film
1998 · Nil by Mouth, 
Critics'' Choice Movie Award for Best Actor
2018 · Darkest Hour, 
BAFTA Award for Best Original Screenplay
1998 · Nil by Mouth, 
AACTA International Award for Best Actor
2018 · Darkest Hour, 
Empire Award for Best Actor
2012 · Tinker Tailor Soldier Spy, 
Empire Icon Award
2011, 
London Film Critics'' Circle Award for Actor of the Year
1987 · Prick Up Your Ears, 
Satellite Award for Best Actor – Motion Picture
2018 · Darkest Hour', N'Gary Leonard Oldman is an English actor and filmmaker who has performed in theatre, film, and television. Known for his versatility and expressive acting style, Oldman is regarded as one of the greatest actors of his generation', 1, N'https://en.wikipedia.org/wiki/Gary_Oldman')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1177, N'Jean Reno
', N'Jean_Reno.jpg', N'July 30, 1948 (age 71 years)', N' Casablanca, Morocco', N'French, 
Moroccan', N'European Film Academy Achievement in World Cinema Award
2000, 
François Truffaut Award
2012, 
National Order of Merit
2003', N'Juan Moreno y Herrera-Jiménez, known as Jean Reno, is a French actor of Spanish descent. He has worked in French, English, Japanese, Spanish, and Italian productions, and appeared in films such as', 1, N'https://en.wikipedia.org/wiki/Jean_Reno')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1178, N'Natalie Portman
', N'Natalie_Portman.jpg', N'June 9, 1981 (age 38 years)', N' Jerusalem, Israel
Height: 1.6 m', N'American, 
Israeli', N'Golden Globe Award for Best Supporting Actress, Academy Award for Best Actress, British Academy Film Awards', N'Natalie Portman is an actress and filmmaker with dual Israeli and American citizenship. She is the recipient of various accolades, including an Academy Award and two Golden Globe Awards. Portman made her feature film debut as the young protégée of a hitman in the action film Léon: The Professional', 1, N'https://en.wikipedia.org/wiki/Natalie_Portman')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1179, N'Samy Naceri
', N'Samy_Naceri.jpg', N'July 2, 1961 (age 58 years)', N' 4th arrondissement, Paris, France', N'French', N'Cannes Best Actor Award', N'Saïd "Samy" Naceri is a French actor known for his work in the four Taxi films and The Code', 1, N'https://en.wikipedia.org/wiki/Samy_Naceri')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1180, N'David Morse
', N'David_Morse.jpg', N'October 11, 1953 (age 65 years)', N' Beverly, Massachusetts, United States', N'American
', N'Drama Desk Award for Outstanding Actor in a Play
1997 · How I Learned to Drive, 
Gotham Independent Film Award for Best Ensemble Performance
2009 · The Hurt Locker, 
Obie Award for Performance
1997 · How I Learned to Drive, 
Washington D.C. Area Film Critics Association Award for Best Ensemble
2009 · The Hurt Locker, 
Lucille Lortel Award for Outstanding Lead Actor
1997 · How I Learned to Drive
', N'David Bowditch Morse is an American actor, singer, director and writer. He first came to national attention as Dr. Jack "Boomer" Morrison in the medical drama series St. Elsewhere', 1, N'https://en.wikipedia.org/wiki/David_Morse')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1181, N'James Cromwell
', N'james-cromwell-arrest.jpg', N'January 27, 1940 (age 79 years)', N' Los Angeles, California, United States', N'American
', N'Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or a Movie
2013 · American Horror Story, 
Canadian Screen Award for Best Performance by an Actor in a Leading Role
2013 · Still Mine, 
Bronze Wrangler for Theatrical Motion Picture
2003 · Spirit: Stallion of the Cimarron
', N'James Oliver Cromwell is an American actor. Some of his more notable films include Babe, Star Trek: First Contact, L.A. Confidential, The Green Mile, Space Cowboys, The Sum of All Fears, I, Robot, The', 1, N'https://en.wikipedia.org/wiki/James_Cromwell')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1182, N'Michael Clarke Duncan
', N'michael_clarke_duncan.jpg', N'December 10, 1957', N'Chicago, Illinois, United States', N'American', N'Academy Award for Best Actor in a Supporting Role
2000 · The Green Mile, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2000 · The Green Mile, 
Golden Globe Award for Best Supporting Actor – Motion Picture
2000 · The Green Mile, 
NAACP Image Award for Outstanding Actor in a Motion Picture
2000 · The Green Mile, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role
2000 · The Green Mile, 
NAACP Image Award for Outstanding Actor in a Drama Series
2013 · The Finder, 
MTV Movie Award for Best Breakthrough Performance - Male
2000 · The Green Mile, 
VGX Award for Best Supporting Male Performance
2005 · The Suffering: Ties That Bind', N'Michael Clarke Duncan was an American actor best known for his breakout role as John Coffey in The Green Mile, for which he was nominated for the Academy Award for Best Supporting Actor and various similar honors', 1, N'https://en.wikipedia.org/wiki/Michael_Clarke_Duncan')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1183, N'Sam Rockwell
', N'sam_rockwell.png', N'November 5, 1968 (age 50 years)', N' Daly City, California, United States', N'American', N'Academy Award for Best Actor in a Supporting Role
2018 · Three Billboards Outside Ebbing, Missouri, 
Golden Globe Award for Best Supporting Actor – Motion Picture
2018 · Three Billboards Outside Ebbing, Missouri, 
BAFTA Award for Best Actor in a Supporting Role
2018 · Three Billboards Outside Ebbing, Missouri, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2018 · Three Billboards Outside Ebbing, Missouri, 
Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role
2018 · Three Billboards Outside Ebbing, Missouri, 
Critics'' Choice Movie Award for Best Supporting Actor
2018 · Three Billboards Outside Ebbing, Missouri', N'Sam Rockwell is an American actor. He became known for his leading roles in Lawn Dogs, Confessions of a Dangerous Mind, Matchstick Men, The Hitchhiker''s Guide to the Galaxy, Moon, and Seven Psychopaths', 1, N'https://en.wikipedia.org/wiki/Sam_Rockwell')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1184, N'Anne Hathaway
', N'annehathaway.jpg', N'November 12, 1982 (age 36 years)', N' Brooklyn, New York, United States', N'American', N'Academy Award for Best Actress in a Supporting Role
2013 · Les Misérables, 
Golden Globe Award for Best Supporting Actress – Motion Picture
2013 · Les Misérables, 
BAFTA Award for Best Actress in a Supporting Role
2013 · Les Misérables, 
Critics'' Choice Movie Award for Best Actress
2009 · Rachel Getting Married
Screen Actors Guild Award for Outstanding Performance by a Female Actor in a Supporting Role
2013 · Les Misérables, 
Critics'' Choice Movie Award for Best Supporting Actress
2013 · Les Misérables, 
Saturn Award for Best Supporting Actress
2013 · The Dark Knight Rises, 
Primetime Emmy Award for Outstanding Voice-Over Performance
2010 · The Simpsons, 
Satellite Award for Best Supporting Actress – Motion Picture
2012 · Les Misérables, 
Teen Choice Award for Choice Movie Actress: Action/Adventure
2013 · The Dark Knight Rises, 
Teen Choice Award for Choice Movie Actress – Comedy
2009 · Bride Wars, 
National Board of Review Award for Best Actress
2008 · Rachel Getting Married, 
Satellite Award for Best Actress in Motion Picture - Comedy or Musical
2010 · Love & Other Drugs
', N'Anne Jacqueline Hathaway is an American actress and singer. One of the highest-paid actresses in the world in 2015, she has received multiple awards, including an Academy Award, a Primetime Emmy Award, and a Golden Globe', 1, N'https://en.wikipedia.org/wiki/Anne_Hathaway')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1185, N'Jessica Chastain
', N'Jessica_Chastain.jpg', N'March 24, 1977 (age 42 years)', N' Sonoma, California, United States', N'American', N'Golden Globe Award for Best Actress – Motion Picture – Drama
2013 · Zero Dark Thirty, 
Critics'' Choice Movie Award for Best Actress
2013 · Zero Dark Thirty, 
Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture
2012 · The Help, 
Critics'' Choice Movie Award for Best Acting Ensemble
2012 · The Help, 
Satellite Award for Best Supporting Actress – Motion Picture
2011 · The Tree of Life, 
National Board of Review Award for Best Actress
2012 · Zero Dark Thirty, 
National Society of Film Critics Award for Best Supporting Actress
2012 · The Help, The Tree of Life, Take Shelter, 
New York Film Critics Circle Award for Best Supporting Actress
2011 · The Help, The Tree of Life, Take Shelter, 
National Board of Review Award for Best Supporting Actress
2014 · A Most Violent Year, 
Critics'' Choice MVP Award
2015 · Interstellar, A Most Violent Year, The Disappearance of Eleanor Rigby: Them, 
Chicago Film Critics Association Award for Best Supporting Actress
2011 · The Tree of Life, 
National Board of Review Award for Best Cast
2011 · The Help, 
Satellite Award for Best Ensemble – Motion Picture
2011 · The Help', N'Jessica Michelle Chastain is an American actress and producer. She is known for her portrayals of strong-willed women in films with feminist themes. Chastain''s accolades include a Golden Globe Award and two Academy Award nominations. Time magazine named her one of the 100 most influential people in the world in 2012', 1, N'https://en.wikipedia.org/wiki/Jessica_Chastain')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1186, N'Matthew McConaughey
', N'Matthew_McConaughey.jpg', N'November 4, 1969 (age 49 years)', N' Uvalde, Texas, United States', N'American
', N'The actor took home the Oscar for his portrayal of AIDS patient Ron Woodroof. Matthew McConaughey won the Oscar for best actor for his performance in Dallas Buyers Club on Sunday during the 86th Academy Awards', N'Matthew McConaughey is an American actor and producer. He first gained notice for his supporting performance in the coming-of-age comedy Dazed and Confused, which is considered by many to be the actor''s breakout role', 1, N'https://en.wikipedia.org/wiki/Matthew_McConaughey')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1187, N'Wes Bentley
', N'Wes_Bentley.jpg', N'September 4, 1978 (age 40 years)', N' Jonesboro, Arkansas, United States', N'American
', N'1999	National Board of Review	Best Male Breakthrough Performance, 	BAFTA Awards	Best Actor in a Supporting Role, Blockbuster Entertainment Awards	Favorite Supporting Actor – Drama, Chicago Film Critics Association Awards	Most Promising Actor, MTV Movie Awards	Breakthrough Male Performance, 2007	Fright Meter Awards	Best Actor, 2017	MTV Movie & TV Awards Best Villain', N'Wesley Cook Bentley is an American actor known for blockbusters and independent films. Bentley is best known for his roles as Ricky Fitts in American Beauty, which earned him a nomination for a BAFTA', 1, N'https://en.wikipedia.org/wiki/Wes_Bentley')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1188, N'Mackenzie Foy
', N'Mackenzie_Foy.jpg', N'November 10, 2000 (age 18 years)', N' Los Angeles, California, United States', N'American
', N'Nominated for Best Performance in a Feature Film by a Supporting Young Actress at the 34th Annual Young Artist Awards for her role as Renesmee in The Twilight Saga: Breaking Dawn - Part 2. In 2015, was nominated for Best Movie Actress in Sci-Fi/Fantasy at the Teen Choice Awards for her role as Murph in Interstellar.', N'Mackenzie Christine Foy is an American actress. She is best known as Renesmee Cullen in the 2012 film The Twilight Saga: Breaking Dawn – Part 2, which earned her a Young Artist Award nomination as Best', 1, N'https://en.wikipedia.org/wiki/Mackenzie_Foy')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1189, N'Anthony Perkins
', N'anthony-perkins-9437779-1-402.jpg', N'April 4, 1932', N' New York, New York, United States', N'American', N'Cannes Best Actor Award
1961 · Goodbye Again, 
Golden Globe Award for Best New Star of the Year – Actor
1957, 
David di Donatello for Best Foreign Actor
1962 · Goodbye Again, 
Edgar Award for Best Motion Picture Screenplay
1974 · The Last of Sheila', N'Anthony Perkins was an American actor and singer. He was nominated for the Academy Award for Best Supporting Actor for his second film, Friendly Persuasion, but is best known for playing Norman Bates in Alfred Hitchcock''s Psycho and its three sequels', 1, N'https://en.wikipedia.org/wiki/Anthony_Perkins')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1190, N'Janet Leigh
', N'Janet_Leigh.jpg', N'July 6, 1927', N'Merced, California, United States', N'American', N'Golden Globe Award for Best Supporting Actress – Motion Picture', N'Janet Leigh was an American actress, singer, dancer, and author. Raised in Stockton, California, by working-class parents, Leigh was discovered at age eighteen by actress Norma Shearer, who helped her secure a contract with Metro-Goldwyn-Mayer', 1, N'https://en.wikipedia.org/wiki/Janet_Leigh')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1191, N'Lurene Tuttle
', N'Lurene_Tuttle.jpg', N'August 29, 1907', N' Pleasant Lake, Indiana, United States', N'American', N'Outstanding Performance by an Actress in a Supporting Role in Comedy
Julia (1968) ', N'Lurene Tuttle was an American character actress and acting coach, who made the transition from vaudeville to radio, and later films and television. Her most enduring impact was as one of network radio''s more versatile actresses', 1, N'https://en.wikipedia.org/wiki/Lurene_Tuttle')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1192, N'Vera Miles
', N'Vera_Miles.jpg', N'August 23, 1929 (age 89 years)', N'Boise City, Oklahoma, United States', N'American', N'
1960	Winner
Star on the Walk of Fame Television', N'Vera June Miles is a retired American actress who worked closely with Alfred Hitchcock, most notably as Lila Crane in the classic 1960 film Psycho, reprising the role in the 1983 sequel Psycho II', 1, N'https://en.wikipedia.org/wiki/Vera_Miles')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1193, N'Edward Furlong
', N'Edward_Furlong.jpg', N'August 2, 1977 (age 42 years)', N'Glendale, California, United States
', N'American', N'MTV Movie Award for Best Breakthrough Performance', N'Edward Walter Furlong is an American actor and musician. Furlong won Saturn and MTV Movie Awards for his breakthrough performance as John Connor in Terminator 2: Judgment Day', 1, N'https://en.wikipedia.org/wiki/Edward_Furlong')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1194, N'Elliott Gould
', N'Elliott_Gould.jpg', N'August 29, 1938 (age 80 years)', N' Brooklyn, New York, United States', N'American', N'Best Actor in a Supporting Role
Bob & Carol & Ted & Alice (1969) , Best Actor in a Motion Picture - Comedy or Musical
MASH (1970) , Best Actor
Bob & Carol & Ted & Alice (1969) 
MASH (1970', N'Elliott Gould is an American actor. He began acting in Hollywood films during the 1960s. In addition to his performance in the comedy Bob & Carol & Ted & Alice, for which he received a nomination for ', 1, N'https://en.wikipedia.org/wiki/Elliott_Gould')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1195, N'Ethan Suplee
', N'Ethan_Suplee.jpeg', N'May 25, 1976 (age 43 years)', N' Manhattan, New York, United States', N'American', N'2006	Screen Actors Guild Award	Outstanding Performance by an Ensemble in a Comedy Series Shared with Jason Lee, Jaime Pressly, Eddie Steeples, and Nadine Velazquez, 2007	Golden Nymph	Outstanding Actor – Comedy Series', N'Ethan Suplee is an American film and television actor best known for his roles as Seth Ryan in American History X, Louie Lastik in Remember the Titans, Frankie in Boy Meets World, Randy Hickey in My Name Is Earl, Toby in The Wolf of Wall Street, Elwood in Without a Paddle, and his roles in Kevin Smith films', 1, N'https://en.wikipedia.org/wiki/Ethan_Suplee')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1196, N'Fairuza Balk
', N'Fairuza-Balk.jpg', N'May 21, 1974 (age 45 years)', N' Point Reyes, California, United States', N'American', N'Independent Spirit Award for Best Female Lead
1993 · Gas Food Lodging, 
MTV Movie Award for Best Fight
1997 · The Craft, 
Online Film Critics Society Award for Best Ensemble Cast Performance
2001 · Almost Famous', N'Fairuza Balk is an American actress and musician. She made her theatrical film debut as Dorothy Gale in Disney''s 1985 film Return to Oz. Balk also appeared in Valmont, The Craft, The Island of Dr. Moreau, American History X, The Waterboy, Almost Famous, and Personal Velocity: Three Portraits', 1, N'https://en.wikipedia.org/wiki/Fairuza_Balk')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1197, N'Al Ernest Garcia
', N'Al_Ernest_Garcia.jpg', N'March 11, 1887', N'San Francisco, California, United States', N'American', N'---', N'Allan Ernest Garcia was an American actor and casting director, best known for his long association with Charlie Chaplin', 1, N'https://en.wikipedia.org/wiki/Al_Ernest_Garcia')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1198, N'Charlie Chaplin
', N'charlie-chaplin-31776270-345-4981.png', N'April 16, 1889', N'Walworth, London, United Kingdom', N'British', N'Academy Honorary Award
1972, 1929 · The Circus, 
Academy Award for Best Original Music Score
1973 · Limelight, 
BAFTA Fellowship
1976, 
Kinema Junpo Award for Best Film of the Year
1925 · A Woman of Paris, 
New York Film Critics Circle Award for Best Actor
1940 · The Great Dictator, 
Golden Lion for Lifetime Achievement
1972, 
Bodil Award for Best American Film
1949 · Monsieur Verdoux, 
Erasmus Prize
1965, 
Jussi Award for Best Foreign Filmmaker
1974 · The Great Dictator, Modern Times
Bodil Honorary Award, 
1959
DGA Honorary Life Member Award
1974, 
Kinema Junpo Award for Best Foreign Language Film
1961, 1953, 1927 · The Great Dictator, Monsieur Verdoux, The Gold Rush, 
Blue Ribbon Awards for Best Foreign Film
1953 · Monsieur Verdoux', N'Sir Charles Spencer Chaplin KBE was an English comic actor, filmmaker, and composer who rose to fame in the era of silent film. He became a worldwide icon through his screen persona, "The Tramp", and is considered one of the most important figures in the history of the film industry', 1, N'https://en.wikipedia.org/wiki/Charlie_Chaplin')
GO
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1199, N'Florence Lee
', N'Florence_Lee.jpg', N' February 1864', N'South Carolina, United States', N'American', N'It looks like we don''t have any Awards for Florence Lee yet.', N'Florence Lee was an American silent era actress who appeared in over 90 films between 1911 and 1931. She is perhaps best known to modern audiences for her last film role, that of the blind girl''s grandmother in Charlie Chaplin''s City Lights. She also appeared in some Our Gang movies during the 1920s', 1, N'https://en.wikipedia.org/wiki/Florence_Lee_(born_1864)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1306, N'Virginia Cherrill', N'Virginia_Cherrill_prom.jpg', N'April 12, 1908', N'Carthage, Illinois, United States', N'American', N' 1960	Winner Star on the Walk of Fame	Motion Picture On 8 February 1960. At 1545 Vine Street.', N'Virginia Cherrill was born on a farm in rural Carthage, Illinois, to James E. and Blanche (née Wilcox) Cherrill.[1] She initially did not plan on a film career, but her friendship with Sue Carol (who would later marry Alan Ladd) eventually drew her to Hollywood. She had been voted "Queen of the Artists Ball" in Chicago in 1925', 1, N'https://en.wikipedia.org/wiki/Virginia_Cherrill')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1307, N'Harry Myers', N'Harry_Myers.jpg', N'September 5, 1882', N' New Haven, Connecticut, United States', N'American', N'It looks like we don''t have any Awards for Harry Myers yet.', N'Harry C. Myers was an American film actor and director, sometimes credited as Henry Myers', 1, N'https://en.wikipedia.org/wiki/Harry_Myers')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1308, N'Claude Rains', N'Claude_Rains.jpg', N'November 10, 1889', N' Camberwell, London, United Kingdom', N'American, English', N'Tony Award for Best Lead Actor in a Play', N'William Claude Rains was an English–American film and stage actor whose career spanned several decades', NULL, N'https://en.wikipedia.org/wiki/Claude_Rains')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1309, N'Dooley Wilson', N'dooley-wilson.jpg', N' April 3, 1886', N'Tyler, Texas, United States', N'American', N'Grammy Hall of Fame', N'Arthur "Dooley" Wilson was an American actor, singer and musician who is best remembered as Sam in the 1942 film, Casablanca; in the film, he also performed its theme song, "As Time Goes By". Wilson was a drummer and singer who led his own band in the 1920s, touring nightclubs in London and Paris', 1, N'https://en.wikipedia.org/wiki/Dooley_Wilson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1310, N'Humphrey Bogart', N'humphrey-bogart-9217486-1-402.jpg', N'December 25, 1899', N' New York, New York, United States', N'American', N'Academy Award for Best Actor', N'Humphrey DeForest Bogart was an American film and theater actor. His performances in numerous films from the Classical Hollywood era made him a cultural icon. In 1999, the American Film Institute selected him as the greatest male star of classic American cinema. Bogart began acting in Broadway shows after World War I', 1, N'https://en.wikipedia.org/wiki/Humphrey_Bogart')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1311, N'Ingrid Bergman', N'ingrid-bergman-portrait-00m-ncz.jpg', N' August 29, 1915', N'Stockholm, Sweden', N'Swedish', N'Academy Award for Best Actress 1957, 1945 · Anastasia, Gaslight,  Academy Award for Best Actress in a Supporting Role 1975 · Murder on the Orient Express,  Golden Globe Award for Best Actress – Motion Picture – Drama 1957, 1946, 1945 · Anastasia, The Bells of St. Mary''s, Gaslight,  New York Film Critics Circle Award for Best Actress 1978 · Autumn Sonata,  BAFTA Award for Best Actress in a Supporting Role 1975 · Murder on the Orient Express,  Tony Award for Best Lead Actress in a Play 1947 · Joan of Lorraine, Happy Birthday,  Volpi Cup for Best Actress 1952 · Europe ''51,  Primetime Emmy Award for Outstanding Lead Actress in a Limited Series or a Movie 1982 · A Woman Called Golda', N'Ingrid Bergman was a Swedish actress who starred in a variety of European and American films. She won many accolades, including three Academy Awards, two Primetime Emmy Awards, a Tony Award, four Golden Globe Awards, and a BAFTA Award', 1, N'https://en.wikipedia.org/wiki/Ingrid_Bergman')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1312, N'Peter Lorre', N'Peter-Lorre.jpg', N'June 26, 1904', N'Austria-Hungary', N'American', N'German Film Award - Honorable Mention', N'Peter Lorre was a Hungarian-born American character actor of Jewish descent. Lorre began his stage career in Vienna before moving to Germany where he worked first on the stage, then in film in Berlin in the late 1920s and early 1930s', 1, N'https://en.wikipedia.org/wiki/Peter_Lorre')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1313, N'Charles Bronson', N'Charles_Bronson_1966.jpg', N'November 3, 1921', N' Ehrenfeld, Pennsylvania, United States', N'American, Lithuanian', N'Purple Heart, Golden Globe Henrietta Award for World Film Favorites 1972', N'Charles Bronson was an American actor. He was often cast in the role of a police officer, gunfighter, or vigilante in revenge-oriented plot lines, had long-term collaborations with film directors Michael Winner and J. Lee Thompson, and appeared in fifteen films with his second wife Jill Ireland', 1, N'https://en.wikipedia.org/wiki/Charles_Bronson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1315, N'Claudia Cardinale', N'Claudia_Cardinale.jpg', N'April 15, 1938 (age 81 years)', N'La Goulette, Tunisia', N'Italian', N'David di Donatello for Best Actress 1972, 1968 · A Girl in Australia, Mafia,  Golden Lion for Lifetime Achievement 1993,  David di Donatello Special Award 1997, 1961 · Girl with a Suitcase,  Golden Orange Award for Best Actress (National) 2010 · Being Italian with Signora Enrica,  Faten Hamama Honorary Award 2015,  David di Donatello Alitalia Award 1988,  Golden Eagle Special Award for Outstanding Contribution to the World Cinema 2011,  Golden Bear Honorary Award', N'Claudia Cardinale is an Italian Tunisian film actress who appeared in some of the most acclaimed European films of the 1960s and 1970s, mainly Italian or French, but also in several English films', 1, N'https://en.wikipedia.org/wiki/Claudia_Cardinale')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1317, N'Frank Braña', N'Frank_Brana.jpg', N'February 24, 1934', N'Pola de Allande, Spain', N'Spanish', N'It looks like we don''t have any Awards for Frank Braña yet.', N'Frank Braña (born Francisco Braña Pérez; 24 February 1934 – 13 February 2012) was a Asturian born Spanish film actor.', 1, N'https://en.wikipedia.org/wiki/Frank_Bra%C3%B1a')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1318, N'Jason Robards', N'Jason_Robards.png', N'July 26, 1922', N'Chicago, Illinois, United States', N'American', N'Academy Award for Best Actor in a Supporting Role 1978, 1977 · Julia, All the President''s Men,  Kennedy Center Honors 1999,  Cannes Best Actor Award 1962 · Long Day''s Journey Into Night,  Tony Award for Best Lead Actor in a Play 1959 · The Disenchanted,  Primetime Emmy Award for Outstanding Lead Actor in a Limited Series or a Movie 1988 · Inherit the Wind,  National Board of Review Award for Best Actor 1962 · Long Day''s Journey Into Night, Tender Is the Night,  National Society of Film Critics Award for Best Supporting Actor 1977 · All the President''s Men,  Drama Desk Award for Outstanding Performance 1974 · A Moon for the Misbegotten', N'Jason Nelson Robards Jr. was an American stage, film, and television actor. He was a winner of a Tony Award, two Academy Awards and an Emmy Award. He was also a United States Navy combat veteran of World War II', 1, N'https://en.wikipedia.org/wiki/Jason_Robards')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1319, N'Henry Bergman', N'Henry_Bergman.jpg', N'February 23, 1868', N' San Francisco, California, United States', N'American', N'Children  including: Linn Ullmann Eva Bergman Mats Bergman Anna Bergman Daniel Bergman, Awards	Goethe Prize Praemium Imperiale Academy Award BAFTA Fellowship', N'Henry Bergman was an American actor of stage and film, known for his long association with Charlie Chaplin', 1, N'https://en.wikipedia.org/wiki/Henry_Bergman')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1320, N'Paulette Goddard', N'Paulette_Goddard.jpg', N'June 3, 1910', N'Whitestone, New York, United States', N'American', N' 1944 Nominee Oscar Best Actress in a Supporting Role So Proudly We Hail! (1943), 1967	Nominee Silver Goddess	Best Foreign Actress (Mejor Actriz Extranjera) Gli indifferenti (1964) , 1960	Winner Star on the Walk of Fame	Motion Picture On 8 February 1960. At 1652 Vine Street.', N'Paulette Goddard was an American actress, a child fashion model and a performer in several Broadway productions as a Ziegfeld Girl; she became a major star of Paramount Pictures in the 1940s', 1, N'https://en.wikipedia.org/wiki/Paulette_Goddard')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1321, N'Ted Oliver', N'theodore-ted-mccann-seattle-wa-obituary.jpg', N'February 2, 1892', N' Henderson, Kentucky, United States', N'American', N'It looks like we don''t have any Awards for Ted Oliver yet.', N'Ted Oliver was born on February 2, 1892 in Henderson, Kentucky, USA as Virgil Kinely Oliver. He was an actor, known for Modern Times (1936), The Buccaneer (1938) and The Fighting Peacemaker (1926). He died on June 30, 1957 in Los Angeles, California, USA', 1, N'https://www.imdb.com/name/nm0647013/')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1322, N'Tiny Sandford', N'tiny_sandford.jpg', N'February 26, 1894', N'Osage, Iowa, United States', N'American', N'It looks like we don''t have any Awards for Tiny Sandford yet.', N'Stanley J. "Tiny" Sandford was a tall, burly actor who is best remembered for his roles in Laurel and Hardy and Charlie Chaplin films. He was usually cast as a comic heavy, and often played policemen, doormen, prizefighters, or bullies', 1, N'https://en.wikipedia.org/wiki/Tiny_Sandford')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1323, N'Adrien Brody', N'adrien-brody-medium.jpg', N'April 14, 1973 (age 46 years)', N' Woodhaven, New York, United States', N'American', N'Academy Award for Best Actor 2003 · The Pianist,  Leopard Club Award 2017,  César Award for Best Actor 2003 · The Pianist,  National Society of Film Critics Award for Best Actor 2003 · The Pianist,  Boston Society of Film Critics Award for Best Actor 2002 · The Pianist,  Satellite Award for Best Ensemble – Motion Picture 1999 · The Thin Red Line,  Black Reel Award for Outstanding Ensemble 2008 · Cadillac Records', N'Adrien Brody is an American actor and producer. He received widespread recognition and acclaim after starring in Roman Polanski''s The Pianist, for which he won the Academy Award for Best Actor at age twenty-nine, making him the youngest actor to win in that category', 1, N'https://en.wikipedia.org/wiki/Adrien_Brody')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1324, N'Ed Stoppard', N'Ed_Stoppard.jpg', N'September 16, 1974 (age 44 years)', N' London, United Kingdom', N'British', N' 2003	Nominee Eagle	Best Supporting Actor (Najlepsza Drugoplanowa Rola Meska) The Pianist (2002), 2014	Winner Best Actor	Best European Independent Dramatic Short Say Nothing (2013) ', N'Stoppard was born in London, England, the son of playwright Tom Stoppard and physician/author Miriam Stoppard (née Stern). His parents are both from Jewish families', 1, N'https://en.wikipedia.org/wiki/Ed_Stoppard')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1325, N'Emilia Fox', N'emilia-fox-718986.jpg', N'July 31, 1974 (age 45 years)', N' Hammersmith, London, United Kingdom', N'British', N'2009 Nominee Dagger Best Leading Actress Silent Witness (1996),  2003 Winner Best Actress Prendimi l''anima (2002),  2003 Nominee Eagle Best Actress (Najlepsza Glówna Rola Kobieca) The Pianist (2002) ', N'Emilia Rose Elizabeth Fox is an English actress whose film debut was in Roman Polanski''s film The Pianist', 1, N'https://en.wikipedia.org/wiki/Emilia_Fox')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1326, N'Roman Polanski', N'Roman_Polanski.jpg', N'August 18, 1933 (age 85 years)', N' 12th arrondissement of Paris, Paris, France', N'Polish, French', N'Academy Award for Best Director 2003 · The Pianist,  Palme d''Or 2002 · The Pianist,  Golden Bear 1966,  César Award for Best Film 2003, 1980 · The Pianist, Tess,  Golden Globe Award for Best Director - Motion Picture 1975 · Chinatown,  BAFTA Award for Best Film 2003 · The Pianist,  BAFTA Award for Best Direction 2003, 1975 · The Pianist, Chinatown,  Silver Bear for Best Director 2010 · The Ghost Writer,  European Film Award for Best Film 2010 · The Ghost Writer,  Polish Academy Award for Best Film 2003 · The Pianist,  César Award for Best Writing - Adaptation 2012, 2011 · Carnage, The Ghost Writer', N'Rajmund Roman Thierry Polanski is a French-Polish film director, producer, writer, and actor. Since 1978, he has been a fugitive from the U.S. criminal justice system, having fled the country while awaiting sentencing in his sexual abuse case, in which he pleaded guilty to statutory rape', 1, N'https://en.wikipedia.org/wiki/Roman_Polanski')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1327, N'Thomas Kretschmann', N'Thomas_Kretschmann.jpg', N'September 8, 1962 (age 56 years)', N' Dessau, Dessau-Roßlau, Germany', N'German', N' 2004	Nominee Audience Award	Best European Actor Immortel (ad vitam) (2004) , 2003	Nominee Chainsaw Award	Best Supporting Actor Blade II (2002) ,  2010	Nominee Fright Meter Award	Best Actor Rohtenburg (2006) ', N'Thomas Kretschmann is a German actor. He played Lieutenant Hans von Witzland in the 1993 film Stalingrad, Hauptmann Peter Kahn in the 2013 film Stalingrad, Hauptmann Wilm Hosenfeld in The Pianist', 1, N'https://en.wikipedia.org/wiki/Thomas_Kretschmann')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1328, N'Alba Gaia Bellugi', N'Alba_Gaia.jpg', N'March 5, 1995 (age 24 years)', N'Paris, France', N'French', N'2018	Winner A.C.S. Award	Best Actress Manon 20 ans (2017) ', N'Alba Gaïa Bellugi is a French actress of Danish and Italian origin. She is best known for her performance as Elisa in The Intouchables', 1, N'https://en.wikipedia.org/wiki/Alba_Ga%C3%AFa_Bellugi')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1329, N'Anne Le Ny', N'Anne_Le_Ny.jpg', N'December 16, 1962 (age 56 years)', N' Antony, France', N'French', N'César Award for Best Supporting Actress 2012 · The Intouchables,  César Award for Best First Feature Film 2008 · Those Who Remain,  César Award for Best Writing - Original 2008 · Those Who Remain', N'Anne Le Ny is a French actress, screenwriter and film director', 1, N'https://en.wikipedia.org/wiki/Anne_Le_Ny')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1330, N'Audrey Fleurot', N'audrey-fleurot.jpg', N'July 6, 1977 (age 42 years)', N' Mantes-la-Jolie, France', N'French', N'2018 Nominee A.C.S. Award Best Actress Engrenages (2005)  For Season 6, 2016	Nominee A.C.S. Award	Best Actress Un village français (2009),  2015	Nominee A.C.S. Award	Best Actress Un village français (2009) ', N'Audrey Fleurot is a French actress. She is best known for playing the Lady of the Lake in Kaamelott, Joséphine Karlsson in Spiral and Hortense Larcher in Un village français. In 2011, she played Magalie in the international hit, The Intouchables', 1, N'https://en.wikipedia.org/wiki/Audrey_Fleurot')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1331, N'François Cluzet', N'Francois_Cluzet.jpg', N'September 21, 1955 (age 63 years)', N' 9th arrondissement of Paris, Paris, France', N'French', N' César Award for Most Promising Actor, European Film Award for Best Actor, César Award for Best Supporting Actor', N'François Cluzet is a French film and theatre actor. In 2007, Cluzet won a French César Award after starring as a doctor suspected of double homicide in thriller Tell No One. Cluzet may be best known for his role as Philippe in the international hit film The Intouchables', 1, N'https://en.wikipedia.org/wiki/Fran%C3%A7ois_Cluzet')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1332, N'Omar Sy', N'Omar_Sy.jpg', N'January 20, 1978 (age 41 years)', N'Trappes, France', N'French', N'César Award for Best Actor', N'Omar Sy is a French actor and comedian. He is known for his sketches with Fred Testot and his role in The Intouchables, and for his roles in X-Men: Days of Future Past, Jurassic World, and Transformers: The Last Knight', 1, N'https://en.wikipedia.org/wiki/Omar_Sy')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1333, N'Mark Wahlberg', N'Mark_WahlBerg.jpg', N'June 5, 1971 (age 48 years)', N'Dorchester, Boston, Massachusetts, United States', N'American', N'Academy Awards,  Golden Globe Awards,  Screen Actors Guild Awards,  British Academy Television Awards,  Critics'' Choice Movie Awards,  MTV Movie & TV Awards,  People''s Choice Awards,  Teen Choice Awards', N'Mark Robert Michael Wahlberg is an American actor, producer, businessman, model, rapper, singer and songwriter', 1, N'https://en.wikipedia.org/wiki/Mark_Wahlberg')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1334, N'Vera Farmiga', N'vera_farmiga_11_a_p.jpg', N'August 6, 1973 (age 46 years)', N' Clifton, New Jersey, United States', N'American, Ukrainian', N'The British Independent Film Award for Best Performance by an Actress in a British Independent Film 2008 · The Boy in the Striped Pajamas,  People''s Choice Award for Favorite Cable TV Actress 2017,  Saturn Award for Best Actress on Television,  Los Angeles Film Critics Association Award for Best Actress 2005 · Down to the Bone,  Satellite Award for Best Ensemble – Motion Picture 2006 · The Departed,  National Board of Review Award for Best Cast 2006 · The Departed', N'Vera Ann Farmiga is an American actress, director, and producer. Farmiga began her career on stage in the original Broadway production of Taking Sides. She made her television debut in the Fox fantasy series Roar, and her film debut in the drama-thriller Return to Paradise', 1, N'https://en.wikipedia.org/wiki/Vera_Farmiga')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1335, N'Crispin Glover', N'Crispin_Glover_cropped_2010.jpg', N'April 20, 1964 (age 55 years)', N' New York, New York, United States', N'American', N'2004	Nominee Saturn Award	Best Actor Willard (2003),  1986	Nominee Saturn Award	Best Supporting Actor Back to the Future (1985),  2005	Winner Jury Award	Best Narrative Film What Is It? (2005) ', N'Crispin Hellion Glover is an American actor and director. Glover is known for portraying eccentric characters on screen, such as George McFly in Back to the Future, Layne in River''s Edge, unfriendly ', 1, N'https://en.wikipedia.org/wiki/Crispin_Glover')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1336, N'Lea Thompson', N'Lea_Thompson.jpg', N'May 31, 1961 (age 58 years)', N' Rochester, Minnesota, United States', N'American', N'Kids'' Choice Award for Favorite Movie Actress 1990 · Back to the Future Part II,  People''s Choice Award for Favorite Actress in a New TV Series 1996 · Caroline in the City', N'Lea Katherine Thompson is an American actress, director, and television producer. She is best known for her role as Lorraine Baines in the Back to the Future trilogy and as the title character in the 1990s NBC sitcom Caroline in the City', 1, N'https://en.wikipedia.org/wiki/Lea_Thompson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1337, N'Michael J. Fox', N'Michael_J._Fox.jpg', N'June 9, 1961 (age 58 years)', N'Edmonton, Canada', N'American, Canadian', N'2014	Nominee Golden Globe	Best Performance by an Actor in a Television Series - Comedy or Musical The Michael J. Fox Show (2013),  2000	Winner Golden Globe	Best Performance by an Actor in a Television Series - Comedy or Musical Spin City (1996),  1999	Winner Golden Globe	Best Performance by an Actor in a Television Series - Comedy or Musical Spin City (1996),  1998	Winner Golden Globe	Best Performance by an Actor in a Television Series - Comedy or Musical Spin City (1996),  1997	Nominee Golden Globe	Best Performance by an Actor in a Television Series - Comedy or Musical Spin City (1996),  1989	Winner Golden Globe	Best Performance by an Actor in a Television Series - Comedy or Musical Family Ties (1982),  Tied with Judd Hirsch for Dear John (1988) and Richard Mulligan for Empty Nest (1988).', N'Michael Andrew Fox OC, known professionally as Michael J. Fox, is a Canadian-American actor, comedian, author, and film producer with a film and television career spanning from the 1970s. He starred in the Back to the Future trilogy in which he portrayed Marty McFly', 1, N'https://en.wikipedia.org/wiki/Michael_J._Fox')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1338, N'Thomas F. Wilson', N'Tom_Wilson.jpg', N'April 15, 1959 (age 60 years)', N' Philadelphia, Pennsylvania, United States', N'American', N'1991	Winner Saturn Award	Best Supporting Actor Back to the Future Part III (1990) , 2016	Nominee BTVA Television Voice Acting Award	Best Male Lead Vocal Performance in a Television Series Pig Goat Banana Cricket (2015)  As the voice of "Banana".', N'Thomas Francis Wilson Jr. is an American actor, voice-over artist, and podcaster best known for playing Biff Tannen, Griff Tannen and Buford "Mad Dog" Tannen in the Back to the Future trilogy and Coach Ben Fredricks on NBC''s Freaks and Geeks and for his voice-over work in movies, TV shows and video games', 1, N'https://en.wikipedia.org/wiki/Thomas_F._Wilson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1339, N'Arnold Schwarzenegger', N'Arnold_Schwarzenegger.jpg', N'July 30, 1947 (age 72 years)', N'Thal, Austria', N'American, Austrian', N'American Cinematheque Award 1998,  Golden Globe Award for Best New Star of the Year – Actor 1977 · Stay Hungry,  MTV Movie Award for Best Male Performance 1992 · Terminator 2: Judgment Day,  Kids'' Choice Award for Favorite Movie Actor 1993, 1991, 1989 · Kindergarten Cop, Twins,  The Life Career Award 1992,  Laureus World Sports Award for Sport for Good 2003,  Bambi - International Film 1996 · Eraser,  Primetime Emmy Award for Outstanding Documentary or Nonfiction Series 2014 · Years of Living Dangerously,  Kids'' Choice Awards Hall of Fame 1992,  Decoration of Honour for Services to the Republic of Austria Empire Special Honorary Awards 2014,  Cinequest Film Festival Maverick Spirit Awards 2004', N'Arnold Alois Schwarzenegger is an Austrian-American politician, actor, filmmaker, and former professional bodybuilder. He served as the 38th Governor of California from 2003 to 2011. Schwarzenegger began lifting weights at the age of 15', 1, N'https://en.wikipedia.org/wiki/Arnold_Schwarzenegger')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1340, N'Linda Hamilton', N'LindaHamiltonByLuigiNovi.jpg', N'September 26, 1956 (age 62 years)', N'Salisbury, Maryland, United States', N'American', N'MTV Movie Award for Best Female Performance 1992 · Terminator 2: Judgment Day,  MTV Movie Award for Most Desirable Female 1992 · Terminator 2: Judgment Day,  Satellite Award for Best Actress in a Mini-Series & Limited Series or Motion Picture Made for Television 2000 · The Color of Courage', N'Linda Carroll Hamilton is an American actress best known for her portrayal of Sarah Connor in The Terminator film series and Catherine Chandler in the television series Beauty and the Beast, for which she was nominated for two Golden Globe Awards and an Emmy Award', 1, N'https://en.wikipedia.org/wiki/Linda_Hamilton')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1341, N'Mark Christopher Lawrence', N'Mark_Christopher.jpg', N'May 22, 1964 (age 55 years)', N'Compton, California, United States', N'American', N'2018	Winner Actors Award	Best Supporting Actor Skin: The Movie (2018) , 2019	Winner December Award	Best Ensemble Cast Skin: The Movie (2018) ', N'Mark Christopher Lawrence is an American character actor, stand-up comedian and voice-over artist. He is known for his role as esoteric D.J., Tone Def, in the 1994 satirical rap mockumentary, Fear of a Black Hat', 1, N'https://en.wikipedia.org/wiki/Mark_Christopher_Lawrence')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1342, N'Robert Patrick', N'patrick.jpg', N' November 5, 1958 (age 60 years)', N' Marietta, Georgia, United States', N'American', N'2002	Nominee Saturn Award	Best Actor in a Television Series The X Files (1993),  1994	Nominee Saturn Award	Best Actor Fire in the Sky (1993),  1992	Nominee Saturn Award	Best Supporting Actor Terminator 2: Judgment Day (1991)', N'Robert Hammond Patrick Jr. is an American actor. Known for his portrayals of villainous characters, Patrick is a Saturn Award winner with four nominations. Patrick dropped out of college when drama class sparked his interest in acting, and entered film in 1986', 1, N'https://en.wikipedia.org/wiki/Robert_Patrick')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1343, N'Austin Stowell', N'Austin_Stowell.jpg', N'December 24, 1984 (age 34 years)', N' Kensington, Berlin, Connecticut, United States', N'American', N'It looks like we don''t have any Awards for Austin Stowell yet.', N'Austin Stowell is an American actor. He is known for his roles in Dolphin Tale, its sequel Dolphin Tale 2, Love and Honor, Whiplash, and as Francis Gary Powers in Steven Spielberg''s Bridge of Spies', 1, N'https://en.wikipedia.org/wiki/Austin_Stowell')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1344, N'J. K. Simmons', N'jk-simmons-2.jpg', N'January 9, 1955 (age 64 years)', N' Grosse Pointe, Michigan, United States', N'American', N'Academy Award for Best Actor in a Supporting Role 2015 · Whiplash,  Golden Globe Award for Best Supporting Actor – Motion Picture 2015 · Whiplash,  BAFTA Award for Best Actor in a Supporting Role 2015 · Whiplash,  Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Supporting Role 2015 · Whiplash,  Critics'' Choice Movie Award for Best Supporting Actor 2015 · Whiplash,  Satellite Award for Best Supporting Actor – Motion Picture 2015 · Whiplash,  Independent Spirit Award for Best Supporting Male 2015 · Whiplash,  New York Film Critics Circle Award for Best Supporting Actor 2014 · Whiplash,  National Society of Film Critics Award for Best Supporting Actor 2015 · Whiplash,  AACTA International Award for Best Supporting Actor 2015 · Whiplash', N'Jonathan Kimble Simmons is an American actor and voice actor. In television, he is known for playing Dr. Emil Skoda on the NBC series Law & Order, Vernon Schillinger on the HBO series Oz and Assistant Police Chief Will Pope on TNT''s The Closer', 1, N'https://en.wikipedia.org/wiki/J._K._Simmons')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1345, N'Melissa Benoist', N'Melissa_Benoist.jpg', N'October 4, 1988 (age 30 years)', N' Littleton, Colorado, United States', N'American', N'Teen Choice Award for Choice TV Actress: Action', N'Melissa Marie Benoist is an American actress and singer. She has performed on stage and in television and film. She is known for her portrayal of the titular character in the CBS/CW DC Comics–based superhero drama series Supergirl', 1, N'https://en.wikipedia.org/wiki/Melissa_Benoist')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1346, N'Miles Teller', N'Miles_Teller.jpg', N'February 20, 1987 (age 32 years)', N' Downingtown, Pennsylvania, United States', N'American', N'2013	Nominee EDA Special Mention Award	Best Depiction of Nudity, Sexuality, or Seduction The Spectacular Now (2013)  Shared with: Shailene Woodley , 2015	Nominee Chlotrudis Award	Best Actor Whiplash (2014),  2014	Nominee Chlotrudis Award	Best Actor The Spectacular Now (2013), 2011	Nominee Chlotrudis Award	Best Supporting Actor Rabbit Hole (2010) ', N'Miles Alexander Teller is an American actor. An alumnus of New York University''s Tisch School of the Arts, he made his feature film debut in Rabbit Hole, which he followed with supporting roles in', 1, N'https://en.wikipedia.org/wiki/Miles_Teller')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1347, N'Paul Reiser', N'Paul_Reiser.png', N'March 30, 1957 (age 62 years)', N' New York, New York, United States', N'American', N'1998	Nominee Q Award	Best Actor in a Quality Comedy Series Mad About You (1992),  1994	Winner Q Award	Best Actor in a Quality Comedy Series Mad About You (1992),  1993	Nominee Q Award	Best Actor in a Quality Comedy Series Mad About You (1992)', N'Paul Reiser is an American comedian, actor, writer, and musician. He is best known for his roles as Michael Taylor in the 1980s sitcom My Two Dads, Paul Buchman in the NBC sitcom Mad About You, Carter', 1, N'https://en.wikipedia.org/wiki/Paul_Reiser')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1349, N'Anthony Warde', N'anthony-warde.jpg', N'November 4, 1908', N'Pennsylvania, United States', N'American', N'It looks like we don''t have any Awards for Anthony Warde yet.', N'Anthony Warde was a noted American actor who appeared in over 150 films between 1937 and 1964', 1, N'https://en.wikipedia.org/wiki/Anthony_Warde')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1350, N'Grace Kelly', N'Grace_Kelly.jpg', N'November 12, 1929', N'Hahnemann University Hospital, Philadelphia, Pennsylvania, United States', N'American, Monacan', N'Academy Award for Best Actress 1955 · The Country Girl,  Golden Globe Award for Best Actress – Motion Picture – Drama 1955 · The Country Girl,  Golden Globe Award for Best Supporting Actress – Motion Picture 1954 · Mogambo,  Golden Globe Henrietta Award for World Film Favorites 1956,  National Board of Review Award for Best Actress 1954 · Rear Window, Dial M for Murder, The Country Girl', N'DescriptionGrace Patricia Kelly was an American film actress who became Princess of Monaco after marrying Prince Rainier III in April 1956', 1, N'https://en.wikipedia.org/wiki/Grace_Kelly')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1351, N'Raymond Burr', N'Raymond_Burr.jpg', N'May 21, 1917', N'New Westminster, Canada', N'American, Canadian', N'Primetime Emmy Award for Outstanding Continued Performance by an Actor in a Leading Role in a Series 1961 · Perry Mason,  Primetime Emmy Award for Outstanding Continued Performance by an Actor in a Leading Role in a Dramatic Series 1959 · Perry Mason,  Primetime Emmy Award for Best Continuing Performance by an Actor in a Leading Role - Dramatic or Comedy Series 1959 · Perry Mason', N'Raymond William Stacy Burr was a Canadian American actor, primarily known for his title roles in the television dramas Perry Mason and Ironside. He was prominently involved in multiple charitable endeavors, such as working on behalf of the United Service Organizations, the USO', 1, N'https://en.wikipedia.org/wiki/Raymond_Burr')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1352, N'Thelma Ritter', N'Thelma_Ritter.jpg', N'February 14, 1902', N' New York, New York, United States', N'American', N'Tony Award for Best Lead Actress in a Musical', N'Thelma Ritter was an American actress, best known for her comedic roles as working-class characters and her strong New York accent. She received six Academy Award nominations for Best Supporting Actress—more than any other actress in that category—and won one Tony Award for Best Leading Actress in a Musical', 1, N'https://en.wikipedia.org/wiki/Thelma_Ritter')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1353, N'Rowan Atkinson', N'rowan_atkinson.jpg', N'January 6, 1955 (age 64 years)', N'Consett, United Kingdom', N'British', N'British Academy Television Award for Best Entertainment Performance 1990, 1981 · Blackadder, Not the Nine O''Clock News,  Laurence Olivier Award for Best Comedy Performance 1981 · Rowan Atkinson In Revue,  British Comedy Award for Best Entertainment Performer 1990', N'Rowan Sebastian Atkinson CBE is an English actor, comedian and screenwriter best known for his work on the sitcoms Blackadder and Mr. Bean', 1, N'https://en.wikipedia.org/wiki/Rowan_Atkinson')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1354, N'Jeremy Irons', N'Jeremy_Irons.jpg', N'September 19, 1948 (age 70 years)', N'Cowes, United Kingdom', N'British', N'Academy Award for Best Actor 1991 · Reversal of Fortune,  Golden Globe Award for Best Actor – Motion Picture – Drama 1991 · Reversal of Fortune,  New York Film Critics Circle Award for Best Actor 1988 · Dead Ringers,  Tony Award for Best Lead Actor in a Play 1984 · The Real Thing,  National Society of Film Critics Award for Best Actor 1991 · Reversal of Fortune,  Golden Globe Award for Best Supporting Actor in a Series, Miniseries, or Motion Picture Made for Television 2007 · Elizabeth I,  Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or a Movie 2006 · Elizabeth I,  Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Miniseries or Television Movie 2007 · Elizabeth I', N'Jeremy John Irons is an English actor. After receiving classical training at the Bristol Old Vic Theatre School, Irons began his acting career on stage in 1969 and has since appeared in many West End', 1, N'https://en.wikipedia.org/wiki/Jeremy_Irons')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1355, N'Whoopi Goldberg', N'whoopi-2.jpg', N'November 13, 1955 (age 63 years)', N' Chelsea, New York, United States', N'American', N'1991	Winner Oscar	Best Actress in a Supporting Role Ghost (1990) Over the weekend of February 2nd, 2002, the Oscar statuette "disappeared" from a sealed shipping, 1986	Nominee Oscar	Best Actress in a Leading Role The Color Purple (1985), 1993	Nominee Golden Globe	Best Performance by an Actress in a Motion Picture - Comedy or Musical Sister Act (1992),  1991	Winner Golden Globe	Best Performance by an Actress in a Supporting Role in a Motion Picture Ghost (1990),  1986	Winner Golden Globe	Best Performance by an Actress in a Motion Picture - Drama The Color Purple (1985) ', N'Caryn Elaine Johnson, known professionally as Whoopi Goldberg, is an American actress, comedian, author, and television personality. She has been nominated for 13 Emmy Awards and is one of the few entertainers to have won an Emmy Award, a Grammy Award, an Academy Award, and a Tony Award', 1, N'https://en.wikipedia.org/wiki/Whoopi_Goldberg')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1356, N'Matthew Broderick', N'Matthew_Broderick.jpg', N'March 21, 1962 (age 57 years)', N' Manhattan, New York, United States', N'American', N'Tony Award for Best Lead Actor in a Musical 1995 · How to Succeed in Business Without Really Trying,  Tony Award for Best Featured Actor in a Play 1983 · Brighton Beach Memoirs,  Obie Award for Performance 2017 · Evening at the Talk House, Shining City,  Outer Critics Circle Award for Outstanding Actor in a Musical 1995 · How to Succeed in Business Without Really Trying,  Outer Critics Circle Award for Best Debut Performance 1982', N'Matthew Broderick is an American actor, comedian and singer. His roles include the Golden Globe-nominated portrayal of the title character in Ferris Bueller''s Day Off, the voice of the adult Simba in Disney''s The Lion King trilogy, and Leo Bloom in both the Broadway musical The Producers and its 2005 film adaptation', 1, N'https://en.wikipedia.org/wiki/Matthew_Broderick')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1357, N'Moira Kelly', N'Moira.jpg', N'March 6, 1968 (age 51 years)', N'Queens, New York, United States', N'American', N'Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Drama Series', N'Moira Kelly is an American actress. She is best known for portraying Kate Moseley in the 1992 film The Cutting Edge, as well as single mother Karen Roe on the teen drama One Tree Hill', 1, N'https://en.wikipedia.org/wiki/Moira_Kelly')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1358, N'Alfred Molina', N'alfred-molina-138989_828x1104.png', N'May 24, 1953 (age 66 years)', N' Paddington, London, United Kingdom', N'American, English, British', N'Drama Desk Award for Outstanding Featured Actor in a Play 1998 · Art,  Florida Film Critics Circle Award for Best Cast 2000, 1997 · Magnolia, Boogie Nights,  Audie Award for Original Work 2016 · The Starling Project,  Outer Critics Circle Special Award 1998 · Art', N'Alfredo "Alfred" Molina is an English actor and voice artist. He is known for his roles in Raiders of the Lost Ark, Prick Up Your Ears, Enchanted April, Maverick, Species, Boogie Nights, Chocolat, Frida, Luther, Spider-Man 2, The Da Vinci Code, An Education, and Love Is Strange', 1, N'https://en.wikipedia.org/wiki/Alfred_Molina')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1359, N'John Rhys-Davies', N'john_rhys-davies.jpg', N'May 5, 1944 (age 75 years)', N'Salisbury, United Kingdom', N'British', N'Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture 2004 · The Lord of the Rings: The Return of the King,  Critics'' Choice Movie Award for Best Acting Ensemble 2004 · The Lord of the Rings: The Return of the King', N'John Rhys-Davies is a Welsh actor, voice actor and producer, known for his portrayal of Gimli and the voice of Treebeard in the Lord of the Rings trilogy and Sallah in the Indiana Jones films', 1, N'https://en.wikipedia.org/wiki/John_Rhys-Davies')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1360, N'Karen Allen', N'Karen_Allen.jpg', N'October 5, 1951 (age 67 years)', N' Carrollton, Illinois, United States', N'American', N'2009	Nominee Movies for Grownups Award	Best Grownup Love Story Indiana Jones and the Kingdom of the Crystal Skull (2008) Shared with: Harrison Ford, 1985	Nominee Saturn Award	Best Actress Starman (1984),  1982	Winner Saturn Award	Best Actress Raiders of the Lost Ark (1981)', N'Karen Jane Allen is an American film and stage actress. After making her film debut in Animal House, she became best known for her portrayal of Marion Ravenwood opposite Harrison Ford in Raiders of the Lost Ark, a role she later reprised for Indiana Jones and the Kingdom of the Crystal Skull', 1, N'https://en.wikipedia.org/wiki/Karen_Allen')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1361, N'Paul Freeman', N'Paul_Freeman.jpg', N'January 18, 1943 (age 76 years)', N'Barnet, United Kingdom', N'English, British', N'1982	Nominee Saturn Award	Best Supporting Actor Raiders of the Lost Ark (1981),  2001	Winner Best Actor	Morlang (2001) ', N'Paul Freeman is an English actor who has appeared in theatre, television and film. In the United Kingdom, he is best known for his role in the romance TV series Yesterday''s Dreams as Martin Daniels', 1, N'https://en.wikipedia.org/wiki/Paul_Freeman_(actor)')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1362, N'Connie Nielsen', N'Connie-Nielsen-400x600.jpg', N'July 3, 1965 (age 54 years)', N'Frederikshavn, Denmark', N'Danish', N'Bodil Award for Best Actress in a Leading Role', N'Connie Inge-Lise Nielsen is a Danish actress whose first major role in an English language film was a supporting role in The Devil''s Advocate. Her films include Gladiator, Mission to Mars, One Hour Photo, Basic, The Hunted, The Ice Harvest, and Nymphomaniac', 1, N'https://en.wikipedia.org/wiki/Connie_Nielsen')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1363, N'Joaquin Phoenix', N'joaquin-phoenix-358254-1-402.jpg', N'October 28, 1974 (age 44 years)', N'San Juan, Puerto Rico', N'American, Puerto Rican', N'Golden Globe Awards,  Grammy Awards,  Independent Spirit Awards', N'Joaquin Rafael Phoenix is an American actor, producer, and activist. For his work as an actor, Phoenix has received a Grammy Award, a Golden Globe Award and three Academy Award nominations. Phoenix started acting in television series with his brother River Phoenix and sister Summer Phoenix', 1, N'https://en.wikipedia.org/wiki/Joaquin_Phoenix')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1364, N'Russell Crowe', N'russell-crowe-9262435-1-402.jpg', N'April 7, 1964 (age 55 years)', N'Wellington, New Zealand', N'New Zealand', N'Academy Award for Best Actor 2001 · Gladiator,  Golden Globe Award for Best Actor – Motion Picture – Drama 2002 · A Beautiful Mind,  BAFTA Award for Best Actor in a Leading Role 2002 · A Beautiful Mind,  Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Leading Role 2002 · A Beautiful Mind,  Critics'' Choice Movie Award for Best Actor 2002, 2001, 2000 · A Beautiful Mind, Gladiator, The Insider,  AACTA Award for Best Lead Actor 1992 · Romper Stomper,  AACTA Award for Best Supporting Actor 1991 · Proof,  National Society of Film Critics Award for Best Actor 2000 · The Insider,  National Board of Review Award for Best Actor 1999 · The Insider,  Los Angeles Film Critics Association Award for Best Actor 1999 · The Insider,  London Film Critics'' Circle Award for Actor of the Year 2000 · Gladiator,  Australian Film Institute International Award for Best Actor 2009, 2005 · State of Play, Cinderella Man,  Satellite Award for Best Ensemble – Motion Picture 2012 · Les Misérables,  Australian Film Institute Global Achievement Award 2001', N'Russell Ira Crowe is an actor, film producer and musician. Although a New Zealand citizen, he has lived most of his life in Australia', 1, N'https://en.wikipedia.org/wiki/Russell_Crowe')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1365, N'Hugh Jackman', N'Hugh_Jackman.jpg', N'October 12, 1968 (age 50 years)', N'Sydney, Australia', N'British, Australian', N'Golden Globe Award for Best Actor – Motion Picture Musical or Comedy 2013 · Les Misérables,  Tony Award for Best Lead Actor in a Musical 2004 · The Boy from Oz,  MTV Movie Award for Best On-Screen Duo 2017 · Logan,  People''s Choice Award for Favorite Action Movie Star 2012, 2010 · Real Steel, X-Men Origins: Wolverine,  Drama Desk Award for Outstanding Actor in a Musical 2004 · The Boy from Oz Order of Australia,  Teen Choice Award for Choice Movie Actor: Action/Adventure 2009 · X-Men Origins: Wolverine,  Outer Critics Circle Award for Outstanding Actor in a Musical 2004 · The Boy from Oz,  VGX Award for Best Performance by a Human Male 2009 · X-Men Origins: Wolverine,  Primetime Emmy Award for Individual Performance - Variety Or Music Program 2005 · Tony Awards,  Satellite Award for Best Original Song 2012 · Suddenly,  Satellite Award for Best Ensemble – Motion Picture 2012 · Les Misérables,  Kids’ Choice Award for Best Burp 2004,  Australian Film Institute Award for News Limited Readers'' Choice Award 2008,  Grammy Award for Best Compilation Soundtrack for Visual Media 2019 · The Greatest Showman: Original Motion Picture Soundtrack Hollywood Actor Award', N'Hugh Michael Jackman AC is an Australian actor, singer, and producer. He is best known for playing Wolverine in the X-Men film series from 2000 to 2018, a role for which he holds the Guinness World Record for "longest career as a live-action Marvel superhero"', 1, N'https://en.wikipedia.org/wiki/Hugh_Jackman')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1366, N'Rebecca Hall', N'Rebecca_Hall.jpg', N'May 3, 1982 (age 37 years)', N'London, United Kingdom', N'American, British', N'British Academy Television Award for Best Supporting Actress 2010 · Red Riding: 1974,  Gotham Independent Film Award for Best Ensemble Performance 2008 · Vicky Cristina Barcelona,  Independent Spirit Robert Altman Award 2011 · Please Give,  Washington D.C. Area Film Critics Association Award for Best Ensemble 2010 · The Town', N'Rebecca Maria Hall is a British actress of English and American descent who made her first onscreen appearance at age 10 in the 1992 television adaptation of The Camomile Lawn, directed by her father Peter Hall', 1, N'https://en.wikipedia.org/wiki/Rebecca_Hall')
INSERT [dbo].[Actors] ([Id], [Name], [Image], [Born], [Country], [Nationality], [Awards], [Info], [Status], [Wikipedia]) VALUES (1367, N'Francis Ford Coppola', N'Francis-Ford-Coppola.jpg', N'April 7, 1939 (age 80 years)', N'Detroit, Michigan, United States', N'American, Italian', N'2011	Winner Irving G. Thalberg Memorial Award	 1991	Nominee Oscar	Best Picture The Godfather Part III (1990),  Best Director The Godfather Part III (1990), 1971	Winner Oscar	Best Writing, Story and Screenplay Based on Factual Material or Material Not Previously Published or Produced Patton (1970) ', N'Francis Ford Coppola is an American film director, producer, screenwriter, film composer, and vintner. He was a central figure in the New Hollywood filmmaking movement of the 1960s and 1970s', 1, N'https://en.wikipedia.org/wiki/Francis_Ford_Coppola')
SET IDENTITY_INSERT [dbo].[Actors] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Name], [Comment], [Date], [MovieID]) VALUES (1, N'Heyder', N'Good', CAST(N'2019-10-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Comments] ([Id], [Name], [Comment], [Date], [MovieID]) VALUES (2, N'Heyder', N'Perfect', CAST(N'2019-06-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Comments] ([Id], [Name], [Comment], [Date], [MovieID]) VALUES (3, N'Heyder', N'Not Bad', CAST(N'2019-05-05T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (6, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (7, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (8, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (9, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (10, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (11, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (12, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (13, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (14, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (15, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contacts] ([Id], [Name], [Email], [Telephone], [Message]) VALUES (16, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [Name]) VALUES (1, N'3D')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (2, N'Dram')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (3, N'Action')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (4, N'Comedy')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (5, N'History')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (6, N'Romantic')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (7, N'Fantastic')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (8, N'Biography')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (9, N'Family')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (10, N'Teen')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (11, N'Animation')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (12, N'Science Fiction')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (13, N'Mystery')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (14, N'Horror')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (15, N'Adventure')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (16, N'Crime')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (17, N'Psychological')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (18, N'Sports')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (19, N'War')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (20, N'Western')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (21, N'Voltage')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (22, N'Musical')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (23, N'Thriller')
SET IDENTITY_INSERT [dbo].[Genres] OFF
SET IDENTITY_INSERT [dbo].[Logins] ON 

INSERT [dbo].[Logins] ([Id], [Email], [Password]) VALUES (1, N'Admin@code.edu.az', N'AB6oC66FjBGNTFPRexQTIPuf4+CfC5BxNnjll2OId+rUB/7UOtzuvNfNf/VTs8jniw==')
SET IDENTITY_INSERT [dbo].[Logins] OFF
SET IDENTITY_INSERT [dbo].[MovieActors] ON 

INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (1, 1, 1)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (2, 2, 1)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (3, 3, 1)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (4, 4, 1)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (5, 5, 1)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (6, 6, 2)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (7, 7, 2)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (8, 8, 2)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (9, 9, 2)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (10, 10, 2)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (11, 11, 3)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (12, 12, 3)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (13, 13, 3)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (14, 14, 3)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (15, 15, 3)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (16, 16, 4)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (17, 17, 4)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (18, 18, 4)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (19, 19, 4)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (20, 20, 4)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (21, 12, 5)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (22, 21, 5)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (23, 22, 5)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (24, 23, 5)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (25, 24, 5)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (26, 25, 6)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (27, 1025, 6)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (28, 1026, 6)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (29, 1027, 6)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (30, 1028, 6)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (31, 1029, 7)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (32, 1030, 7)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (33, 1031, 7)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (34, 1032, 7)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (35, 1033, 7)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (36, 1034, 8)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (37, 15, 8)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (38, 1035, 8)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (39, 1036, 8)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (40, 1037, 8)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (41, 1038, 9)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (42, 1039, 9)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (43, 15, 9)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (44, 1040, 9)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (45, 1041, 9)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (46, 1042, 10)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (47, 1043, 10)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (48, 1046, 10)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (49, 1044, 10)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (50, 1045, 10)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (51, 1051, 11)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (52, 1047, 11)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (53, 1048, 11)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (54, 1049, 11)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (55, 1050, 11)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (56, 1052, 52)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (57, 1053, 52)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (58, 1054, 52)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (59, 1056, 52)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (60, 1055, 52)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (61, 1057, 12)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (62, 1058, 12)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (63, 1059, 12)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (64, 1060, 12)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (65, 1061, 12)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (66, 1062, 13)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (67, 1063, 13)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (68, 1064, 13)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (69, 1065, 13)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (70, 1066, 13)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (71, 1062, 14)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (72, 1063, 14)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (73, 1064, 14)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (74, 1067, 14)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (75, 1066, 14)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (76, 1068, 15)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (77, 1069, 15)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (78, 1059, 15)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (79, 1070, 15)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (80, 1071, 15)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (81, 1072, 16)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (82, 1073, 16)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (83, 1074, 16)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (84, 1075, 16)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (85, 1076, 16)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (86, 1077, 17)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (87, 1078, 17)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (88, 1079, 17)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (89, 1080, 17)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (90, 1081, 17)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (91, 1082, 18)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (92, 1083, 18)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (93, 1084, 18)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (94, 1085, 18)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (95, 1086, 18)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (96, 1087, 19)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (97, 1088, 19)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (98, 1089, 19)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (99, 15, 19)
GO
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (100, 1090, 19)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (101, 1091, 20)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (102, 1092, 20)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (103, 1093, 20)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (104, 1094, 20)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (105, 1095, 20)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (106, 1096, 21)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (107, 1097, 21)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (108, 1098, 21)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (109, 1099, 21)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (110, 1100, 21)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (111, 1082, 22)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (112, 1083, 22)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (113, 1084, 22)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (114, 1085, 22)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (115, 1086, 22)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (116, 1101, 23)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (117, 1102, 23)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (118, 1103, 23)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (119, 1104, 23)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (120, 1105, 23)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (121, 1106, 24)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (122, 1107, 24)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (123, 1108, 24)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (124, 1109, 24)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (125, 1110, 24)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (126, 1111, 25)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (127, 1112, 25)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (128, 1113, 25)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (129, 1071, 25)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (130, 1114, 25)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (131, 1082, 26)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (132, 1083, 26)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (133, 1084, 26)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (135, 1085, 26)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (136, 1086, 26)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (137, 1115, 27)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (138, 1116, 27)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (139, 1117, 27)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (140, 1118, 27)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (141, 1119, 27)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (142, 1120, 28)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (143, 1121, 28)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (144, 1122, 28)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (145, 1067, 28)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (146, 1123, 28)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (147, 1124, 29)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (148, 1125, 29)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (149, 1083, 29)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (150, 1126, 29)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (151, 1127, 29)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (152, 1128, 30)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (153, 1129, 30)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (154, 1130, 30)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (155, 1131, 30)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (156, 1132, 30)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (157, 1096, 31)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (158, 1059, 31)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (159, 1133, 31)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (160, 1134, 31)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (161, 1135, 31)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (162, 1136, 32)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (163, 1137, 32)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (164, 1138, 32)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (165, 1139, 32)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (166, 1140, 32)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (167, 1106, 33)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (168, 1107, 33)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (169, 1141, 33)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (170, 1108, 33)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (171, 1109, 33)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (172, 1142, 34)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (173, 1143, 34)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (174, 1144, 34)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (175, 1145, 34)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (176, 1146, 34)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (177, 1147, 35)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (178, 1148, 35)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (179, 1149, 35)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (180, 1150, 35)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (181, 1151, 35)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (182, 1152, 36)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (183, 1153, 36)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (184, 1154, 36)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (185, 1155, 36)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (186, 1156, 36)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (187, 1157, 37)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (188, 1158, 37)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (189, 1159, 37)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (190, 1160, 37)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (191, 1161, 37)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (192, 1162, 38)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (193, 1163, 38)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (194, 1164, 38)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (195, 1165, 38)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (196, 1166, 38)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (197, 1167, 39)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (198, 1168, 39)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (199, 1105, 39)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (200, 1169, 39)
GO
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (203, 1172, 40)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (204, 1173, 40)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (205, 1174, 40)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (206, 1134, 40)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (207, 1175, 41)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (208, 1176, 41)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (209, 1177, 41)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (210, 1178, 41)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (212, 1171, 40)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (220, 1179, 41)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (221, 1180, 42)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (222, 1105, 42)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (223, 1181, 42)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (224, 1182, 42)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (225, 1183, 42)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (238, 1170, 39)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (240, 1184, 43)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (241, 1185, 43)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (242, 1186, 43)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (243, 1187, 43)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (244, 1188, 43)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (245, 1189, 44)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (246, 1190, 44)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (247, 1076, 44)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (248, 1191, 44)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (249, 1192, 44)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (250, 1193, 45)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (251, 1194, 45)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (252, 1097, 45)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (253, 1195, 45)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (254, 1196, 45)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (257, 1197, 46)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (258, 1198, 46)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (259, 1199, 46)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (260, 1306, 46)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (261, 1307, 46)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (262, 1308, 47)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (263, 1309, 47)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (264, 1310, 47)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (265, 1311, 47)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (266, 1312, 47)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (267, 1313, 48)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (268, 1315, 48)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (269, 1072, 48)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (270, 1318, 48)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (271, 1317, 48)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (272, 1198, 49)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (273, 1319, 49)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (274, 1320, 49)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (275, 1321, 49)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (276, 1322, 49)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (277, 1323, 50)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (278, 1324, 50)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (279, 1325, 50)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (280, 1326, 50)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (281, 1327, 50)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (282, 1328, 51)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (283, 1329, 51)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (284, 1329, 51)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (285, 1330, 51)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (286, 1331, 51)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (287, 1332, 51)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (288, 1113, 53)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (289, 1168, 53)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (290, 1333, 53)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (291, 1334, 53)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (292, 1118, 53)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (293, 1116, 54)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (294, 1335, 54)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (295, 1336, 54)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (297, 1337, 54)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (299, 1338, 54)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (300, 1339, 55)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (301, 1193, 55)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (302, 1340, 55)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (303, 1341, 55)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (304, 1342, 55)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (305, 1343, 56)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (306, 1344, 56)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (307, 1345, 56)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (309, 1346, 56)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (310, 1347, 56)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (311, 1150, 57)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (312, 1349, 57)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (313, 1350, 57)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (315, 1351, 57)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (316, 1352, 57)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (317, 1353, 58)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (318, 1354, 58)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (319, 1355, 58)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (320, 1356, 58)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (321, 1357, 58)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (322, 1109, 59)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (323, 1358, 59)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (324, 1359, 59)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (325, 1360, 59)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (326, 1361, 59)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (328, 1362, 1059)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (329, 1043, 1059)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (330, 1152, 1059)
GO
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (331, 1363, 1059)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (332, 1364, 1059)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (333, 1069, 1060)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (334, 1071, 1060)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (335, 24, 1060)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (336, 1365, 1060)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (337, 1366, 1060)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (338, 1367, 1061)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (340, 1109, 1061)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (341, 1127, 1061)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (342, 1065, 1061)
INSERT [dbo].[MovieActors] ([Id], [ActorID], [MovieID]) VALUES (343, 1066, 1061)
SET IDENTITY_INSERT [dbo].[MovieActors] OFF
SET IDENTITY_INSERT [dbo].[MovieGenres] ON 

INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1, 1, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (2, 1, 11)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (3, 1, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (4, 2, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (5, 2, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (6, 2, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (7, 3, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (8, 3, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (9, 3, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (10, 4, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (11, 4, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (12, 4, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (13, 4, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (14, 5, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (15, 5, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (16, 5, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (17, 6, 9)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (18, 6, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (19, 6, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (20, 7, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (21, 7, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (22, 7, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (23, 8, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (24, 8, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (25, 8, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (26, 9, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (27, 9, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (28, 10, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (29, 10, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (31, 10, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (32, 11, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (33, 11, 8)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (34, 11, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (35, 12, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (36, 12, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (37, 13, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (38, 13, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (39, 14, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (40, 14, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (41, 15, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (42, 15, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (43, 15, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (44, 16, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (45, 17, 8)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (46, 17, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (47, 17, 5)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (48, 18, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (49, 18, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (50, 18, 19)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (51, 19, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (52, 19, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (53, 20, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (54, 20, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (55, 20, 20)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (56, 21, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (57, 22, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (58, 22, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (59, 22, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (60, 22, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (61, 23, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (62, 23, 6)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (63, 24, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (64, 24, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (65, 24, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (66, 24, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (67, 25, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (68, 26, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (69, 26, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (70, 26, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (71, 26, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (72, 27, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (73, 27, 4)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (74, 28, 8)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (75, 28, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (77, 28, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (78, 29, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (79, 29, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (80, 29, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (81, 30, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (82, 30, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (83, 30, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (84, 31, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (85, 31, 13)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (86, 31, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (87, 32, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (88, 32, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (89, 33, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (90, 33, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (91, 33, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (92, 33, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (93, 34, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (94, 34, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (95, 34, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (96, 35, 9)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (97, 35, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (98, 35, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (99, 36, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (100, 36, 4)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (101, 36, 6)
GO
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (102, 37, 11)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (103, 37, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (104, 37, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (105, 38, 9)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (106, 38, 11)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (107, 38, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (108, 39, 19)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (109, 40, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (110, 40, 13)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (111, 40, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (112, 41, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (113, 41, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (115, 41, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (116, 42, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (117, 42, 7)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (118, 42, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (119, 43, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (120, 44, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (121, 44, 13)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (122, 44, 14)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (123, 45, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (124, 45, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (125, 46, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (126, 46, 4)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (127, 46, 6)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (128, 47, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (129, 47, 6)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (130, 47, 19)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (131, 48, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (132, 48, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (133, 48, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (134, 48, 20)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (135, 49, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (136, 49, 4)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (137, 50, 8)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (138, 50, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (139, 50, 19)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (140, 51, 8)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (141, 51, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (142, 51, 4)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (143, 52, 9)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (144, 52, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (145, 52, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (146, 53, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (147, 53, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (148, 53, 16)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1076, 1, 10)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1078, 59, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1080, 54, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1081, 54, 4)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1082, 54, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1083, 55, 12)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1084, 56, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1085, 57, 23)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1086, 57, 13)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1087, 58, 11)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1088, 58, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1089, 58, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1090, 1, 1)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1091, 59, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1092, 1059, 3)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1093, 1059, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1094, 1059, 15)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1095, 1060, 13)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1096, 1061, 2)
INSERT [dbo].[MovieGenres] ([Id], [MovieID], [GenreID]) VALUES (1097, 1061, 19)
SET IDENTITY_INSERT [dbo].[MovieGenres] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (1, N'pokmon-dedektif-pikachu-pokmon-detective-pikachu-2019.jpg', 1, N'Pokémon Dedektif Pikachu', N'2019 - USA, Japan ', N' 105 Min.', 2019, N'Rob Letterman', 7.1, N'https://www.youtube.com/embed/1roy4o4tqQM', 1, 1, N'Successful private investigator Harry Goodman mysteriously disappears and his 21-year-old son Tim rolls up to find out what''s going on with his father. In this investigation, Tim is helped by his father''s former Pokémon partner, Detective Pikachu. Pikachu is as good a detective as he is humorous and charming. Realizing that they can uniquely deal with each other, Tim and Pikachu join forces in an exciting adventure to solve this complex secret. During his dual adventures in the neon-lit streets of Ryme City, where people and Pokémon live together, he encounters all kinds of Pokémon and unleash a shocking conspiracy that could destroy this peaceful life and threaten the entire Pokémon universe ...', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (2, N'hellboy-3-2019.jpg', 2, N'Hellboy 3', N'2019 - USA ', N'121 Min. ', 2019, N'Neil Marshall ', 5.3, N'https://www.youtube.com/embed/ZsBO4b3tyZg', 1, 1, N'Stuck between the human world and a world full of fantasy creatures, the film seeks to find out which side of Hellboy it belongs to. taking. 
Stranger Things actor David Harbour plays the famous comic book character from hell in the comic book adaptation of Neil Marshall, who we are familiar with in the films The Descent and Doomsday. Mike Mignola''s imagination is based on the character''s new screen adventure, alongside Mignola and Andrew Cosby and Christopher Golden', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (3, N'kaptan-marvel-captain-marvel-2019.jpg', 3, N'Kaptan Marvel - Captain Marvel', N' 2019 - US ', N'124 Min. ', 2019, N' Anna Boden, Ryan Fleck ', 7.1, N'https://www.youtube.com/embed/Z1BCujX3pw8', 1, 1, N'A former American Air Force pilot, Carol Danvers is now a woman who lives a quiet life. But this is about to change. One day he gets special powers in an explosion involving Kree technology. The transformation-winning woman soon becomes Captain Marvel, deciding to use her powers for good. He will now seek justice and protect the weak.', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (4, N'alita-savas-melegi-2019.jpg', 4, N'Alita: Savaş Meleği - Alita: Battle Angel', N' 2019 - USA, Canada ', N'122 Min. ', 2019, N'Robert Rodriguez ', 7.6, N'https://www.youtube.com/embed/U3D2vmWD88w', 1, 1, N'Young Alita, a cyborg, wakes up in a future she doesn''t know who she is or where she came from. A compassionate physician, Ido takes him in and realizes that the heart and soul of a young woman with a remarkable past is beneath the image of cyborg. As Alita tries to get used to her new life, Doctor Ido tries to protect her from her mysterious past. His new friend Hugo wants to help Alita trigger his memories. Meanwhile, the dangerous and corrupt forces that run the city pursue Alita. Realizing he has unprecedented fighting abilities, Alita gains a clue to his past. Faced with dangerous people, Alita will play a key role in saving her friends, family and the world.', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (5, N'avengers-endgame-2019.jpg', 5, N'Yenilmezler 4: Son Oyun - Avengers: Endgame
', N' 2019 - US', N'181 Min.', 2019, N'Anthony Russo, Joe Russo ', 9.1, N'https://www.youtube.com/embed/TcMBFSGVi1c', 1, 1, N'With Thanos (Josh Brolin) taking over the Infinity Glove and establishing his own World balance, half the world, including the superheroes, turned into ashes. The surviving and mourning Avengers have ace from the quantum zone to Black Widow (Scarlett Johansson), Captain America (Chris Evans), Hulk (Mark Ruffalo), Thor (Chris Hemsworth) and Iron Man (Robert Downey Jr.). participating Ant-Man (Paul Rudd) will be the light of hope. We will follow the struggle and sacrifices of the team who will gather their forces for revenge and fight for the last time.', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (6, N'axl-miles-2018.jpg', 6, N'A.X.L. - Miles', N' 2018 - USA ', N'100 Min.', 2018, N'Oliver Daly ', 5.1, N'https://www.youtube.com/embed/--8nr2kt4uk', 1, 1, N'Young biker Miles is an ordinary teenager. However, his ordinary life changes when he meets the technologically advanced robotic dog AXL. Developed with a new generation of artificial intelligence, but the spirit of a dog AXL and Miles become friends. However, this does not prevent the fraudulent military scientists who created the AXL from doing anything to get it back. Realizing the danger of AXL''s capture, Miles works hand in hand with his intelligent and resourceful love Sara to protect his best friend ...', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (7, N'fast-color-2018.jpg', 7, N'Fast Color', N' 2018 - USA ', N'100 Min.', 2018, N'Julia Hart ', 5.7, N'https://www.youtube.com/embed/se9n853lBNo', 1, 1, N'Fast Color, a science fiction, drama and thriller, tells the story of a young woman named Ruth. The young woman whose super powers are discovered by others is forced to flee constantly. Ruth, who has to leave her family and everyone else in her past, has only one place where she can hide and stay away from everything. In order to stay out of sight, Ruth is forced to return home with this lifestyle.', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (8, N'orumcek-adam-evden-uzakta-spider-man-far-from-home-2019.jpg', 8, N'Örümcek Adam: Evden Uzakta - Spider-Man: Far From Home', N'2019 - USA', N'129 Min. ', 2019, N'Jon Watts ', 8.1, N'https://www.youtube.com/embed/DYYtuKyMtY8', 1, 1, N'Spider-Man: Away from Home, the second Spider-Man film in the Marvel Cinematic Universe. In the film, Avengers: Endgame after trying to adapt to the rock Peter Parker, on the one hand, trying to establish a balance between his private life and superhero identity. "Spider-Man Responsibilities" will not be so easy to follow after Peter, who takes a school trip to Europe to get away from his life as a Spider-Man.
', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (9, N'shaft-2019.jpg', 9, N'Shaft', N'2019 - USA', N'111 Min.', 2019, N'Tim Story ', 6.4, N'https://www.youtube.com/embed/lD41XdWcmbY', 1, 1, N'John Shaft Jr. (JJ) is a cyber security expert with a MIT diploma. The young man''s best friend has been murdered, and this death is a major destruction for him. Find out what they did and who killed their friend. Although he is an expert in this business, he only needs an education his father can give to find his friend''s murderers. Unafraid of JJ''s childhood, John Shaft decides to help his son in a difficult time and help him through the swamps of Harlem. In the process, JJ''s FBI badge and his father''s self-identified jacket clash, but they are a family no matter what. Moreover, Shaft has both a personal and professional issue to solve.', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (10, N'shazam-6-guc-shazam-2019.jpg', 10, N'Shazam! 6 Güç - Shazam!', N'2019 - USA ', N'132 Min.', 2019, N' David F. Sandberg ', 7.5, N'https://www.youtube.com/embed/-oD7B7oiBtw', 1, 1, N'Billy Batson, 14, is a desolate child who has fled many foster families. In the last family that took him, he met other orphans, and his best friend was Freddy (Jack Dylan Grazer), the disabled. One day when he travels on the subway, the ancient magician gives Billy the power to turn into an adult superhero when he speaks his name. As Shazam (Zachary Levi), Billy is trying to discover his powers, while the evil Dr. Thaddeus will try to stop Sivana (Mark Strong).', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (11, N'kelebek-papillon-2017.jpg', 11, N'Kelebek - Papillon', N'2017 - USA', N'133 Min.', 2017, N'Michael Noer', 7.1, N'https://www.youtube.com/embed/xqj7XOv9mC8', 1, 1, N'Henri ''Papillon'' Charriere, who was unjustly convicted of murder, is a man involved in minor crimes. However, due to this unjust punishment, he is sent to a high security prison on the island of Satan, which is notorious for its notorious French reputation. In prison he meets Louis Dega. A rich but vulnerable man, Dega agrees to finance his friend''s prison escape in exchange for protection. An interesting friendship begins between the two, and they begin to plan a desertion ...', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (12, N'shawshank.png', 1, N'Esaretin Bedeli - The Shawshank Redemption', N'1994 - USA ', N'142 Min. ', 1994, N'Frank Darabont ', 9.3, N'https://www.youtube.com/embed/6hB3S9bIaco', 0, 1, N'Andy Dufresne (Tim Robbins) is sentenced to two consecutive life terms in prison for the murders of his wife and her lover and is sentenced to a tough prison. However, only Andy knows he didn''t commit the crimes. While there, he forms a friendship with Red (Morgan Freeman), experiences brutality of prison life, adapts, helps the warden, etc., all in 19 years.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (13, N'baba1.jpg', 2, N'Father 1 - The Godfather', N'1972 - USA ', N'175 Min.', 1972, N'Francis Ford Coppola ', 9.2, N'https://www.youtube.com/embed/5DO-nDW43Ik', 0, 1, N'The Corleone family, who emigrated from Sicily, is in a life that they cannot even imagine when they start to use brute force against unidentified people who try to use brute force while they are trying to settle in America and want tribute from every job they try to do. they found it. On the one hand, the extremely strict customary and family life on the other, the Corleone family, which has begun to eradicate what has come before them, has become America''s most feared mafia community. Although they say that they are not a mafia but a family.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (14, N'baba2.jpg', 3, N'Baba 2 - The Godfather Part 2', N'1974 - US', N' 200 Min. ', 1974, N'Francis Ford Coppola ', 9.1, N'https://www.youtube.com/embed/OA1ij0alE0w', 0, 1, N'Young Vito Corleone emigrated from Sicily to New York in the 1910s. He works in a variety of jobs to make a living for his family and starts to rise slowly. Michael Corleone shuttles between Las Vegas, Hollywood and Cuba to organize his family''s business in the 1950s.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (15, N'batman-dark-knight-joker-i13945.jpg', 4, N'Batman 6: The Dark Knight - The Dark Knight', N'2008 - United Kingdom, USA ', N'152 Min. ', 2008, N'Christopher Nolan ', 9, N'https://www.youtube.com/embed/EXeTwQWrcwY', 0, 1, N'In The Dark Knight, Batman takes his battle against crime further: With the help of Lieutenant Jim Gordon and District Attorney Harvey Dent, Batman attempts to clean up what remains of criminal organizations that have covered the city streets. It is clear that this partnership was effective, but the team soon found themselves in the midst of the chaos of criminal genius, known as the Joker, who had previously terrified the inhabitants of Gotham.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (16, N'12angry_man.jpg', 5, N'12 Angry Men - 12 Angry Men', N'1957 - USA ', N'96 Min.', 1957, N' Sidney Lumet ', 8.9, N'https://www.youtube.com/embed/_13J_9B5jEk', 0, 1, N'A young man is on trial for the murder of his father. Sidney Lumet''s masterpiece, which is only in a room and made on speech only, is one of the most important films in the history of cinema.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (17, N'schindler_list.jpg', 6, N'Schindler''s List - Schindler''s List
', N'1993 - USA', N'195 Min.', 1993, N'Steven Spielberg', 8.9, N'https://www.youtube.com/embed/mxphAlJID9U', 0, 1, N'In Nazi Germany during World War II, an enterprising German Oskar Schindler builds a factory that produces metal containers for the military and provides capital and labor for the work through the Jews. Schindler, unable to absorb the oppression of the Jews in the future, makes a long list to save them.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (18, N'lotr_returnoftheking.jpg', 7, N'The Lord of the Rings 3: The Return of the King', N'2003 - USA, New Zealand', N'201 Min.', 2003, N'Peter Jackson ', 8.9, N'https://www.youtube.com/embed/r5X-hFf6Bwo', 0, 1, N'Will Aragorn use the power given to him by his birth when all the fate of Middle-earth is in his hand by answering the call of his race? As all the forces of darkness gather together for the final battle, Gandalf begins preparations to recover Gondor''s wounded army. The necessary support for Gandalf comes from Theoden, King of Rohan. Thoden mobilizes all his warriors for this greatest battle in history. Together with Eowyn and Merry, who are hiding in them, people are weak against the enemies that surround Gondor, despite their courage and their everlasting devotion to their race. Even though they knew they would suffer enormous losses, people were interlocked in the most difficult battle of their lives to divert Sauron''s attention to the completion of the Ring Carrier''s journey.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (19, N'Pulp_Fiction.jpg', 8, N'Pulp Fiction', N'1994 - US ', N'168 Min. ', 1994, N'Quentin Tarantino ', 9, N'https://www.youtube.com/embed/s7EdQ4FqbhY', 0, 1, N'Bounty hunter Butch Coolidge decides to stop paying in an agreement with the devil. Honey Bunny and Pumpkin are a couple of young and in love lovers who want to add some action to their lives. Meanwhile, the gangster, Vincent Vega and Jules, who knows two things well, goes as one of their daily jobs to shoot a couple of dishonest youngsters who delay paying their bosses. While Vincent is also assigned to babysit the boss''s young and beautiful wife, his partner decides to end his criminal life. A brave boxer escapes the city by refusing to cheat for money. Fate will bring these contradictory types together as a result of a fantastic coincidence.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (20, N'goodbadugly.jpg', 9, N'The Good, the Bad and the Ugly', N'1966 - Italy, Spain, Germany ', N'161 Min.', 1966, N'Sergio Leone ', 8.9, N'https://www.youtube.com/embed/WCN5JJY_wiA', 0, 1, N'Tuco (ugly) is a fugitive outlaw. Sniper Blondie (good) in collaboration with the cowboys touring the town. Blondie, who handed Tuco to the law enforcement officers, takes the award and saves Tuco from hanging at the last minute. Partnership is broken when things go wrong in a town. 
Sentenza, nicknamed Melekgöz (the evil), traces a former soldier named Bill Carson who has seized a large amount of gold. When Tuco is about to kill Blondie in the desert, his encounter with Bill Carson changes all plans. Carson hid the gold in a cemetery on a civilized front. However, Tuco was able to learn the location of the cemetery and Blondie could learn the name of the tomb. It is necessary to look for binary gold that returns to cooperation again.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (21, N'fight_clup.jpg', 10, N'Fight Club ', N'1999 - the US, Germany ', N'139 Min.', 1999, N'David Fincher, Choi Kyu-Young ', 8.9, N'https://www.youtube.com/embed/SUXWAEX2jlg', 0, 1, N'He has a good job at a famous car company that tells the film at Fight Club, based on Chuck Palanhiuk''s master''s degree at the University of Oregon, a novel about a confused young man in a distant future. Uniform life has become unbearable due to chronic insomnia. With no family or close friends, Jack joins the therapy group for cancer patients on the advice of his doctor. During these meetings, he meets Marla, who, like the young man, does not get sick, but attends the group meetings. Jack''s and Marla''s efforts are a stance against the meaninglessness of consumer culture, a reaction of people who are career but lonely people. Jack''s generation is a dead generation. ', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (22, N'lord-of-the-rings-fellowship-of-the-ring-maxi-poster-1.143.jpg', 11, N'The Lord of the Rings: The Fellowship of the Ring
', N'2001 - US ', N'178 Min.', 2001, N' Peter Jackson', 8.8, N'https://www.youtube.com/embed/V75dMMIW2B4', 0, 1, N'In ancient times, the Elven blacksmiths made their power rings with their magical mastery, and Sauron, the Lord of Darkness, processed these rings and filled them with his own power. He could not find the One Ring with all his power in all of Middle-earth. 
The ring is found in a hobbite called Frodo Baggins in the Shire District. However, it is necessary to destroy this ring with great power. Frodo and his friends, together with friends from other races, form the brotherhood of the ring, and all follow in this journey the sorcerer Gray Gandalf.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (23, N'forrest_gump.jpg', 12, N'Forrest Gump
', N'1994 - USA ', N'142 Min.', 1994, N'Robert Zemeckis', 8.8, N'https://www.youtube.com/embed/uPIEn0M8su0', 0, 1, N'Forrest Gump takes on the life of a man with 75 intelligence levels. Forrest Gump, who is struggling to enter public schools due to his intelligence level, has achieved unreasonable achievements in time. Forrest Gump is physically sound, although low in intelligence, leading us to a world we cannot imagine in the chain of events that develop over time.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (24, N'theEmpireStrikes.jpg', 13, N'Star Wars Episode V: The Empire Strikes Back', N'1980 - USA ', N'127 Min.', 1980, N'Irvin Kershner', 8.8, N'https://www.youtube.com/embed/JNwNXF9Y6kY', 0, 1, N'Three years after the Battle of Yavin at the end of a New Hope, the three heroes of the Rebellion Luke Skywalker, Han Solo and Princess Leia Organa are wanted by Darth Vader and the Imperial forces. Eventually, the Imperial Navy locates the rebel alliance that formed the top of the Hoth glacial planet at one end of the galaxy. The Imperial army under Darth Vader blocks the rebels. The rebels managed to escape from the planet Glacier with serious losses, but Han and Leia on the Millennium Falcon were pursued by the Empire throughout the galaxy', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (25, N'inception.jpg', 14, N'Inception', N'2010 - UK, USA ', N'148 Min.', 2010, N' Christopher Nolan ', 8.8, N'https://www.youtube.com/embed/YoHD9XEInc0', 0, 1, N'Dom Cobb (Leonardo DiCaprio) is a very skilled thief. His specialty is to pull out and steal precious secrets from the depths of the subconscious at the moment of dreaming where the mind is most vulnerable. This rare dexterity of Cobb has made him a sought-after player in the dangerous new world of corporate espionage. However, it also made him an international fugitive and cost everything he loved. Cobb is offered an opportunity to get out of the situation. One last job that could give him his life back; if he can complete the impossible start ... Instead of perfect robbery, Cobb and his team of professionals must do the opposite; The task of stealing an idea is not to place it. If they succeed, it will be the perfect crime. But neither careful planning, nor their expertise, he can prepare his enemies for his dangerous enemies, who seem to have foreseen his actions. This is an enemy that only Cobb can see his coming.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (26, N'lord_of_the_rings_the_two_towers_2002__intl_original_film_art_2000x.jpg', 15, N'The Lord of the Rings The Two Tower', N' 2002 - USA, New Zealand ', N'179 Min.', 2002, N' Peter Jackson', 8.8, N'https://www.youtube.com/embed/LbfMDwc4azU', 0, 1, N'The two towers begin in the hills of Emyn Muil. The Hobbits, Frodo and Sam, who have lost their way, realize that the mysterious Gollum is following them, and they are caught by the wrists. Gollum, once a Hobbit and broken into a creature by the Ring, which he had for five hundred years, promises to take the Hobbits to the Black Gates of Mordor in exchange for their release. Sam doesn''t trust this new companion. Frodo, on the other hand, pity Gollum, who once held this ring like him. Frodo follows Gollum because he has no choice.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (27, N'One-Flew-Over-the-Cuckoos-Nest-Poster.jpg', 16, N'One Flew Over the Cuckoo''s Nest', N'1975 - USA ', N'133 Min.', 1975, N'Milos Forman ', 8.7, N'https://www.youtube.com/embed/OXrcDonY-B8', 0, 1, N'A short holiday at the State Mental Hospital doesn''t sound too bad, does it? Randle P. McMurphy (Jack Nicholson) is a free-spirited prisoner whose mouths speak well of electricity instead of blood. By pretending to be crazy, McMurphy takes him to the men he calls ''freaks''. And soon afterwards, his love of infectious disorder confronts the drug routine at his new arrival. While McMurphy''s World Cup matches are being played, he can''t endure his new friends walking around in bathrobes with soothing drugs. This means war! There''s McMurphy on one side. On the other hand, Nurse Ratched (Louise Fletcher), one of the coldest and most monstrous characters in film history. In the middle, the fate of everyone in the ward. Ken Kesey', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (28, N'goodfellas.jpg', 17, N'Goodfellas', N'1990 - USA', N'146 Min.', 1990, N' Martin Scorsese ', 8.7, N'https://www.youtube.com/embed/qo5jJpHtI1Y', 0, 1, N'Henry Hill organizes a robbery with two gangsters called Jimmy Conway and Tommy De Vito. Jimmy and Tommy kill everyone involved in a robbery other than Henry, and then take a rapid rise in the mafia. There is a hierarchical structure within the gangster gang, and Henry cannot feed it to himself.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (29, N'matrix.jpg', 18, N'The Matrix', N'1999 - US ', N'136 Min. ', 1999, N'Andy Wachowski, Lana Wachowski ', 8.6, N'https://www.youtube.com/embed/vKQi3bBA1y8', 0, 1, N'Thomas Anderson, a computer programmer, is also a very skilled hacker with a Neo nickname. However, the men in black suits and glasses are closely monitored. He will learn the reason for this follow-up from Morpheus. Neo will suddenly find himself in a great conspiracy in which Morpheus has to rely on what he says. This world we think we live in is totally deceptive. All mankind is actually slaves to creatures from space. With the help of Trinity and Morpheus, Neo joins a group that devotes themselves to demolishing this order.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (30, N'Seven_Samurai_movie_poster.jpg', 19, N'Seven Samurai - Shichinin No Samurai ', N'1954 - Japan ', N' 207 Min. ', 1954, N'Akira Kurosawa ', 8.6, N'https://www.youtube.com/embed/wJ1TOratCTo', 0, 1, N'Tired of the bandits who attacked the villagers, the villagers asked for help from a samurai. He will help the samurai villagers who have taken his six other friends with him.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (31, N'seven.jpg', 20, N'Seven', N'1995 - US ', N'127 min.', 1995, N'David Fincher ', 8.6, N'https://www.youtube.com/embed/znmZoVkCjpI', 0, 1, N'Two detectives from the homicide table go after a serial killer. This murderer commits the murders to clear the world of seven deadly sins. Making a list of those who commit these sins, the killer considers himself a servant of God and brutally kills his victims.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (32, N'cityofgod.jpg', 21, N'City of God', N'2002 - USA, Brazil, France ', N'130 min. ', 2002, N' Fernando Meirelles, Kátia Lund ', 8.6, N'https://www.youtube.com/embed/dcUOO4Itgmw', 0, 1, N'The epic history of organized crime in the r Goddess an, built in the 1960s and transformed into one of the most dangerous neighborhoods of Rio De Janeiro in the early 80s, is a social housing. In the 60s, the film follows two different paths chosen by two slum children. Rocket lacks the mentality and physics required by a life in the criminal world. He dreams of being a photographer, but he doesn''t have the money to buy a camera. On the other hand, Little Ze has been a criminal since his childhood; ruthless, intelligent and ambitious. He enjoys killing during a planned brothel robbery at an early age, and his appetite for this is gradually increasing. In the ''70s, Ze strengthened the control of the favela over drug trafficking with the support of a calm and resourceful Bee.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (33, N'newhope.jpg', 22, N'Star Wars Episode IV: A New Hope', N'1977 - USA ', N'121 Min.', 1977, N'George Lucas ', 8.6, N'https://www.youtube.com/embed/1g3_CFmnU7k', 0, 1, N' Luke Skywalker (Mark Hammil) works in agriculture with his uncle and aunt. No matter how much he wants to join the Academy and become a jedi, his uncle is against it. Meanwhile, an evil emperor takes over the galaxy and builds a ship called the Death Star, capable of destroying planets. Princess Leia (Carrie Fisher), the head of the insurgents, seizes the plans of this ship and puts it into R2-D2 (Kenny Baker). These plans must reach Obi-Wan Kenobi (Alec Guinness). The R2-D2 first meets Luke Skywalker and they find Obi-Wan Kenobi together. They fight the Emperor together with Han Solo (Harrison Ford) and Princess Leia to destroy the "Death Star".', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (34, N'thesilenceofthelambs.jpg', 23, N'The Silence Of The Lambs', N'1991 - USA ', N'118 Min.', 1991, N'Jonathan Demme ', 8.6, N'https://www.youtube.com/embed/RuX2MQeb8UM', 0, 1, N'Clarice Starling, who successfully completed the academy, is now a young FBI agent. Clarice is after a perverted killer. Dr. Hannibal makes a plan to get close to Lecter. But Clarice''s credentials depend on her gaining confidence from Lecter. 

The film was nominated for seven Oscars in 1992 and won an award for best film and best screen adaptation. The Silence of the Lambs (1991), Hannibal (2001), Red Dragon (2002), Hannibal Rising (2007).', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (35, N'it-s-a-wonderful-life-aka-que-bello-es-vivir-spanish-poster-art-1946_u-l-q12or3v0.jpg', 24, N'It''s A Wonderful Life', N'1946 - USA ', N'130 Min.', 1946, N'Frank Capra ', 8.6, N'https://www.youtube.com/embed/ewe4lg8zTYA', 0, 1, N'George Bailey (James Stewart), who is on the verge of bankruptcy, is about to commit suicide by throwing himself into the river on a Christmas night. Bailey, who has been living in the same small town since his birth, is a tolerant, trustworthy and helpful person. Through the housing and finance company, almost all of the townspeople have made homeowners. Meanwhile, he had to postpone all his dreams of making money, the opportunity to become an architect, traveling the world, and all the goodness he did to the town. Henry F. Potter (Lionel Barrymore) Potter is constantly in pursuit of Bailey. The opportunity he seeks someday and a significant amount of money from the financial company is Bailey''s alcoholic and elderly uncle Billy Bailey (Thomas Mitchell).After an audit by the bank''s inspectors, the company''s deficit arises', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (36, N'laVitaeBella.jpg', 25, N'La vita è bella', N'1997 - Italy ', N'118 Min.', 1997, N'Roberto Benigni', 8.6, N'https://www.youtube.com/embed/pAYEQP8gx3w', 0, 1, N'In Italy in the 1930s, a carefree, carefree Jewish bookstore, Guido, courted the beautiful woman in a nearby city and married her to start a fairy tale. Guido and his wife have a son and live happily together until the German forces invade Italy. In an effort to keep his family together and keep his son as far away from the horrors of Jewish concentration camps as possible, Guida portrays this destruction as a game. The winning prize of this game is a tank ...', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (37, N'intoSpiderVerse.jpg', 26, N'Spider-Man: Into the Spider-Verse', N'2018 (USA)', N'117 Min.', 2018, N'Bob Persichetti, Peter Ramsey', 8.5, N'https://www.youtube.com/embed/tg52up16eq0', 0, 1, N'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from another dimensions to stop a threat for all realities.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (38, N'spiritedAway.jpg', 27, N'Spirited Away', N'2001 - Japan ', N'125 Min.', 2001, N'Hayao Miyazaki ', 8.5, N'https://www.youtube.com/embed/ByXuk9QqQkk', 0, 1, N'10-year-old Chihiro, who had to move to a new city because of his father''s job, is very upset about this. But this journey will be more interesting than ever before. First, Chihiro''s parents turn into pigs when they eat at the place where they take a break. Chihiro is filled with ghosts trying to help his parents. In order to survive, he must be admitted to this hotel where ghosts stay. Here he will unravel the mystery of the ghosts and discover the magic of love with the mysterious Haku. 
Hayao Miyazaki, the creator of Princess Mononoke, is an animated masterpiece that has won the Golden Bear at the 52nd Berlin International Film Festival and the Best Animated Oscar at the 75th Academy Awards.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (39, N'Save_Private_Ryan.png', 28, N'Saving Private Ryan', N'1998 - US ', N'169 Min.', 1998, N'Steven Spielberg', 8.5, N'https://www.youtube.com/embed/zwhP5b4tD6g', 0, 1, N'II. The news of the death of three sons of the mother in World War II, the mother wants to hear that the fourth son is alive. It turns into a life of many soldiers for the sake of saving one person is in danger.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (40, N'usualSuspects.jpg', 29, N'The Usual Suspects', N'1995 - USA, UK, Germany ', N'106 Min.', 1995, N'Bryan Singer ', 8.5, N'https://www.youtube.com/embed/oiXdPolca5w', 0, 1, N'All five are talented and expert in their respective fields, when they are detained after a simple kidnapping, they look at each other with empty eyes without any meaning. Investigating the story, agent David Kujan assumes the connection of these five people with the mysterious explosion that resulted in the death of 27 people in San Pedro Harbor, California. The only surviving witness Verbal Kint conveys the story in complete calm, but all the questions are concentrated on one person: "Keizer Soze".', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (41, N'leon.jpg', 30, N'Léon: The Professional', N'1994 - France ', N'110 Min.', 1994, N'Luc Besson ', 8.5, N'https://www.youtube.com/embed/jawVxq1Iyl0', 0, 1, N'Mathilda is a 12-year-old little girl whose family lives in New York. For Mathilda, who does not love her family, her most valuable asset is her younger brother. When his father gets involved in drugs, he kills all members of the mafia family. Mathilda, who was shopping at the time, escaped and hid in the apartment where Leon stayed. Leon is a very cold-blooded murderer. But he has a sincere love for Mathilda and stretches him. In fact, paternity, concepts such as friendship is very foreign to him.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (42, N'theGreenMile.jpg', 31, N'The Green Mile', N'1999 - USA', N'189 Min.', 1999, N'Frank Darabont ', 8.5, N'https://www.youtube.com/embed/Ki4haFrqSrw', 0, 1, N'Paul Edgecomb, who works as a guard in a prison, is tasked with taking prisoners from his cells a mile of green roads to the death chamber where the electric chair is. Edgecomb transports countless death row prisoners over the years. But none of them affect him as much as John Coffey. Coffey, a very large man, was sentenced to death for the murder of two little girls. Contrary to his eerie look, Coffey has a very emotional and complex inner world and has some supernatural powers. As Edgecomb gets close to him, he will begin to believe that miracles can happen in unexpected places.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (43, N'interstellar.jpg', 32, N'Interstellar', N'2014 - USA, UK', N'169 Min.', 2014, N'Christopher Nolan', 8.5, N'https://www.youtube.com/embed/zSWdZVtXT7E', 0, 1, N'In the near future, life on earth has been endangered by increasing drought and climate change. The human race is in danger of extinction. Then a newly discovered wormhole becomes hope for all humanity. It is a group of astronaut-explorers who pass through here and change their dimensions to reach places that no human has ever been able to reach and to explore new living spaces for mankind. These explorers will have to be both fast and courageous in an environment where the last hour is worth 7 years. 
Directed by British director Christopher Nolan, the film was released in November 2014.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (44, N'Psycho.jpg', 33, N'Psycho', N'1960 - USA ', N'109 Min.', 1960, N'Alfred Hitchcock', 8.5, N'https://www.youtube.com/embed/Wz719b9QUqY', 0, 1, N'Marion Crane (Janet Leigh) works in a real estate office in Arizona. He wants to marry his girlfriend Sam (John Gavin), but the couple have little money. One Friday, he gives his boss Marion $ 40,000 to deposit money into the bank. Marion decides that she and Sam can make the life they dreamed of, and steal the money and go to meet Sam. On the way you will have to stay at the Bates Motel. Norman Bates (Anthony Perkins), who runs the motel, is a young man who is obsessed with his mother. He has dinner together and Marion retires to his room and decides to take a shower before going to bed. One of the most important examples of its kind in the history of cinema, famous for its "shower scene", the Pervert is considered one of Alfred Hitchcock''s masterpieces.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (45, N'americanHistoryX.jpg', 34, N'American History X', N'1998 - USA ', N'119 Min.', 1998, N'Tony Kaye', 8.5, N'https://www.youtube.com/embed/XfQYHqsiN5g', 0, 1, N'Derek Vinyard is a Neo-Nazi, whose father was killed by Negroes. One day, he brutally kills three black people trying to rob his car and is arrested and sent to jail. During his time in prison, Derek begins to question his racist thoughts and realizes that good and evil exist in every race. His brother Danny also has racist ideas, and Derek, who learns from his experiences, will try to show Danny the right way out of prison.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (46, N'cityLights.jpg', 35, N'City Lights', N'1931 - USA', N'87 Min.', 1931, N'Charles Chaplin ', 8.5, N'https://www.youtube.com/embed/b2NTUnujk1I', 0, 1, N'A good-hearted tramp falls in love with a blind flower dealer. She introduces herself as a rich man. He is encouraged by a millionaire, whom he later saves, to be friendly and make promises. He thinks he can erode his door and borrow the surgery money he needs to see the eyes of the girl he loves. Yet wealthy people are accustomed to leading a hypocritical life with exaggerated kindness.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (47, N'casablanca.jpg', 36, N'Casablanca', N'1942 - USA', N'102 Min.', 1942, N'Michael Curtiz', 8.5, N'https://www.youtube.com/embed/BkL9l7qovsE', 0, 1, N'In the Second World War, Victor Lazlow, the leader of the very resilient organization, escaped from the German concentration camp and came to Casablanca. On the other hand, Ricky has the necessary reason for Victor''s capture or murder.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (48, N'3-once-upon-a-time-in-the-west-brown-border-style-italian-2-foglio-1968-01-851x1200.jpg', 37, N'Once Upon A Time In The West', N'1968 - USA, Italy ', N'175 Min.', 1968, N'Sergio Leone', 8.5, N'https://www.youtube.com/embed/Yw-Av9BpC-w', 0, 1, N'Frank (Henry Fonda) and his men, who are unlawful and ruthless, commit murder in connection with the railroad project in the area where they live. Brett McBain''s wife Jill (Claudia Cardinale), who was killed, decides to stay in the area. Harmonica (Charles Bronson), who used to have an account with Frank, and Jill and another outlaw, Cheyenne, decide to oppose Frank and his men.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (49, N'modernTimes.jpg', 38, N'Modern Times', N'1936 - USA ', N'87 Min.', 1936, N' Charles Chaplin', 8.5, N'https://www.youtube.com/embed/GLeDdzGUTq0', 0, 1, N'In the 1936 film, Charles Chaplin criticizes industrialization and the economic crisis of the time. Although the film was shot silently, Charlie Chaplin sang a song and made his voice heard for the first time.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (50, N'pianist.jpg', 39, N'The Pianist
', N'2002 - Britain, France, Germany, Poland', N'150 Min.', 2002, N'Roman Polanski ', 8.5, N'https://www.youtube.com/embed/BFwGqLa_oAo', 0, 1, N'Wladyslaw Szpilman was 27 when the war broke out and was one of the brightest concert pianists in Poland''s future. He was playing Chopin''s C minor Nocturne when the radio station was bombed at the Luftwaffe. Like all Jews, he and his family were evicted from their homes and deported to the Warsaw ghetto. In his new life, this very talented young man began to play in bars where black marketers and collaborators had fun. One of these collaborators saved him and his family from one of the prison camp trains that led him to his death. Thanks to war whispers, insurgents and a surprise German officer, Szpilman survives the war.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (51, N'the-intouchables-poster.jpg', 40, N'The Intouchables', N'2011 - France ', N'112 Min.', 2011, N'Olivier Nakache, Eric Toledano', 8.5, N'https://www.youtube.com/embed/34WIbmXkewU', 0, 1, N'Philippe, a wealthy aristocrat who was paralyzed after his accident, hired Driss as his nanny. While everyone thinks that Driss will not be suitable for this job, Philippe believes in him and gives him a chance. The story of the collision of these two opposing worldviews that will not come side by side if the world stops and transformed into a crazy friendship over time.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (52, N'Lion_King.jpg', 41, N'The Lion King
', N'2019 - ABD', N'118 Min.', 2019, N'Jon Favreau ', 7.2, N'https://www.youtube.com/embed/7TavVZMewpY', 1, 1, N'The Lion King, which was eagerly anticipated to appear on July 19; After his father Mufasa was killed, he learned how to rule the kingdom of Simba, a young lion prince. The film emphasizes important concepts such as responsibility and courage.', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (53, N'TheDeparted.jpg', 41, N'The Departed
', N'2006 - USA, HongKong ', N'151 Min.', 2006, N'Martin Scorsese', 8.5, N'https://www.youtube.com/embed/iojhqm0JTW4', 0, 1, N'The mole is set in South Boston, where Massachusetts State Police has begun a massive struggle to bring down the city''s largest criminal organization. The aim is to put an end to the domination of the powerful mafia boss Frank Costello (Jack Nicholson). Young rookie Billy Costigan (Leonardo DiCaprio), who grew up in South Boston, is assigned to infiltrate Costello''s gang. As Billy tries to gain Costello''s trust, another young policeman Colin Sullivan (Matt Damon) from the streets of the “South Side da is climbing the steps in the state police. What their superiors don''t know is that Colin worked for Costello, and that his criminal boss was always one step ahead of the police. While both men gathered information about the plans and counter-plans of the organization they infiltrated, they are very difficult because of their double life. But when both gangsters and policemen realize that there is a mole between them, Billy and Colin are constantly in danger of being caught by the enemy.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (54, N'backToFutured.jpg', 42, N'Back to the Future', N'1985 - ABD', N'116 Dak.', 1985, N'Robert Zemeckis', 8.5, N'https://www.youtube.com/embed/qvsgGtivCgs', 0, 1, N'The invention, hidden in a DeLoran, one of the cars of the period, especially accentuated by its design, accidentally takes Marty back to the 50s. The irresponsible lad leads to an accident in this unpretentious American town and prevents his future parents from meeting. So he must correct this situation since he will never be born. But life is more complicated than you think and you have to learn the meaning of the word responsibility.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (55, N'terminator_judgmentDay.jpg', 43, N'Terminator 2: Judgment Day', N'1991 - the US, France ', N' 152 Min.', 1991, N'James Cameron ', 8.5, N'https://www.youtube.com/embed/-W8CegO_Ixw', 0, 1, N'Over the years that occurred in August 1997, which killed more than 3 billion people, it was 2029. John Connor is the leader of human resistance to machines. The machines that could not destroy it in 2029 now decide to try to destroy the enemies they could not destroy in the past and send a destroyer machine to the era when John was 10 years old. John, on the other hand, sends a higher model of the destructive machine sent to the past with the task of killing his mother before in order to protect himself. A big fight for John Connor begins between the two exterminating machines. Meanwhile, the system named Skynet, which was the architect of the disaster in August 1997, which has not yet happened, has gradually started to increase its activities. John and his protective machine John ''', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (56, N'whiplash.jpg', 44, N'Whiplash', N'2014 - USA ', N'105 Min. ', 2014, N' Damien Chazelle ', 8.5, N'https://www.youtube.com/embed/7d_jQycdQGo', 0, 1, N'19-year-old Andrew Neiman (Miles Teller) is an avid drummer who dreams of becoming one of the legends. The conductor of the most important orchestra is Terrence Fletcher (JK Simmons), a strict musician who applies strict educational principles. One day Neiman''s talent was recognized by Fletcher and he was taken to the school''s main orchestra. In order to enter Fletcher''s eyes, a teacher-student relationship will begin between Neiman and Fletcher, who has done a superhuman work, throwing away even his family and private life.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (57, N'RearWindow.jpg', 45, N'Rear Window
', N'1954 - US ', N'112 Min. ', 1954, N'Alfred Hitchcock', 8.4, N'https://www.youtube.com/embed/m01YktiEZCw', 0, 1, N' Photographer LB Jeffries breaks his leg in an accident while viewing a car race. He spends time watching his neighbors from his back window during his compulsory holiday in his New York apartment. 
  Jeff again suspects that his neighbor killed his wife. She asks her photomodel lover Lisa and her nurse Stella to investigate. 
  A masterpiece of suspense from Alfred Hitchcock, the master of thriller genre', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (58, N'TheLionKing.jpg', 46, N'The Lion King', N'1994 - USA ', N'89 Min.', 1994, N'Rob Minkoff, Roger Allers ', 8.4, N'https://www.youtube.com/embed/4sj1MT05lAA', 0, 1, N'A young lion is born in the depths of wild Africa. The little lion, whose father is the king of the region, is threatened by his ambitious enemies who want to succeed him in a short time. The film''s award-winning music was made by Tim Rice, Elton John and Hans Zimmer.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (59, N'raiders_of_the_lost_ark_1981_french_original_film_art_2000x.jpg', 47, N'Indiana Jones And Raiders of The Lost Ark', N'1981 - ABD', N'115 Dak.', 1981, N'Steven Spielberg', 8.4, N'https://www.youtube.com/embed/PcY11G1FFvs', 0, 1, N'In 1981, the first film of the classic adventure and comedy Indiana Jones series, Archaeologist DR. Indiana Jones sets out to find the Ark of the Conenant, which will unravel the secret of the 10 Commandments. Hitler, who ruled Nazi Germany, is after this Ark. Indiana and German agents will face this adventure from Nepal to Cairo.', 1)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (1059, N'gladiator.jpg', 48, N'Gladiator', N'2000 - US, UK ', N'155 min.', 2000, N'Ridley Scott ', 8.4, N'https://www.youtube.com/embed/owK1qxDselE', 0, 1, N'General Maximus, who gave the most brilliant period to the Roman Empire, emerged with a victory more than a square war, and now his only dream is to return home and meet his wife and family. However, the Roman emperor of the time, Marcus Aurelius, gave Maximus an important mission and demanded that he hold power. Thereupon, Commodus, the son of the emperor, realized that the power would be taken away and ordered the murder of the general and his family. Maximus barely escapes death and is exiled to the arena of gladiators. Returning to Rome many years later, the powerful gladiator Maximus'' only aim is to avenge Commodus by killing his wife and son.', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (1060, N'The-Prestige-Movie-Poster-Are-You-Watching-Closely.jpg', 49, N'The Prestige', N' 2006 - US ', N'130 Min.', 2006, N'Christopher Nolan ', 8.4, N'https://www.youtube.com/embed/ijXruSzfGEc', 0, 1, N'Coming from the acclaimed director Christopher Nolan (“Memento,“ man Batman Begins ”) comes an adventure knitted with illusion fabric. In this mysterious story full of unexpected turns, the two stage wizards of the Victorian Era are embarking on an increasingly violent battle and a vigorous competition that turns into an insatiable thirst to reveal each other''s professional secrets. The consequences of the audacity of these two majestic men to turn passion, entertainers into science and ambition into friendship are dangerous, deadly and fraudulent. It all starts at the turn of the century, in rapidly changing London. ', 0)
INSERT [dbo].[Movies] ([Id], [Image], [Number], [Name], [Production], [Duration], [Year], [Director], [Imdb], [Video], [Slider], [Status], [Info], [Top]) VALUES (1061, N'Apocalypse_Now.jpg', 50, N'Apocalypse Now', N'1979 - USA ', N'153 Min.', 1979, N'Francis Ford Coppola ', NULL, N'https://www.youtube.com/embed/FTjG-Aux_yQ', 0, 1, N'Captain Willard (Martin Sheen) is tasked with finding and killing Colonel Walter Kurtz (Marlon Brando), who rebels against the American army in Vietnam and manages a savage tribe. In the footsteps of Kurtz, Captain Willard, who is between the darkness of the human heart and the reality of war, will soon be dragged into an eternal nightmare.', 0)
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[MovieSeans] ON 

INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (1, 1, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (2, 1, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (3, 1, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (4, 1, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (5, 1, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (6, 2, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (7, 2, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (8, 2, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (9, 2, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (10, 2, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (11, 3, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (12, 3, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (13, 3, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (14, 3, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (15, 3, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (16, 4, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (17, 4, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (18, 4, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (19, 4, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (20, 4, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (21, 5, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (22, 5, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (23, 5, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (24, 5, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (25, 5, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (26, 6, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (27, 6, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (28, 6, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (29, 6, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (30, 6, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (31, 7, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (32, 7, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (33, 7, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (34, 7, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (35, 7, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (36, 8, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (37, 8, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (38, 8, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (39, 8, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (40, 8, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (41, 9, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (42, 9, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (43, 9, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (44, 9, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (45, 9, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (46, 10, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (47, 10, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (48, 10, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (49, 10, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (50, 10, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (51, 11, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (52, 11, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (53, 11, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (54, 11, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (55, 11, 5)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (57, 52, 1)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (58, 52, 2)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (59, 52, 3)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (60, 52, 4)
INSERT [dbo].[MovieSeans] ([Id], [MovieID], [SeansID]) VALUES (61, 52, 5)
SET IDENTITY_INSERT [dbo].[MovieSeans] OFF
SET IDENTITY_INSERT [dbo].[Seans] ON 

INSERT [dbo].[Seans] ([Id], [Name], [Image], [Address], [Phone], [Status]) VALUES (1, N'
"Azerbaijan" CinemaPlus', N'azerbaijancinema2.jpg', N' Baku', N'(012) 499 89 88', 1)
INSERT [dbo].[Seans] ([Id], [Name], [Image], [Address], [Phone], [Status]) VALUES (2, N'Cinema Plus 28 May', N'28_cinema.jpg', N'Azadlyg avenue, Baku', N' (012) 499 89 88', 1)
INSERT [dbo].[Seans] ([Id], [Name], [Image], [Address], [Phone], [Status]) VALUES (3, N'Park Сinema Park Bulvar', N'Park_Bulvar.jpg', N'Baku 1000', N'(012) 598 74 14', 1)
INSERT [dbo].[Seans] ([Id], [Name], [Image], [Address], [Phone], [Status]) VALUES (4, N'CinemaPlus', N'cinema_plus.jpg', N'Ganjlik Mall', N' (012) 499 89 88', 1)
INSERT [dbo].[Seans] ([Id], [Name], [Image], [Address], [Phone], [Status]) VALUES (5, N'Nizami Cinema', N'Nizami_cinema.jpg', N'20 Bulbul Ave, Baku 1014', N'(012) 493 28 18', 1)
SET IDENTITY_INSERT [dbo].[Seans] OFF
SET IDENTITY_INSERT [dbo].[SeansTables] ON 

INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (1, 1, N'16:30', N'Hall 1', 5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (2, 1, N'18:30', N'Hall 2', 4.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (3, 1, N'21:00', N'Hall 3', 3.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (4, 2, N'16:30', N'Hall 1', 4.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (5, 2, N'19:00', N'Hall 2', 3.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (6, 2, N'22:00', N'Hall 3', 5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (7, 3, N'12:00', N'Hall 1', 6)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (8, 3, N'16:00', N'Hall 2', 4.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (9, 3, N'18:00', N'Hall 3', 3)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (10, 4, N'11:30', N'Hall 1', 4)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (11, 4, N'13:30', N'Hall 2', 5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (12, 4, N'16:00', N'Hall 3', 7)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (13, 5, N'14:00', N'Hall 1', 3.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (14, 5, N'17:00', N'Hall 2', 5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (15, 5, N'19:30', N'Hall 3', 4)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (16, 8, N'10:30', N'Hall 1', 3.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (17, 8, N'12:00', N'Hall 2', 5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (18, 8, N'16:30', N'Hall 3', 4.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (19, 9, N'11:30', N'Hall 1', 4)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (20, 9, N'13:00', N'Hall 2', 3.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (21, 9, N'16:30', N'Hall 3', 5.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (22, 10, N'12:00', N'Hall 1', 3)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (23, 10, N'15:30', N'Hall 2', 5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (24, 10, N'19:00', N'Hall 3', 4.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (25, 52, N'13:30', N'Hall 1', 6)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (26, 52, N'16:00', N'Hall 2', 5.5)
INSERT [dbo].[SeansTables] ([Id], [MovieID], [Time], [Hall], [Price]) VALUES (27, 52, N'21:00', N'Hall 3', 4.5)
SET IDENTITY_INSERT [dbo].[SeansTables] OFF
ALTER TABLE [dbo].[Actors] ADD  CONSTRAINT [DF_Actors_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Movies] ADD  CONSTRAINT [DF_Movies_Slider]  DEFAULT ((0)) FOR [Slider]
GO
ALTER TABLE [dbo].[Movies] ADD  CONSTRAINT [DF_Movies_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Movies] ADD  CONSTRAINT [DF_Movies_Top]  DEFAULT ((0)) FOR [Top]
GO
ALTER TABLE [dbo].[Seans] ADD  CONSTRAINT [DF_Seans_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Movies]
GO
ALTER TABLE [dbo].[MovieActors]  WITH CHECK ADD  CONSTRAINT [FK_MovieActors_Actors] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actors] ([Id])
GO
ALTER TABLE [dbo].[MovieActors] CHECK CONSTRAINT [FK_MovieActors_Actors]
GO
ALTER TABLE [dbo].[MovieActors]  WITH CHECK ADD  CONSTRAINT [FK_MovieActors_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[MovieActors] CHECK CONSTRAINT [FK_MovieActors_Movies]
GO
ALTER TABLE [dbo].[MovieGenres]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenres_Genres] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[MovieGenres] CHECK CONSTRAINT [FK_MovieGenres_Genres]
GO
ALTER TABLE [dbo].[MovieGenres]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenres_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[MovieGenres] CHECK CONSTRAINT [FK_MovieGenres_Movies]
GO
ALTER TABLE [dbo].[MovieSeans]  WITH CHECK ADD  CONSTRAINT [FK_MovieSeans_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[MovieSeans] CHECK CONSTRAINT [FK_MovieSeans_Movies]
GO
ALTER TABLE [dbo].[MovieSeans]  WITH CHECK ADD  CONSTRAINT [FK_MovieSeans_Seans] FOREIGN KEY([SeansID])
REFERENCES [dbo].[Seans] ([Id])
GO
ALTER TABLE [dbo].[MovieSeans] CHECK CONSTRAINT [FK_MovieSeans_Seans]
GO
ALTER TABLE [dbo].[SeansTables]  WITH CHECK ADD  CONSTRAINT [FK_SeansTables_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[SeansTables] CHECK CONSTRAINT [FK_SeansTables_Movies]
GO
USE [master]
GO
ALTER DATABASE [Movies] SET  READ_WRITE 
GO
