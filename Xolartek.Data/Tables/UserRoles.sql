CREATE TABLE [dbo].[UserRoles] (
    [User_UserId] UNIQUEIDENTIFIER NOT NULL,
    [Role_RoleId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_dbo.UserRoles] PRIMARY KEY CLUSTERED ([User_UserId] ASC, [Role_RoleId] ASC),
    CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_Role_RoleId] FOREIGN KEY ([Role_RoleId]) REFERENCES [dbo].[Roles] ([RoleId]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.UserRoles_dbo.Users_User_UserId] FOREIGN KEY ([User_UserId]) REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_User_UserId]
    ON [dbo].[UserRoles]([User_UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Role_RoleId]
    ON [dbo].[UserRoles]([Role_RoleId] ASC);

