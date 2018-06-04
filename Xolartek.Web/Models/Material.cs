using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace Xolartek.Web.Models
{
    [DataContract]
    public class Material
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Description { get; set; }
        [DataMember]
        public string PictureSource { get; set; }
    }
    [DataContract]
    public class MaterialCost : Material
    {
        public MaterialCost(int id, string desc, int cost)
        {
            base.Id = id;
            base.Description = desc;
            this.Cost = cost;
        }
        [DataMember]
        public int Cost { get; set; }
    }
}