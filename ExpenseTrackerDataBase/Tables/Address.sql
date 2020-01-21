CREATE TABLE [dbo].[Address] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [UserId]      INT           NULL,
    [StreetAddress] NVARCHAR (50) NULL,
    [City ]         NVARCHAR (50) NULL,
    [State]         NVARCHAR (50) NULL,
    [ZipCode]       NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Address_Person] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);

