﻿CREATE PROCEDURE [dbo].[Expense_Delete]
	@Id INT
AS
BEGIN
	IF EXISTS (SELECT Id FROM Expense WHERE Id = @Id)
		DELETE FROM Expense
		WHERE Id = @Id
END