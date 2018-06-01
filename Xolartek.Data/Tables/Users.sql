CREATE TABLE [dbo].[Users] (
    [UserId]                                  UNIQUEIDENTIFIER DEFAULT (newsequentialid()) NOT NULL,
    [Username]                                NVARCHAR (MAX)   NOT NULL,
    [Email]                                   NVARCHAR (MAX)   NOT NULL,
    [Password]                                NVARCHAR (MAX)   NOT NULL,
    [IsApproved]                              BIT              NOT NULL,
    [PasswordFailuresSinceLastSuccess]        INT              NOT NULL,
    [LastPasswordFailureDate]                 DATETIME         NULL,
    [LastActivityDate]                        DATETIME         NULL,
    [LastLockoutDate]                         DATETIME         NULL,
    [LastLoginDate]                           DATETIME         NULL,
    [ConfirmationToken]                       NVARCHAR (MAX)   NULL,
    [CreateDate]                              DATETIME         NULL,
    [IsLockedOut]                             BIT              NOT NULL,
    [LastPasswordChangedDate]                 DATETIME         NULL,
    [PasswordVerificationToken]               NVARCHAR (MAX)   NULL,
    [PasswordVerificationTokenExpirationDate] DATETIME         NULL,
    CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

