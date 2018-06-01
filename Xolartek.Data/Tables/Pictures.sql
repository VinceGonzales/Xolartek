CREATE TABLE [dbo].[Pictures] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Source]    NVARCHAR (MAX) NOT NULL,
    [CSSClass]  NVARCHAR (MAX) NULL,
    [Alternate] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Pictures] PRIMARY KEY CLUSTERED ([Id] ASC)
);

