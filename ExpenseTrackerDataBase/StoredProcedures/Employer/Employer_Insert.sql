CREATE PROCEDURE [dbo].[Employer_Insert]
	@CompanyName VARCHAR(150)
AS
BEGIN
	INSERT INTO Employer(CompanyName)
	VALUES (@CompanyName)
END
