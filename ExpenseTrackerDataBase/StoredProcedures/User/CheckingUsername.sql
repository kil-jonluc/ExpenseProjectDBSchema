CREATE PROCEDURE [dbo].[spCheckingUsername]

    @UserName       VARCHAR(50)
	
	
AS
BEGIN
select count(*) from [User]
where UserName = @UserName
END


