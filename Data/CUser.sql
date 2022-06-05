CREATE TABLE [dbo].[CUser]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY, 
    [Username] VARCHAR(100) NOT NULL, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NULL, 
    [Level] INT NOT NULL, 
    [IsAdmin] BIT NOT NULL, 
    [IsOwner] BIT NOT NULL, 
    [CoolCode] CHAR(10) NULL
)
