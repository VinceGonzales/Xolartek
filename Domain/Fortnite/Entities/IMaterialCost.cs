namespace Domain.Fortnite
{
    public interface IMaterialCost
    {
        int Id { get; set; }
        int Cost { get; set; }
        Material Material { get; set; }
    }
}
