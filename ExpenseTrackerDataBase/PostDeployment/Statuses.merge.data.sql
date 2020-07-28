SET IDENTITY_INSERT [dbo].[Statuses] ON;
;WITH cte_statuses([Id], [Status])
AS (
	SELECT * FROM (
		VALUES
		(0,'WithEmployer'),
		(1,'WithEmployee'),
		(2,'UnderReveiw'),
		(3,'Approved'),
		(4,'Denied')
		) c([Id],[Status]))
MERGE [dbo].[Statuses] as T
USING cte_statuses as S
ON 1=1 AND T.[Id] = S.[Id]
WHEN MATCHED THEN
	UPDATE SET
	[Status] = S.[Status]
WHEN NOT MATCHED BY TARGET THEN
	INSERT([Id], [Status])
	VALUES(S.[Id], S.[Status])
WHEN NOT MATCHED BY SOURCE THEN
	DELETE;

SET IDENTITY_INSERT [dbo].[Statuses] OFF;
