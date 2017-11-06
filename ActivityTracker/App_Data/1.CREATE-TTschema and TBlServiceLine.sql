USE [SSAM]
GO

/****** Object:  Table [TL].[ServiceLineFunction]    Script Date: 11/01/2017 13:32:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO
CREATE SCHEMA TT;
GO

CREATE TABLE [TT].[ServiceLineFunction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Active] [bit] NOT NULL,
	[DMLType] [varchar](10) NOT NULL,
	[RecordInsertDateTime] [datetime] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ServiceLineFunction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [TT].[ServiceLineFunction] ADD  CONSTRAINT [DF_ServiceLineFunction_Active]  DEFAULT ((1)) FOR [Active]
GO


