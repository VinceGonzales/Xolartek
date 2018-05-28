namespace Domain.Fortnite
{
    public interface IMaterial
    {
        int Id { get; set; }
        string Description { get; set; }
        int? PictureId { get; set; }
        Picture Picture { get; set; }
    }
}
