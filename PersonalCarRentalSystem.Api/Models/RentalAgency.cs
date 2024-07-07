namespace PersonalCarRentalSystem.Api.Models
{
    public class RentalAgency
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public Address Address { get; set; }
        public List<OperatingHour> OperatingHours { get; set; }
        public List<CarGroup> CarGroups { get; set; }
    }
}