CREATE PROCEDURE [dbo].[spUser_Update]

/*This stored proceedure updates user information 
in the user table
*/	

    @UserId         int,
    @FirstName      VARCHAR(50) = " ", 
    @LastName       VARCHAR(50) = " ", 
    @Email          VARCHAR(50) = " ", 
    @UserName       VARCHAR(50) = " ", 
    @Password       VARCHAR(50) = " ", 
    @PhoneNumber    VARCHAR(50) = " ", 
    @SSN            VARCHAR(50) = " ",
    @RoleId         INT,
    @EmployerId     INT

AS

BEGIN
	IF EXISTS (SELECT UserId FROM [User] WHERE UserId = @UserId)
    UPDATE [User]
	SET FirstName = @FirstName, LastName = @LastName, Email = @Email, UserName = @UserName, Password = @Password, PhoneNumber = @PhoneNumber, SSN = @SSN, RoleId = @RoleId, EmployerId = @EmployerId
    WHERE UserId = @UserId
END