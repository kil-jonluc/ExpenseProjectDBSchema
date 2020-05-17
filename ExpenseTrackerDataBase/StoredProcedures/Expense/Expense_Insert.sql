CREATE PROCEDURE [dbo].[Expense_Insert]
	@Description VARCHAR(300), 
    @Project VARCHAR(150), 
    @Date DATETIME, 
    @Category VARCHAR(50), 
    @Merchant VARCHAR(50), 
    @Amount DECIMAL(13, 2), 
    @ReportNumber VARCHAR(50),
    @EmployerId Int
AS
BEGIN
    INSERT INTO Expense([Description], Project, [Date], Category, Merchant, Amount, ReportNumber, EmployerId)
    VALUES(@Description, @Project, @Date, @Category, @Merchant, @Amount, @ReportNumber, @EmployerId)
END
