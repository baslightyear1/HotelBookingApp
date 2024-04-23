using HotelBookingAppClassLibrary.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelBookingAppClassLibrary.Models
{
    public class Booking
    {
        public int Id { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public Customer Customer { get; set; }
        public int NumberOfGuests { get; set; }
        public RoomType RoomType { get; set; }
        public Room Room { get; set; }
        public BookingStatus BookingStatus { get; set; }

    }
}
