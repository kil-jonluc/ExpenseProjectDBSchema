﻿CREATE TABLE [dbo].[ExpenseNotes]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
	[ExpenseId] INT NULL,
	[TimeStamp] DATETIME NULL,
	[UserId] INT NULL, 
	CONSTRAINT [FK_Expense] FOREIGN KEY ([ExpenseId]) REFERENCES [Expense]([Id]),
	CONSTRAINT [FK_User] FOREIGN KEY ([UserId]) REFERENCES [User]([UserId])

)
