﻿CREATE PROCEDURE [dbo].[Expense_GetById]
	@Id INT
AS
BEGIN
	SELECT * FROM Expense WHERE Id = @Id
END
