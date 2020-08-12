CREATE PROCEDURE [dbo].[Expense_StatusUpdate]
    @Id         INT,
    @Status     INT
AS
BEGIN
    IF EXISTS (SELECT Id FROM Expense WHERE Id = @Id)
        BEGIN
            UPDATE Expense
            SET [Status] = @Status
        END
END
