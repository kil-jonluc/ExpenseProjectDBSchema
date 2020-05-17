CREATE PROCEDURE [dbo].[User_GetById]
	@Id int
AS
BEGIN
	SELECT * FROM [User]
	WHERE UserId = @Id
END