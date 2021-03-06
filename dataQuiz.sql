USE [Lab01_Quiz]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 26/07/2021 9:46:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 26/07/2021 9:46:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[AnswerContent] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 26/07/2021 9:46:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Option1] [nvarchar](max) NOT NULL,
	[Option2] [nvarchar](max) NOT NULL,
	[Option3] [nvarchar](max) NOT NULL,
	[Option4] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Account1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 26/07/2021 9:46:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[accountid] [int] NOT NULL,
	[result] [float] NOT NULL,
	[date] [date] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (1, N'student', N'123456', N'student', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (2, N'abc', N'123456', N'teacher', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (3, N'teacher1', N'123456', N'teacher', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (4, N'dat', N'123456', N'teacher', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (5, N'student2', N'123456', N'student', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (6, N'eochanghy', N'123456', N'teacher', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (7, N'admin', N'admin', N'teacher', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (9, N'datnt', N'123456', N'teacher', N'datntHE140790@fpt.edu.vn')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (10, N'admin3', N'admin', N'teacher', N'dat@gmail.com')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (12, N'admin98', N'123456', N'teacher', N'dat@gmail.com')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (13, N'admin100', N'123456', N'student', N'dat@gmail.com')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (14, N'admin102', N'dat', N'student', N'dat@gmail.com')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (15, N'admin50', N'123456', N'teacher', N'datnt@gmail.com')
INSERT [dbo].[Account] ([id], [username], [password], [type], [email]) VALUES (16, N'dat50', N'123456', N'teacher', N'datnt@gmail.com')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (1, 3, 1)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (2, 1, 2)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (3, 3, 3)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (4, 4, 4)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (5, 1, 5)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (6, 2, 6)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (7, 3, 7)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (8, 1, 8)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (9, 2, 8)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (10, 1, 9)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (11, 2, 9)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (12, 3, 9)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (13, 3, 10)
INSERT [dbo].[Answer] ([AnswerID], [AnswerContent], [QuestionID]) VALUES (14, 4, 10)
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (1, N'Đây là nội dung của câu hỏi số 1, xin hay trả lời đúng:', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này đúng', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (2, N'Đây là nội dung của câu hỏi số 2, xin hay trả lời đúng:', N'Đáp án này đúng', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (3, N'Đây là nội dung của câu hỏi số 3, xin hay trả lời đúng:', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này đúng', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (4, N'Đây là nội dung của câu hỏi số 4, xin hay trả lời đúng:', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này đúng', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (5, N'Đây là nội dung của câu hỏi số 5, xin hay trả lời đúng:', N'Đáp án này đúng', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (6, N'Đây là nội dung của câu hỏi số 6, xin hay trả lời đúng:', N'Đáp án này sai', N'Đáp án này đúng', N'Đáp án này sai', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (7, N'Đây là nội dung của câu hỏi số 7, xin hay trả lời đúng:', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này đúng', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (8, N'Đây là nội dung của câu hỏi số 8, xin hay trả lời đúng:', N'Đáp án này đúng', N'Đáp án này đúng', N'Đáp án này sai', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (9, N'Đây là nội dung của câu hỏi số 9, xin hay trả lời đúng:', N'Đáp án này đúng', N'Đáp án này đúng', N'Đáp án này đúng', N'Đáp án này sai', CAST(N'2021-08-06' AS Date), 7)
INSERT [dbo].[Question] ([ID], [Question], [Option1], [Option2], [Option3], [Option4], [Date], [AccountID]) VALUES (10, N'Đây là nội dung của câu hỏi số 10, xin hay trả lời đúng:', N'Đáp án này sai', N'Đáp án này sai', N'Đáp án này đúng', N'Đáp án này đúng', CAST(N'2021-08-06' AS Date), 7)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (2, 0, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (1, 0, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (1, 6.67, CAST(N'2021-07-01' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (2, 0, CAST(N'2021-07-07' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (2, 10, CAST(N'2021-07-15' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (2, 5, CAST(N'2021-07-15' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (2, 0, CAST(N'2021-07-15' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 0, CAST(N'2021-07-15' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 3.33, CAST(N'2021-07-15' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 0, CAST(N'2021-07-16' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 6.7, CAST(N'2021-07-16' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 10, CAST(N'2021-07-16' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (1, 0, CAST(N'2021-07-19' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 0, CAST(N'2021-07-19' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (1, 10, CAST(N'2021-07-19' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 3.33, CAST(N'2021-07-19' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 6.7, CAST(N'2021-07-19' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 6.7, CAST(N'2021-07-21' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 10, CAST(N'2021-07-22' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 5, CAST(N'2021-07-22' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 3.3, CAST(N'2021-07-22' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 7.5, CAST(N'2021-07-22' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 10, CAST(N'2021-07-23' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 5, CAST(N'2021-07-23' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 6.7, CAST(N'2021-07-23' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 7.5, CAST(N'2021-07-23' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (1, 6.7, CAST(N'2021-07-26' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (1, 3.3, CAST(N'2021-07-26' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 3.3, CAST(N'2021-07-19' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 3.3, CAST(N'2021-07-21' AS Date))
INSERT [dbo].[Result] ([accountid], [result], [date]) VALUES (7, 0, CAST(N'2021-07-23' AS Date))
GO
