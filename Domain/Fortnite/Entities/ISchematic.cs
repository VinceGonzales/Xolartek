namespace Domain.Fortnite
{
    public interface ISchematic
    {
        int Id { get; set; }
        string Name { get; set; }
        string Description { get; set; }
        int Durability { get; set; }
    }
}
