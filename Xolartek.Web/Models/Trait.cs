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
        string Impact { get; set; }
    }
}