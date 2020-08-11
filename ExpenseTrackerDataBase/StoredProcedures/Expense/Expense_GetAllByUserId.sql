CREATE PROCEDURE [dbo].[Expense_GetAllByUserId]
	@UserID		 INT

AS

BEGIN
	SELECT * FROM Expense WHERE UserID = @UserID
END