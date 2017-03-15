declare @n nvarchar(30) ='DShevyakov'
declare @n2 nvarchar(30) = 'dshevyakov_sql'
declare @id int
declare @newlogin nvarchar(30)
select @id=userid from users where username=@n
if (@id is null)
begin
set @newlogin=@n
select @id=userid from users where username=@n2
end
else
begin
set @newlogin=@n2
end

update users set username=@newlogin where userid=@id

select username from users where username=@newlogin