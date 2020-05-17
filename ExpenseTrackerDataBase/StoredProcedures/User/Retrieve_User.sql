create PROCEDURE [dbo].[spRetrieve_User]

/*This stored proceedure takes the user information 
entered at login and returns the user information 
connected to the user information that was entered*/

    @UserName       VARCHAR(50) = null, 
    @Password       VARCHAR(50) = null

AS

BEGIN
    select * FROM [User]
    where (UserName = @UserName AND Password = @Password);
END