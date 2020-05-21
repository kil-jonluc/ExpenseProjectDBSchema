CREATE TABLE [dbo].[Expense]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Description] VARCHAR(300) NULL, 
    [Project] VARCHAR(150) NULL, 
    [Date] DATETIME NULL, 
    [Category] VARCHAR(50) NULL, 
    [Merchant] VARCHAR(50) NULL, 
    [Amount] DECIMAL(13, 2) NULL, 
    [ReportNumber] VARCHAR(50) NULL, 
    [EmployerId] INT NULL, 
    [UserID] INT NULL,
    [Status] INT NULL,
    [ImageId] INT NULL,
    CONSTRAINT [FK_Expense_Employer] FOREIGN KEY ([EmployerId]) REFERENCES [Employer]([Id]),
    CONSTRAINT [FK_Expense_User] FOREIGN KEY ([UserId]) REFERENCES [User]([UserId]),
    CONSTRAINT [FK_Expense_Image] FOREIGN KEY ([ImageId]) REFERENCES [ExpenseImage]([Id]),
)
