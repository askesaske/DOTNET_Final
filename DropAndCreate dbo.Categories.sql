USE [BethanysPieShop-1ED06986-5F07-4A1C-85B9-D9F3F477BFF5]
GO

/****** Object: Table [dbo].[Categories] Script Date: 24.04.2020 16:12:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[Categories];


GO
CREATE TABLE [dbo].[Categories] (
    [CategoryId]   INT            IDENTITY (1, 1) NOT NULL,
    [CategoryName] NVARCHAR (MAX) NULL,
    [Description]  NVARCHAR (MAX) NULL
);

SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description]) VALUES (1, N'Battery pods', NULL)
INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description]) VALUES (2, N'Suorin', NULL)
INSERT INTO [dbo].[Categories] ([CategoryId], [CategoryName], [Description]) VALUES (3, N'Electro cigarra', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF


