Create Proc Sp_Employee
@Sr_no int, @Emp_name nvarchar(500),
@City nvarchar(500), @STATE nvarchar(500),
@Country nvarchar(500), @Department nvarchar(500),
@flag nvarchar(50)

As begin 
	IF (@flag = 'insert')
	BEGIN 
		INSERT INTO dbo.tbl_Employee(Emp_name, City, STATE, Country, Department)
		Values
		(@Emp_name, @City, @STATE, @Country, @Department)
		END
Else IF (@flag = 'update')
	Begin
		UPDATE dbo.tbl_Employee Set
			Emp_name = @Emp_name, City = @City, STATE = @STATE, Country = @Country, Department = @Department
			where Sr_no = @Sr_no
		end
Else IF ( @flag = 'delete')
	Begin
		DELETE FROM tbl_Employee
		WHERE Sr_no = @Sr_no
	End
Else IF (@flag = 'getid')
	BEGIN 
		SELECT * FROM tbl_Employee
		WHERE Sr_no = @Sr_no
		END
	ELSE IF( @flag ='get')
	BEGIN
		SELECT * FROM tbl_Employee
	END
END