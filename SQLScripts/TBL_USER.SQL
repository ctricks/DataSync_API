USE [diversity_datasync]
GO

/****** Object:  Table [dbo].[tblDataUsers]    Script Date: 5/1/2024 11:51:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDataUsers](
	[ID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[CreatedById] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedById] [int] NOT NULL,
	[DeletedDate] [datetime] NULL,
	[DeletedById] [int] NOT NULL,
	[Remarks] [varchar](100) NULL,
 CONSTRAINT [PK_tblDataUsers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblDataUsers] ADD  CONSTRAINT [DF_tblDataUsers_RoleID]  DEFAULT ((-1)) FOR [RoleID]
GO

ALTER TABLE [dbo].[tblDataUsers] ADD  CONSTRAINT [DF_tblDataUsers_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO

ALTER TABLE [dbo].[tblDataUsers] ADD  CONSTRAINT [DF_tblDataUsers_CreatedById]  DEFAULT ((-1)) FOR [CreatedById]
GO

ALTER TABLE [dbo].[tblDataUsers] ADD  CONSTRAINT [DF_tblDataUsers_ModifiedById]  DEFAULT ((-1)) FOR [ModifiedById]
GO

ALTER TABLE [dbo].[tblDataUsers] ADD  CONSTRAINT [DF_tblDataUsers_DeletedById]  DEFAULT ((-1)) FOR [DeletedById]
GO
