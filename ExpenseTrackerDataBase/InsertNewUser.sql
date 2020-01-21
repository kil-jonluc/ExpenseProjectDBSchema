create PROCEDURE [dbo].[spNewUser_Insert]
	
    @FirstName      VARCHAR(50), 
    @LastName       VARCHAR(50), 
    @Email          VARCHAR(50), 
    @UserName       VARCHAR(50), 
    @Password       VARCHAR(50), 
    @PhoneNumber    VARCHAR(50), 
    @SSN            VARCHAR(50)

AS

BEGIN

	INSERT into "User" (FirstName, LastName, Email, UserName, Password, PhoneNumber, SSN)
    values  (@FirstName, @LastName, @Email, @UserName, @Password, @PhoneNumber, @SSN )

END