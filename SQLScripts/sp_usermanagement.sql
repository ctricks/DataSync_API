SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Christopher Biagtan
-- Create date: 05-01-2024
-- Description:	Stored Procedure in CRUD User
-- =============================================
CREATE PROCEDURE UserManagement
	@code char(1), --This use for CRUD Operation, For Creation just use c, for Read use r, and so on...(CRUD)
	@Username varchar(50)=null,
	@criteria varchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Declare @Query NVARCHAR(max);

	--Check Code Selection
	IF LOWER(@code) = 'c' --For Creating User

	ELSE IF LOWER(@code) = 'r' --For Reading User
		begin
			set @Query = 'Select [Username],[FirstName],[MiddleName],[LastName],[EmailAddress],[RoleID]
				  ,[DateCreated],[CreatedById],[ModifiedDate],[ModifiedById],[DeletedDate]
				  ,[DeletedById],[Remarks] 
			from 
				tblDataUsers';
		end
	
	IF @criteria is not null -- For Criteria add 'Where' as you invoke the SP
		set @Query = @Query + ' ' + @criteria
	END

	EXEC(@Query);
END

