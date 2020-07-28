CREATE PROCEDURE [dbo].[Expense_Update]
    @Id INT,
    @Description VARCHAR(300) = NULL, 
    @Project VARCHAR(150) = NULL, 
    @Date DATETIME = NULL, 
    @Category VARCHAR(50) = NULL, 
    @Merchant VARCHAR(50) = NULL, 
    @Amount DECIMAL(13, 2) = NULL, 
    @ReportNumber VARCHAR(50) = NULL,
    @Status INT
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
