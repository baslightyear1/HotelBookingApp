/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if not exists (select 1 from dbo.RoomTypes)
begin
    insert into dbo.RoomTypes(Name, Description, MaxGuests)
    values 
    ('King size with lakeside view', 'King size bed and bath with views on the lake.', 2), 
    ('Queen size', 'Queen size bed and shower', 2),
    ('Family room', 'one queen bed, and two single beds, shower', 4), 
    ('Bridal suite', 'King size bed, hottub with lake-side view, breakfast in bedroom included', 3)

end
if not exists (select 1 from dbo.Rooms)
begin
    declare @roomType1 int;
    declare @roomType2 int;
    declare @roomType3 int;
    declare @roomType4 int;

    select @roomType1 = Id from dbo.RoomTypes where Name = 'King size with lakeside view';
    select @roomType2 = Id from dbo.RoomTypes where Name = 'Queen size';
    select @roomType3 = Id from dbo.RoomTypes where Name = 'Family room';
    select @roomType4 = Id from dbo.RoomTypes where Name = 'Bridal suite';


    insert into dbo.Rooms(RoomNumber, RoomTypeId, RoomStatus)
    values
    ('101', @roomType1, 1),
    ('102', @roomType1, 1),
    ('103', @roomType1, 1),
    ('104', @roomType1, 1),
    ('105', @roomType2, 1),
    ('106', @roomType2, 1),
    ('107', @roomType2, 1),
    ('108', @roomType2, 1),
    ('109', @roomType2, 1),
    ('110', @roomType2, 1),
    ('201', @roomType3, 1),
    ('202', @roomType3, 1),
    ('203', @roomType2, 1),
    ('204', @roomType2, 1),
    ('205', @roomType2, 1),
    ('206', @roomType4, 1),
    ('207', @roomType4, 1)
end
