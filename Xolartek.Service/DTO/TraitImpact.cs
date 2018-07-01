using System.Runtime.Serialization;

namespace Xolartek.Service.DTO
{
    [DataContract]
    public class TraitImpact
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Description { get; set; }
        [DataMember]
        public string Impact { get; set; }

        public TraitImpact() { }

        public TraitImpact(int id, string desc, string imp)
        {
            this.Id = id;
            this.Description = desc;
            this.Impact = imp;
        }
    }
}
