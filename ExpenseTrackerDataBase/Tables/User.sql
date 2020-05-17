CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL, 
    [Email] VARCHAR(50) NULL, 
    [UserName] VARCHAR(50) NULL, 
    [Password] VARCHAR(50) NULL, 
    [PhoneNumber] VARCHAR(50) NULL, 
    [SSN] VARCHAR(50) NULL, 
    [RoleId] INT NULL DEFAULT 1, 
    [EmployerId] INT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_User_UserRoles] FOREIGN KEY ([RoleId]) REFERENCES [UserRoles]([Id]), 
    CONSTRAINT [FK_User_Employer] FOREIGN KEY ([EmployerId]) REFERENCES [Employer]([Id])
)
