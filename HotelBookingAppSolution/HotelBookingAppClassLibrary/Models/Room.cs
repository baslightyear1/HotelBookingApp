using HotelBookingAppClassLibrary.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelBookingAppClassLibrary.Models
{
    public class Room
    {
        public int RoomNumber { get; set; }
        public RoomType RoomType { get; set; }
        public RoomStatus RoomStatus { get; set; }
    }
}
