--SELECT * FROM dbo.[UserRoles]
SET IDENTITY_INSERT [dbo].[UserRoles] ON;
;WITH cte_userRoles([Id], [Role], [Description])
AS (
	SELECT * FROM (
		VALUES
		(0,0,'Employer'),
		(1,1,'Employee')
		) c([Id],[Role], [Description]))
MERGE [dbo].[UserRoles] as T
USING cte_userRoles as S
ON 1=1 AND T.[Id] = S.[Id]
WHEN MATCHED THEN
	UPDATE SET
	[Role] = S.[Role],
	[Description] = S.[Description]
WHEN NOT MATCHED BY TARGET THEN
	INSERT([Id], [Role], [Description])
	VALUES(S.[Id], S.[Role], S.[Description])
WHEN NOT MATCHED BY SOURCE THEN
	DELETE;

SET IDENTITY_INSERT [dbo].[UserRoles] OFF;
