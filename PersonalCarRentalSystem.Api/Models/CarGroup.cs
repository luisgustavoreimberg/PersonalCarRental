namespace PersonalCarRentalSystem.Api.Models
{
    public class CarGroup
    {
        public long Id { get; set; }
        public List<CarModel> CarModels { get; set; }
        public decimal DailyRentalRate { get; set; }
        public decimal DailyInsuranceRate { get; set; }
        public decimal InsuranceDeposit { get; set; }
        public bool IsAvaliable { get; set; }
    }
}