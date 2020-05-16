CREATE PROCEDURE [dbo].[Employer_GetById]
	@Id int
AS
BEGIN
	SELECT * FROM Employer
	WHERE Id = @Id
END