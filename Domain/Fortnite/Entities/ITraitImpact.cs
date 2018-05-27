namespace Domain.Fortnite
{
    public interface ITraitImpact
    {
        int Id { get; set; }
        string Impact { get; set; }
        Trait Trait { get; set; }
    }
}
