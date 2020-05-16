create PROCEDURE [dbo].[spNewUser_Insert]

/*This stored proceedure takes the user information 
create user page and then stores it into the user
table
*/	

    @FirstName      VARCHAR(50) = " ", 
    @LastName       VARCHAR(50) = " ", 
    @Email          VARCHAR(50) = " ", 
    @UserName       VARCHAR(50) = " ", 
    @Password       VARCHAR(50) = " ", 
    @PhoneNumber    VARCHAR(50) = " ", 
    @SSN            VARCHAR(50) = " ",
    @RoleId         INT

AS

BEGIN

	INSERT into "User" (FirstName, LastName, Email, UserName, Password, PhoneNumber, SSN, RoleId)
    values  (@FirstName, @LastName, @Email, @UserName, @Password, @PhoneNumber, @SSN, @RoleId )

END