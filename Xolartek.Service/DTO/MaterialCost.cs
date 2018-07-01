using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace Xolartek.Service.DTO
{
    [DataContract]
    public class MaterialCost
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Description { get; set; }
        [DataMember]
        public string PictureSource { get; set; }
        [DataMember]
        public int Cost { get; set; }

        public MaterialCost() { }

        public MaterialCost(int id, string desc, int cost)
        {
            this.Id = id;
            this.Description = desc;
            this.Cost = cost;
        }
    }
}
