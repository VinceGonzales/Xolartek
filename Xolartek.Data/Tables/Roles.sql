CREATE TABLE [dbo].[Roles] (
    [RoleId]      UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [RoleName]    NVARCHAR (MAX)   NOT NULL,
    [Description] NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED ([RoleId] ASC)
);

