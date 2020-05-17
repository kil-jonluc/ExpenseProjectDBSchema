CREATE PROCEDURE [dbo].[Expense_GetAllByEmployerId]
	@EmployerId INT
AS
BEGIN
	SELECT * FROM Expense WHERE EmployerId = @EmployerId
END