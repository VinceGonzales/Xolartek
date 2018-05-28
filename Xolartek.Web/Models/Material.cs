using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Xolartek.Web.Models
{
    public class Material
    {
        public int Id { get; set; }
        public string Description { get; set; }
    }
    public class MaterialCost : Material
    {
        public int Cost { get; set; }
    }
}