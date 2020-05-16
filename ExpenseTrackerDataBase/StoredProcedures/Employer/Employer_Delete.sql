CREATE PROCEDURE [dbo].[Employer_Delete]
	@Id int
AS
BEGIN
	IF EXISTS (SELECT * FROM Employer WHERE Id = @Id)
		DELETE FROM Employer
		WHERE Id = @Id
END
