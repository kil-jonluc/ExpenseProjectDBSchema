SET IDENTITY_INSERT [dbo].[Employer] ON;
;WITH cte_employers([Id], [CompanyName])
AS (
	SELECT * FROM (
		VALUES
		(0,'Test Company'),
		(1,'Kilpatrick Company'),
		(2,'Townsend Company')
		) c([Id],[CompanyName]))
MERGE [dbo].[Employer] as T
USING cte_employers as S
ON 1=1 AND T.[Id] = S.[Id]
WHEN MATCHED THEN
	UPDATE SET
	[CompanyName] = S.[CompanyName]
WHEN NOT MATCHED BY TARGET THEN
	INSERT([Id], [CompanyName])
	VALUES(S.[Id], S.[CompanyName])
WHEN NOT MATCHED BY SOURCE THEN
	DELETE;

SET IDENTITY_INSERT [dbo].[Employer] OFF;
