CREATE TABLE [dbo].[Bookings]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StartDate] DATETIME NOT NULL, 
    [EndDate] DATETIME NOT NULL, 
    [CustomerId] INT NOT NULL, 
    [NumberOfGuests] INT NOT NULL, 
    [RoomTypeId] INT NOT NULL, 
    [RoomId] INT NULL, 
    [BookingStatus] INT NOT NULL, 
    CONSTRAINT [FK_Bookings_RoomTypes] FOREIGN KEY ([RoomTypeId]) REFERENCES [RoomTypes]([Id]), 
    CONSTRAINT [FK_Bookings_Rooms] FOREIGN KEY ([RoomId]) REFERENCES [Rooms]([Id]), 
    CONSTRAINT [FK_Bookings_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id])
)
