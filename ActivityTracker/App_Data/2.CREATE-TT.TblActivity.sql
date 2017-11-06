USE [SSAM]
GO

/****** Object:  Table [TL].[Activity]    Script Date: 11/01/2017 13:34:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [TT].[Activity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceLineFunctionID] [int] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Active] [bit] NOT NULL,
	[DMLType] [varchar](10) NOT NULL,
	[RecordInsertDateTime] [datetime] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [TT].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_ServiceLineFunction] FOREIGN KEY([ServiceLineFunctionID])
REFERENCES [TT].[ServiceLineFunction] ([ID])
GO

ALTER TABLE [TT].[Activity] CHECK CONSTRAINT [FK_Activity_ServiceLineFunction]
GO

ALTER TABLE [TT].[Activity] ADD  CONSTRAINT [DF_Activity_Active]  DEFAULT ((1)) FOR [Active]
GO


