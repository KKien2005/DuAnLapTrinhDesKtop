USE master
GO
CREATE DATABASE store_management
GO
USE [store_management]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
	[phone] [char](12) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[amount] [bigint] NULL,
	[totalAmount] [bigint] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
	[customerID] [int] NOT NULL,
	[userID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[price] [bigint] NULL,
	[quantity] [int] NULL,
	[discount] [int] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[stockOnHand] [int] NULL,
	[price] [bigint] NULL,
	[thumb] [varchar](100) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
	[categoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockIn]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockIn](
	[productID] [int] NOT NULL,
	[supplierID] [int] NOT NULL,
	[quantity] [int] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC,
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplierID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19/05/2025 09:38:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](100) NULL,
	[role] [varchar](10) NULL,
	[fullname] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
	[position] [nvarchar](100) NULL,
	[phone] [char](12) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [name], [createdAt], [updatedAt]) VALUES (1, N'Đồ uống', CAST(N'2025-05-18T21:38:49.053' AS DateTime), CAST(N'2025-05-18T21:38:49.057' AS DateTime))
INSERT [dbo].[Category] ([categoryID], [name], [createdAt], [updatedAt]) VALUES (2, N'Đồ ăn nhanh', CAST(N'2025-05-18T21:38:54.923' AS DateTime), CAST(N'2025-05-18T21:38:54.923' AS DateTime))
INSERT [dbo].[Category] ([categoryID], [name], [createdAt], [updatedAt]) VALUES (3, N'Đồ ăn lạnh', CAST(N'2025-05-18T21:39:03.850' AS DateTime), CAST(N'2025-05-18T21:39:03.850' AS DateTime))
INSERT [dbo].[Category] ([categoryID], [name], [createdAt], [updatedAt]) VALUES (4, N'Thực phẩm khô', CAST(N'2025-05-18T21:39:09.697' AS DateTime), CAST(N'2025-05-18T21:39:09.697' AS DateTime))
INSERT [dbo].[Category] ([categoryID], [name], [createdAt], [updatedAt]) VALUES (5, N'Thực phẩm đóng hộp', CAST(N'2025-05-18T21:40:58.097' AS DateTime), CAST(N'2025-05-18T21:40:58.097' AS DateTime))
INSERT [dbo].[Category] ([categoryID], [name], [createdAt], [updatedAt]) VALUES (6, N'Gia vị', CAST(N'2025-05-18T21:41:03.520' AS DateTime), CAST(N'2025-05-18T21:41:03.520' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customerID], [name], [address], [phone], [createdAt], [updatedAt]) VALUES (1, N'Nguyễn Đức Điệp', N'Hà Nội', N'0832344555  ', CAST(N'2025-05-18T22:02:26.447' AS DateTime), CAST(N'2025-05-18T22:02:26.447' AS DateTime))
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone], [createdAt], [updatedAt]) VALUES (2, N'Hoàng Duy Khánh', N'Hải Phòng', N'0869246248  ', CAST(N'2025-05-18T22:03:13.400' AS DateTime), CAST(N'2025-05-18T22:03:13.400' AS DateTime))
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone], [createdAt], [updatedAt]) VALUES (3, N'Lường Bá Hoàng', N'Thanh Hoá', N'0963549898  ', CAST(N'2025-05-18T22:04:18.143' AS DateTime), CAST(N'2025-05-18T22:04:18.143' AS DateTime))
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone], [createdAt], [updatedAt]) VALUES (4, N'Nguyễn Hữu Hoàng', N'Nghệ An', N'0987678987  ', CAST(N'2025-05-18T22:04:39.287' AS DateTime), CAST(N'2025-05-18T22:04:39.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderID], [amount], [totalAmount], [createdAt], [updatedAt], [customerID], [userID]) VALUES (1, 3440000, 3440000, CAST(N'2025-05-18T23:02:04.890' AS DateTime), CAST(N'2025-05-18T23:02:04.890' AS DateTime), 2, 2)
INSERT [dbo].[Order] ([orderID], [amount], [totalAmount], [createdAt], [updatedAt], [customerID], [userID]) VALUES (2, 601000, 601000, CAST(N'2025-05-18T23:42:09.187' AS DateTime), CAST(N'2025-05-18T23:42:09.193' AS DateTime), 4, 2)
INSERT [dbo].[Order] ([orderID], [amount], [totalAmount], [createdAt], [updatedAt], [customerID], [userID]) VALUES (3, 1023000, 1023000, CAST(N'2025-05-18T23:42:33.420' AS DateTime), CAST(N'2025-05-18T23:42:33.423' AS DateTime), 1, 2)
INSERT [dbo].[Order] ([orderID], [amount], [totalAmount], [createdAt], [updatedAt], [customerID], [userID]) VALUES (4, 24000, 24000, CAST(N'2025-05-18T23:42:57.280' AS DateTime), CAST(N'2025-05-18T23:42:57.280' AS DateTime), 3, 2)
INSERT [dbo].[Order] ([orderID], [amount], [totalAmount], [createdAt], [updatedAt], [customerID], [userID]) VALUES (5, 500000, 454000, CAST(N'2025-05-18T23:49:05.330' AS DateTime), CAST(N'2025-05-18T23:49:05.330' AS DateTime), 2, 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (1, 1, 15000, 4, 0, CAST(N'2025-05-18T23:02:05.207' AS DateTime), CAST(N'2025-05-18T23:02:05.210' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (1, 3, 45000, 3, 0, CAST(N'2025-05-18T23:02:05.220' AS DateTime), CAST(N'2025-05-18T23:02:05.220' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (1, 4, 4000, 2, 0, CAST(N'2025-05-18T23:02:05.227' AS DateTime), CAST(N'2025-05-18T23:02:05.227' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (1, 5, 5000, 3, 0, CAST(N'2025-05-18T23:02:05.233' AS DateTime), CAST(N'2025-05-18T23:02:05.233' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (1, 6, 6000, 12, 0, CAST(N'2025-05-18T23:02:05.243' AS DateTime), CAST(N'2025-05-18T23:02:05.243' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (1, 7, 230000, 5, 0, CAST(N'2025-05-18T23:02:05.250' AS DateTime), CAST(N'2025-05-18T23:02:05.250' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (1, 8, 250000, 8, 0, CAST(N'2025-05-18T23:02:05.260' AS DateTime), CAST(N'2025-05-18T23:02:05.260' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (2, 3, 45000, 3, 0, CAST(N'2025-05-18T23:42:09.317' AS DateTime), CAST(N'2025-05-18T23:42:09.320' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (2, 6, 6000, 1, 0, CAST(N'2025-05-18T23:42:09.330' AS DateTime), CAST(N'2025-05-18T23:42:09.330' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (2, 7, 230000, 2, 0, CAST(N'2025-05-18T23:42:09.337' AS DateTime), CAST(N'2025-05-18T23:42:09.337' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (3, 2, 14000, 1, 0, CAST(N'2025-05-18T23:42:33.580' AS DateTime), CAST(N'2025-05-18T23:42:33.583' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (3, 3, 45000, 2, 0, CAST(N'2025-05-18T23:42:33.593' AS DateTime), CAST(N'2025-05-18T23:42:33.593' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (3, 4, 4000, 1, 0, CAST(N'2025-05-18T23:42:33.600' AS DateTime), CAST(N'2025-05-18T23:42:33.600' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (3, 5, 5000, 1, 0, CAST(N'2025-05-18T23:42:33.610' AS DateTime), CAST(N'2025-05-18T23:42:33.610' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (3, 8, 250000, 3, 0, CAST(N'2025-05-18T23:42:33.620' AS DateTime), CAST(N'2025-05-18T23:42:33.620' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (3, 9, 20000, 8, 0, CAST(N'2025-05-18T23:42:33.630' AS DateTime), CAST(N'2025-05-18T23:42:33.630' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (4, 4, 4000, 1, 0, CAST(N'2025-05-18T23:42:57.333' AS DateTime), CAST(N'2025-05-18T23:42:57.333' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (4, 9, 20000, 1, 0, CAST(N'2025-05-18T23:42:57.340' AS DateTime), CAST(N'2025-05-18T23:42:57.340' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (5, 2, 14000, 2, 0, CAST(N'2025-05-18T23:49:05.440' AS DateTime), CAST(N'2025-05-18T23:49:05.443' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (5, 4, 4000, 3, 0, CAST(N'2025-05-18T23:49:05.450' AS DateTime), CAST(N'2025-05-18T23:49:05.450' AS DateTime))
INSERT [dbo].[OrderDetail] ([orderID], [productID], [price], [quantity], [discount], [createdAt], [updatedAt]) VALUES (5, 7, 230000, 2, 10, CAST(N'2025-05-18T23:49:05.460' AS DateTime), CAST(N'2025-05-18T23:49:05.460' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (1, N'Nước Cocacola', 432, 15000, NULL, CAST(N'2025-05-18T22:31:46.130' AS DateTime), CAST(N'2025-05-18T23:39:38.787' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (2, N'Nước Pepsi', 97, 14000, NULL, CAST(N'2025-05-18T22:34:28.917' AS DateTime), CAST(N'2025-05-18T23:49:05.383' AS DateTime), 1)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (3, N'Xúc xích', 195, 45000, NULL, CAST(N'2025-05-18T22:35:07.480' AS DateTime), CAST(N'2025-05-18T23:42:33.530' AS DateTime), 2)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (4, N'Bột canh hải châu', 93, 4000, NULL, CAST(N'2025-05-18T22:37:19.700' AS DateTime), CAST(N'2025-05-18T23:49:05.393' AS DateTime), 6)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (5, N'Kem socola', 216, 5000, NULL, CAST(N'2025-05-18T22:40:12.013' AS DateTime), CAST(N'2025-05-18T23:42:33.553' AS DateTime), 3)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (6, N'Kem sữa chua', 309, 6000, NULL, CAST(N'2025-05-18T22:40:28.110' AS DateTime), CAST(N'2025-05-18T23:42:09.293' AS DateTime), 3)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (7, N'Cá hồi', 91, 230000, NULL, CAST(N'2025-05-18T22:42:20.020' AS DateTime), CAST(N'2025-05-18T23:49:05.400' AS DateTime), 5)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (8, N'Mực khô', 239, 250000, NULL, CAST(N'2025-05-18T22:42:38.760' AS DateTime), CAST(N'2025-05-18T23:42:33.560' AS DateTime), 4)
INSERT [dbo].[Product] ([productID], [name], [stockOnHand], [price], [thumb], [createdAt], [updatedAt], [categoryID]) VALUES (9, N'Mắm nam ngư', 290, 20000, NULL, CAST(N'2025-05-18T23:37:11.627' AS DateTime), CAST(N'2025-05-18T23:42:57.320' AS DateTime), 6)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[StockIn] ([productID], [supplierID], [quantity], [createdAt], [updatedAt]) VALUES (1, 7, 336, CAST(N'2025-05-18T23:37:27.033' AS DateTime), CAST(N'2025-05-18T23:39:38.797' AS DateTime))
INSERT [dbo].[StockIn] ([productID], [supplierID], [quantity], [createdAt], [updatedAt]) VALUES (3, 8, 103, CAST(N'2025-05-18T23:37:46.217' AS DateTime), CAST(N'2025-05-18T23:37:46.217' AS DateTime))
INSERT [dbo].[StockIn] ([productID], [supplierID], [quantity], [createdAt], [updatedAt]) VALUES (5, 2, 120, CAST(N'2025-05-18T23:39:20.020' AS DateTime), CAST(N'2025-05-18T23:39:20.023' AS DateTime))
INSERT [dbo].[StockIn] ([productID], [supplierID], [quantity], [createdAt], [updatedAt]) VALUES (6, 7, 222, CAST(N'2025-05-18T23:40:12.220' AS DateTime), CAST(N'2025-05-18T23:40:12.220' AS DateTime))
INSERT [dbo].[StockIn] ([productID], [supplierID], [quantity], [createdAt], [updatedAt]) VALUES (8, 4, 150, CAST(N'2025-05-18T23:38:42.403' AS DateTime), CAST(N'2025-05-18T23:38:42.403' AS DateTime))
INSERT [dbo].[StockIn] ([productID], [supplierID], [quantity], [createdAt], [updatedAt]) VALUES (9, 6, 199, CAST(N'2025-05-18T23:39:51.797' AS DateTime), CAST(N'2025-05-18T23:39:51.797' AS DateTime))
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (1, N'Công ty FOCOCEV Việt Nam', N'Tp. HCM', CAST(N'2025-05-18T21:44:42.470' AS DateTime), CAST(N'2025-05-18T21:44:42.470' AS DateTime))
INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (2, N'Công ty Nam Bảo Tín', N'Tp. HCM', CAST(N'2025-05-18T21:45:04.650' AS DateTime), CAST(N'2025-05-18T21:45:04.650' AS DateTime))
INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (3, N'Công ty Minh Anh', N'Tp. HCM', CAST(N'2025-05-18T21:45:28.307' AS DateTime), CAST(N'2025-05-18T21:45:28.307' AS DateTime))
INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (4, N'Công ty Hồng Phú Á', N'Tp. HCM', CAST(N'2025-05-18T21:45:54.160' AS DateTime), CAST(N'2025-05-18T21:45:54.160' AS DateTime))
INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (5, N'Công ty Bích Chi', N'Đồng Tháp', CAST(N'2025-05-18T21:46:20.490' AS DateTime), CAST(N'2025-05-18T21:46:20.490' AS DateTime))
INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (6, N'Công ty Thái Dương', N'Tp. HCM', CAST(N'2025-05-18T21:46:33.077' AS DateTime), CAST(N'2025-05-18T21:46:33.077' AS DateTime))
INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (7, N'Công ty Alpha Group', N'Hà Nội', CAST(N'2025-05-18T21:46:53.563' AS DateTime), CAST(N'2025-05-18T21:53:09.630' AS DateTime))
INSERT [dbo].[Supplier] ([supplierID], [name], [address], [createdAt], [updatedAt]) VALUES (8, N'Công ty Farina', N'Hà Nội', CAST(N'2025-05-18T21:47:33.120' AS DateTime), CAST(N'2025-05-18T21:53:19.573' AS DateTime))
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [username], [password], [role], [fullname], [address], [position], [phone], [createdAt], [updatedAt]) VALUES (1, N'admin', N'12345', N'admin', N'Hồ Xuân Lộc', N'Hồ Chí Minh', N'Tổng giám đốc', N'0981726364  ', CAST(N'2025-05-18T21:57:02.167' AS DateTime), CAST(N'2025-05-18T22:00:09.650' AS DateTime))
INSERT [dbo].[User] ([userID], [username], [password], [role], [fullname], [address], [position], [phone], [createdAt], [updatedAt]) VALUES (2, N'employee', N'12345', N'staff', N'Đặng Minh Kiên', N'Quảng Ninh', N'Nhân viên', N'0937125352  ', CAST(N'2025-05-18T21:59:05.250' AS DateTime), CAST(N'2025-05-18T21:59:05.250' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [stockOnHand]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[StockIn]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[StockIn]  WITH CHECK ADD FOREIGN KEY([supplierID])
REFERENCES [dbo].[Supplier] ([supplierID])
GO
