CREATE PROCEDURE [dbo].[Employer_Update]
	@Id int,
	@CompanyName VARCHAR(150)
AS
BEGIN
	IF EXISTS (SELECT Id FROM Employer WHERE Id = @Id)
		UPDATE Employer
		SET CompanyName = @CompanyName
		WHERE Id = @Id
END
