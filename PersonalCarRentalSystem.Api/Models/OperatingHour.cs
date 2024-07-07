namespace PersonalCarRentalSystem.Api.Models
{
    public class OperatingHour
    {
        public DayOfWeek DayOfWeek { get; set; }
        public DateTime? OpeningTime { get; set; }
        public DateTime? ClosingTime { get; set; }
        public bool IsClosed { get; set; }
    }
}