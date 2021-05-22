USE [biblioteka3]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 22.05.2021 12:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gorod] [nvarchar](50) NULL,
	[Ylica] [nvarchar](50) NOT NULL,
	[NomerKv] [nvarchar](50) NULL,
	[NomerDoma] [nvarchar](50) NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[avtor]    Script Date: 22.05.2021 12:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avtor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[imyaavtora] [nvarchar](50) NULL,
	[familyaavtora] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_avtor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitateli]    Script Date: 22.05.2021 12:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitateli](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[imya] [nvarchar](50) NOT NULL,
	[familia] [nvarchar](50) NOT NULL,
	[AdresId] [int] NOT NULL,
	[seriaP] [nvarchar](50) NOT NULL,
	[NomjerP] [nvarchar](50) NOT NULL,
	[nomerTei] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Chitateli] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izdatelstvo]    Script Date: 22.05.2021 12:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izdatelstvo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[imyaizdatelstva] [nvarchar](50) NOT NULL,
	[Gorod] [nvarchar](50) NOT NULL,
	[iindex] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[sait] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Izdatelstvo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[knigi]    Script Date: 22.05.2021 12:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[knigi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nameknigi] [nvarchar](50) NOT NULL,
	[godvypiska] [nvarchar](50) NOT NULL,
	[kolishestvoknig] [nvarchar](50) NOT NULL,
	[price] [nvarchar](50) NOT NULL,
	[avtorId] [int] NOT NULL,
	[izdatelstvoId] [int] NOT NULL,
	[raiting] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_knigi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vydasha]    Script Date: 22.05.2021 12:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vydasha](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[datavydachi] [date] NOT NULL,
	[datavozvrata] [date] NOT NULL,
	[chitatelId] [int] NOT NULL,
	[knigiId] [int] NOT NULL,
 CONSTRAINT [PK_Vydasha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adres] ON 

INSERT [dbo].[Adres] ([Id], [Gorod], [Ylica], [NomerKv], [NomerDoma]) VALUES (1, N'', N'Новая ', N'1', N'')
INSERT [dbo].[Adres] ([Id], [Gorod], [Ylica], [NomerKv], [NomerDoma]) VALUES (2, N'', N'Путина ', N'2', N'')
INSERT [dbo].[Adres] ([Id], [Gorod], [Ylica], [NomerKv], [NomerDoma]) VALUES (3, N'', N'Киевская ', N'3', N'')
INSERT [dbo].[Adres] ([Id], [Gorod], [Ylica], [NomerKv], [NomerDoma]) VALUES (4, N'', N'Ленина ', N'', N'1')
INSERT [dbo].[Adres] ([Id], [Gorod], [Ylica], [NomerKv], [NomerDoma]) VALUES (5, N'', N'Авиаторов ', N'5', N'')
INSERT [dbo].[Adres] ([Id], [Gorod], [Ylica], [NomerKv], [NomerDoma]) VALUES (6, N'', N'Смоленская ', N'6', N'')
SET IDENTITY_INSERT [dbo].[Adres] OFF
GO
SET IDENTITY_INSERT [dbo].[avtor] ON 

INSERT [dbo].[avtor] ([Id], [imyaavtora], [familyaavtora]) VALUES (1, N'', N'Булгаков')
INSERT [dbo].[avtor] ([Id], [imyaavtora], [familyaavtora]) VALUES (2, N'Эрика', N'Джаймс')
INSERT [dbo].[avtor] ([Id], [imyaavtora], [familyaavtora]) VALUES (3, N'Джоджо', N'Мойэйс')
INSERT [dbo].[avtor] ([Id], [imyaavtora], [familyaavtora]) VALUES (4, N'Грэгори', N'Дэвид')
INSERT [dbo].[avtor] ([Id], [imyaavtora], [familyaavtora]) VALUES (5, N'Макс', N'Фрай')
INSERT [dbo].[avtor] ([Id], [imyaavtora], [familyaavtora]) VALUES (6, N'Гиллиан', N'Флин')
SET IDENTITY_INSERT [dbo].[avtor] OFF
GO
SET IDENTITY_INSERT [dbo].[Chitateli] ON 

INSERT [dbo].[Chitateli] ([Id], [imya], [familia], [AdresId], [seriaP], [NomjerP], [nomerTei]) VALUES (2, N'Иван', N'Иванов', 1, N'1011', N'111112 ', N'89520543632  ')
INSERT [dbo].[Chitateli] ([Id], [imya], [familia], [AdresId], [seriaP], [NomjerP], [nomerTei]) VALUES (3, N'Сергей', N'Петров', 2, N'1371', N'641254 ', N'89654440231   ')
INSERT [dbo].[Chitateli] ([Id], [imya], [familia], [AdresId], [seriaP], [NomjerP], [nomerTei]) VALUES (4, N'Светлана', N'Кривчик', 3, N'1621', N'544847 ', N'8521441451   ')
INSERT [dbo].[Chitateli] ([Id], [imya], [familia], [AdresId], [seriaP], [NomjerP], [nomerTei]) VALUES (5, N'Анна ', N'Петрова', 4, N'1021', N'421032', N'89111645215   ')
INSERT [dbo].[Chitateli] ([Id], [imya], [familia], [AdresId], [seriaP], [NomjerP], [nomerTei]) VALUES (6, N'Андрей ', N'Жильцев', 5, N'1021 ', N'326142 ', N'89478263154')
INSERT [dbo].[Chitateli] ([Id], [imya], [familia], [AdresId], [seriaP], [NomjerP], [nomerTei]) VALUES (7, N'Катерина', N'Степанова', 6, N'1215 ', N'547857', N'89011154577')
SET IDENTITY_INSERT [dbo].[Chitateli] OFF
GO
SET IDENTITY_INSERT [dbo].[Izdatelstvo] ON 

INSERT [dbo].[Izdatelstvo] ([Id], [imyaizdatelstva], [Gorod], [iindex], [email], [sait]) VALUES (1, N'Эксмо', N'Москва', N'6565656 ', N'eksmo@mail.ru', N'eksmo.ru')
INSERT [dbo].[Izdatelstvo] ([Id], [imyaizdatelstva], [Gorod], [iindex], [email], [sait]) VALUES (2, N'Россия', N'СанктПетербург', N'9848454 ', N'bukva@mail.ru', N'Russia.com')
INSERT [dbo].[Izdatelstvo] ([Id], [imyaizdatelstva], [Gorod], [iindex], [email], [sait]) VALUES (3, N'Буква ', N'Смоленск ', N'9878545 ', N'lzdat@mail.ru', N'Bukva.com ')
INSERT [dbo].[Izdatelstvo] ([Id], [imyaizdatelstva], [Gorod], [iindex], [email], [sait]) VALUES (4, N'Издат ', N'Псков', N'9145588 ', N'Russia@ya.ru', N'Lzdat.net')
SET IDENTITY_INSERT [dbo].[Izdatelstvo] OFF
GO
SET IDENTITY_INSERT [dbo].[knigi] ON 

INSERT [dbo].[knigi] ([Id], [nameknigi], [godvypiska], [kolishestvoknig], [price], [avtorId], [izdatelstvoId], [raiting]) VALUES (1, N'Мастер и Маргарита', N'2011', N'150', N'300', 1, 1, N'2')
INSERT [dbo].[knigi] ([Id], [nameknigi], [godvypiska], [kolishestvoknig], [price], [avtorId], [izdatelstvoId], [raiting]) VALUES (2, N'50 оттенков серого', N'2012', N'200', N'350', 2, 2, N'3')
INSERT [dbo].[knigi] ([Id], [nameknigi], [godvypiska], [kolishestvoknig], [price], [avtorId], [izdatelstvoId], [raiting]) VALUES (3, N'До встречи с тобой', N'2013', N'251', N'300', 3, 3, N'5')
INSERT [dbo].[knigi] ([Id], [nameknigi], [godvypiska], [kolishestvoknig], [price], [avtorId], [izdatelstvoId], [raiting]) VALUES (4, N'Шантарам', N'2013', N'236', N'500', 4, 3, N'5')
INSERT [dbo].[knigi] ([Id], [nameknigi], [godvypiska], [kolishestvoknig], [price], [avtorId], [izdatelstvoId], [raiting]) VALUES (5, N'Чужак', N'2013', N'541', N'500', 5, 4, N'3')
INSERT [dbo].[knigi] ([Id], [nameknigi], [godvypiska], [kolishestvoknig], [price], [avtorId], [izdatelstvoId], [raiting]) VALUES (6, N'Острые преметы', N'2014', N'231', N'500', 6, 4, N'4')
INSERT [dbo].[knigi] ([Id], [nameknigi], [godvypiska], [kolishestvoknig], [price], [avtorId], [izdatelstvoId], [raiting]) VALUES (7, N'Исчезнувшая', N'2014', N'350', N'500', 6, 1, N'4')
SET IDENTITY_INSERT [dbo].[knigi] OFF
GO
SET IDENTITY_INSERT [dbo].[Vydasha] ON 

INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (2, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 2, 1)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (3, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 3, 2)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (4, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 3, 2)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (5, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 4, 3)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (6, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 4, 4)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (7, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 5, 3)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (8, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 5, 5)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (9, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 6, 6)
INSERT [dbo].[Vydasha] ([Id], [datavydachi], [datavozvrata], [chitatelId], [knigiId]) VALUES (10, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 6, 7)
SET IDENTITY_INSERT [dbo].[Vydasha] OFF
GO
ALTER TABLE [dbo].[Chitateli]  WITH CHECK ADD  CONSTRAINT [FK_Chitateli_Adres] FOREIGN KEY([AdresId])
REFERENCES [dbo].[Adres] ([Id])
GO
ALTER TABLE [dbo].[Chitateli] CHECK CONSTRAINT [FK_Chitateli_Adres]
GO
ALTER TABLE [dbo].[knigi]  WITH CHECK ADD  CONSTRAINT [FK_knigi_avtor] FOREIGN KEY([avtorId])
REFERENCES [dbo].[avtor] ([Id])
GO
ALTER TABLE [dbo].[knigi] CHECK CONSTRAINT [FK_knigi_avtor]
GO
ALTER TABLE [dbo].[knigi]  WITH CHECK ADD  CONSTRAINT [FK_knigi_Izdatelstvo] FOREIGN KEY([izdatelstvoId])
REFERENCES [dbo].[Izdatelstvo] ([Id])
GO
ALTER TABLE [dbo].[knigi] CHECK CONSTRAINT [FK_knigi_Izdatelstvo]
GO
ALTER TABLE [dbo].[Vydasha]  WITH CHECK ADD  CONSTRAINT [FK_Vydasha_Chitateli] FOREIGN KEY([chitatelId])
REFERENCES [dbo].[Chitateli] ([Id])
GO
ALTER TABLE [dbo].[Vydasha] CHECK CONSTRAINT [FK_Vydasha_Chitateli]
GO
ALTER TABLE [dbo].[Vydasha]  WITH CHECK ADD  CONSTRAINT [FK_Vydasha_knigi] FOREIGN KEY([knigiId])
REFERENCES [dbo].[knigi] ([Id])
GO
ALTER TABLE [dbo].[Vydasha] CHECK CONSTRAINT [FK_Vydasha_knigi]
GO
