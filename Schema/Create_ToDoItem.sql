USE [to-do-list]
GO

/****** Object:  Table [dbo].[ToDoItem]    Script Date: 19/11/2023 7:12:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ToDoItem](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Items] [nvarchar](max) NOT NULL,
	[Priority] [int] NULL,
	[DueDate] [datetime2](7) NULL,
	[Status] [tinyint] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LastUpdatedBy] [nvarchar](50) NULL,
	[LastUpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_ToDoItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO