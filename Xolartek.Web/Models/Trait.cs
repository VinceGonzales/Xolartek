using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace Xolartek.Web.Models
{
    [DataContract]
    public class Trait
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Description { get; set; }
    }
    [DataContract]
    public class TraitImpact : Trait
    {
        public TraitImpact(int id, string desc, string imp)
        {
            base.Id = id;
            base.Description = desc;
            this.Impact = imp;
        }
        [DataMember]
        public string Impact { get; set; }
    }
}