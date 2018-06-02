using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Xolartek.Web.Models
{
    public class Trait
    {
        public int Id { get; set; }
        public string Description { get; set; }
    }
    public class TraitImpact : Trait
    {
        public TraitImpact(int id, string desc, string imp)
        {
            base.Id = id;
            base.Description = desc;
            this.Impact = imp;
        }
        public string Impact { get; set; }
    }
}