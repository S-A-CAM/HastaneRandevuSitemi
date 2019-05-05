USE [HastaneRandevuSistemi]
GO
/****** Object:  Table [dbo].[Bolum]    Script Date: 5.5.2019 12:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolum](
	[bolumID] [int] IDENTITY(1,1) NOT NULL,
	[bolumAdi] [nvarchar](50) NULL,
	[hastaneID] [int] NULL,
 CONSTRAINT [PK_Bolum] PRIMARY KEY CLUSTERED 
(
	[bolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doktor]    Script Date: 5.5.2019 12:30:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktor](
	[doktorID] [int] IDENTITY(1,1) NOT NULL,
	[TCKN] [nvarchar](11) NULL,
	[sifre] [nvarchar](20) NULL,
	[adi] [nvarchar](20) NULL,
	[soyadi] [nvarchar](20) NULL,
	[hastaneID] [int] NULL,
	[bolumID] [int] NULL,
 CONSTRAINT [PK_Doktor] PRIMARY KEY CLUSTERED 
(
	[doktorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favori]    Script Date: 5.5.2019 12:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favori](
	[favoriID] [int] IDENTITY(1,1) NOT NULL,
	[doktorID] [int] NULL,
	[kullaniciID] [int] NULL,
 CONSTRAINT [PK_Favori] PRIMARY KEY CLUSTERED 
(
	[favoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hastane]    Script Date: 5.5.2019 12:30:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastane](
	[hastaneID] [int] IDENTITY(1,1) NOT NULL,
	[hastaneAdi] [nvarchar](50) NULL,
	[ilID] [int] NULL,
	[ilceID] [int] NULL,
	[acikAdres] [nvarchar](100) NULL,
 CONSTRAINT [PK_Hastane] PRIMARY KEY CLUSTERED 
(
	[hastaneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Il]    Script Date: 5.5.2019 12:30:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Il](
	[ilID] [int] IDENTITY(1,1) NOT NULL,
	[ilAdi] [nvarchar](20) NULL,
 CONSTRAINT [PK_Il] PRIMARY KEY CLUSTERED 
(
	[ilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilce]    Script Date: 5.5.2019 12:30:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilce](
	[ilceID] [int] IDENTITY(1,1) NOT NULL,
	[ilceAdi] [nvarchar](20) NULL,
	[ilID] [int] NULL,
 CONSTRAINT [PK_Ilce] PRIMARY KEY CLUSTERED 
(
	[ilceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izin]    Script Date: 5.5.2019 12:30:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izin](
	[izinID] [int] IDENTITY(1,1) NOT NULL,
	[doktorID] [int] NULL,
	[baslangicTarihi] [date] NULL,
	[bitisTarihi] [date] NULL,
	[baslangicSaati] [time](7) NULL,
	[bitisSaati] [time](7) NULL,
 CONSTRAINT [PK_Izin] PRIMARY KEY CLUSTERED 
(
	[izinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 5.5.2019 12:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullanicID] [int] IDENTITY(1,1) NOT NULL,
	[TCKN] [nvarchar](11) NULL,
	[sifre] [nvarchar](20) NULL,
	[rolID] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[kullanicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciBilgileri]    Script Date: 5.5.2019 12:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciBilgileri](
	[kullaniID] [int] NOT NULL,
	[adi] [nvarchar](20) NULL,
	[soyadi] [nvarchar](20) NULL,
	[dogumTarihi] [datetime] NULL,
	[cinsiyet] [bit] NULL,
	[ilID] [int] NULL,
	[ilceID] [int] NULL,
	[acikAdres] [nvarchar](100) NULL,
 CONSTRAINT [PK_KullaniciBilgileri] PRIMARY KEY CLUSTERED 
(
	[kullaniID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Randevu]    Script Date: 5.5.2019 12:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevu](
	[randevuID] [int] IDENTITY(1,1) NOT NULL,
	[tarih] [date] NULL,
	[saat] [time](7) NULL,
	[durum] [bit] NULL,
	[doktorID] [int] NULL,
	[kullaniciID] [int] NULL,
 CONSTRAINT [PK_Randevu] PRIMARY KEY CLUSTERED 
(
	[randevuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 5.5.2019 12:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[rolID] [int] IDENTITY(1,1) NOT NULL,
	[rolAdi] [nvarchar](20) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[rolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hastane] ON 

INSERT [dbo].[Hastane] ([hastaneID], [hastaneAdi], [ilID], [ilceID], [acikAdres]) VALUES (1, N'Esenler Devlet Hastanesi', 1, 1, N'Esenler/İstanbul')
SET IDENTITY_INSERT [dbo].[Hastane] OFF
SET IDENTITY_INSERT [dbo].[Il] ON 

INSERT [dbo].[Il] ([ilID], [ilAdi]) VALUES (1, N'İstanbul')
INSERT [dbo].[Il] ([ilID], [ilAdi]) VALUES (2, N'Bursa')
SET IDENTITY_INSERT [dbo].[Il] OFF
SET IDENTITY_INSERT [dbo].[Ilce] ON 

INSERT [dbo].[Ilce] ([ilceID], [ilceAdi], [ilID]) VALUES (1, N'Esenler', 1)
SET IDENTITY_INSERT [dbo].[Ilce] OFF
ALTER TABLE [dbo].[Bolum]  WITH CHECK ADD  CONSTRAINT [FK_Bolum_Hastane] FOREIGN KEY([hastaneID])
REFERENCES [dbo].[Hastane] ([hastaneID])
GO
ALTER TABLE [dbo].[Bolum] CHECK CONSTRAINT [FK_Bolum_Hastane]
GO
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Bolum] FOREIGN KEY([bolumID])
REFERENCES [dbo].[Bolum] ([bolumID])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Bolum]
GO
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Hastane] FOREIGN KEY([hastaneID])
REFERENCES [dbo].[Hastane] ([hastaneID])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Hastane]
GO
ALTER TABLE [dbo].[Favori]  WITH CHECK ADD  CONSTRAINT [FK_Favori_Doktor] FOREIGN KEY([doktorID])
REFERENCES [dbo].[Doktor] ([doktorID])
GO
ALTER TABLE [dbo].[Favori] CHECK CONSTRAINT [FK_Favori_Doktor]
GO
ALTER TABLE [dbo].[Favori]  WITH CHECK ADD  CONSTRAINT [FK_Favori_Kullanici] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullanicID])
GO
ALTER TABLE [dbo].[Favori] CHECK CONSTRAINT [FK_Favori_Kullanici]
GO
ALTER TABLE [dbo].[Hastane]  WITH CHECK ADD  CONSTRAINT [FK_Hastane_Il] FOREIGN KEY([ilID])
REFERENCES [dbo].[Il] ([ilID])
GO
ALTER TABLE [dbo].[Hastane] CHECK CONSTRAINT [FK_Hastane_Il]
GO
ALTER TABLE [dbo].[Hastane]  WITH CHECK ADD  CONSTRAINT [FK_Hastane_Ilce] FOREIGN KEY([ilceID])
REFERENCES [dbo].[Ilce] ([ilceID])
GO
ALTER TABLE [dbo].[Hastane] CHECK CONSTRAINT [FK_Hastane_Ilce]
GO
ALTER TABLE [dbo].[Ilce]  WITH CHECK ADD  CONSTRAINT [FK_Ilce_Il] FOREIGN KEY([ilID])
REFERENCES [dbo].[Il] ([ilID])
GO
ALTER TABLE [dbo].[Ilce] CHECK CONSTRAINT [FK_Ilce_Il]
GO
ALTER TABLE [dbo].[Izin]  WITH CHECK ADD  CONSTRAINT [FK_Izin_Doktor] FOREIGN KEY([doktorID])
REFERENCES [dbo].[Doktor] ([doktorID])
GO
ALTER TABLE [dbo].[Izin] CHECK CONSTRAINT [FK_Izin_Doktor]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_KullaniciBilgileri] FOREIGN KEY([kullanicID])
REFERENCES [dbo].[KullaniciBilgileri] ([kullaniID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_KullaniciBilgileri]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_Rol] FOREIGN KEY([rolID])
REFERENCES [dbo].[Rol] ([rolID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_Rol]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_Il] FOREIGN KEY([ilID])
REFERENCES [dbo].[Il] ([ilID])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_Il]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_Ilce] FOREIGN KEY([ilceID])
REFERENCES [dbo].[Ilce] ([ilceID])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_Ilce]
GO
ALTER TABLE [dbo].[Randevu]  WITH CHECK ADD  CONSTRAINT [FK_Randevu_Doktor] FOREIGN KEY([doktorID])
REFERENCES [dbo].[Doktor] ([doktorID])
GO
ALTER TABLE [dbo].[Randevu] CHECK CONSTRAINT [FK_Randevu_Doktor]
GO
ALTER TABLE [dbo].[Randevu]  WITH CHECK ADD  CONSTRAINT [FK_Randevu_Kullanici] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullanicID])
GO
ALTER TABLE [dbo].[Randevu] CHECK CONSTRAINT [FK_Randevu_Kullanici]
GO
