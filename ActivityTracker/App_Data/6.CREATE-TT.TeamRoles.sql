USE [SSAM]
GO

/****** Object:  Table [TT].[TeamRoles]    Script Date: 11/06/2017 14:40:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [TT].[TeamRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeTeamID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[DMLType] [varchar](20) NOT NULL,
	[RecordInsertDateTime] [datetime] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TeamRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [TT].[TeamRoles]  WITH CHECK ADD  CONSTRAINT [FK_TeamRoles_Roles] FOREIGN KEY([RoleID])
REFERENCES [TT].[Roles] ([ID])
GO

ALTER TABLE [TT].[TeamRoles] CHECK CONSTRAINT [FK_TeamRoles_Roles]
GO

ALTER TABLE [TT].[TeamRoles]  WITH CHECK ADD  CONSTRAINT [FK_TeamRoles_tblEmployeeTeams] FOREIGN KEY([EmployeeTeamID])
REFERENCES [dbo].[tblEmployeeTeams] ([ID])
GO

ALTER TABLE [TT].[TeamRoles] CHECK CONSTRAINT [FK_TeamRoles_tblEmployeeTeam]
GO

ALTER TABLE [TT].[TeamRoles] ADD  CONSTRAINT [DF_TeamRoles_Active]  DEFAULT ((1)) FOR [Active]
GO


