SET IDENTITY_INSERT [dbo].[Statuses] ON;
;WITH cte_Statuses([Id], [Status])
AS (
	SELECT * FROM (
		VALUES
		(0, 'submitted'),
		(1, 'under review'),
		(3, 'approved'),
		(4,'open to edit')
		) c([Id],[Status]))
MERGE [dbo].[Statuses] as T
USING cte_Statuses as S
ON 1=1 AND T.[Id] = S.[Id]
WHEN MATCHED THEN
	UPDATE SET
	[Role] = S.[Role],
	[Description] = S.[Description]
WHEN NOT MATCHED BY TARGET THEN
	INSERT([Id], [Status])
	VALUES(S.[Id], S.[Status])
WHEN NOT MATCHED BY SOURCE THEN
	DELETE;

SET IDENTITY_INSERT [dbo].[Statuses] OFF;
