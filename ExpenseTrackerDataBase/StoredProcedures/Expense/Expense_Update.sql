CREATE PROCEDURE [dbo].[Expense_Update]
    @Id INT,
    @Description    VARCHAR(300) = " ", 
    @Project        VARCHAR(150) = " ", 
    @Date           DATETIME, 
    @Category       VARCHAR(50) = " ", 
    @Merchant       VARCHAR(50) = " ", 
    @Amount         DECIMAL(13, 2), 
    @ReportNumber   VARCHAR(50) = " ",
    @Status         INT
AS
BEGIN
    IF EXISTS (SELECT Id FROM Expense WHERE Id = @Id)
        BEGIN
            UPDATE Expense
            SET [Description] = @Description,
                Project = @Project,
                [Date] = @Date,
                Category = @Category,
                Merchant = @Merchant,
                Amount = @Amount,
                ReportNumber = @ReportNumber,
                [Status] = @Status
        END
END
