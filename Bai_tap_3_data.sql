USE [baitap]
GO
INSERT [dbo].[SinhVien] ([MSSV], [hoten], [ngaysinh]) VALUES (N'K225123456789', N'Nguyễn Văn A', CAST(N'2004-04-03' AS Date))
INSERT [dbo].[SinhVien] ([MSSV], [hoten], [ngaysinh]) VALUES (N'K225987654321', N'Nguyễn Văn B', CAST(N'2004-03-04' AS Date))
GO
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [STC]) VALUES (N'M123', N'hệ quản trị cơ sở dưx liệu', 3)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [STC]) VALUES (N'M321', N'thiết kế và phân tích hệ thống', 3)
GO
INSERT [dbo].[Khoa] ([makhoa], [tenkhoa]) VALUES (N'K123', N'Điện tử')
INSERT [dbo].[Khoa] ([makhoa], [tenkhoa]) VALUES (N'K321', N'Điện')
GO
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [makhoa]) VALUES (N'BM123', N'CNTT', N'K123')
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [makhoa]) VALUES (N'BM321', N'CNTT', N'K321')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [MaBM]) VALUES (N'G123', N'Nguyễn Văn C', CAST(N'1994-03-05' AS Date), N'BM123')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [MaBM]) VALUES (N'G321', N'Nguyễn Văn D', CAST(N'1996-02-25' AS Date), N'BM321')
GO
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [mamon], [magv]) VALUES (N'HP123', N'Hệ quản trị cơ sở dữ liệu', 3, N'M123', N'G123')
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [mamon], [magv]) VALUES (N'HP321', N'Thiết kế và phân tích hệ thống', 3, N'M321', N'G321')
GO
INSERT [dbo].[DKMH] ([id_dk], [MSSV], [maLopHP], [diemthi], [phantramthi]) VALUES (12, N'K225123456789', N'HP123', 4, 60)
INSERT [dbo].[DKMH] ([id_dk], [MSSV], [maLopHP], [diemthi], [phantramthi]) VALUES (13, N'k225987654321', N'HP321', 3, 60)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'1', 12, 7)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'2', 13, 4)
GO
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'L123', N'K58.KMT.k01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'L321', N'K58.KMT.K02')
GO
INSERT [dbo].[GVCN] ([malop], [magv], [HK]) VALUES (N'L123', N'G123', 3)
INSERT [dbo].[GVCN] ([malop], [magv], [HK]) VALUES (N'L321', N'G321', 3)
GO
INSERT [dbo].[LopSV] ([malop], [MSSV], [chucvu]) VALUES (N'L123', N'K225123456789', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([malop], [MSSV], [chucvu]) VALUES (N'L321', N'K225987654321', N'thành viên')
GO
