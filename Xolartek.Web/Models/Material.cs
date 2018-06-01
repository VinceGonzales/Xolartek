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
        public string PictureSource { get; set; }
    }
    public class MaterialCost : Material
    {
        public MaterialCost(int id, string desc, int cost)
        {
            base.Id = id;
            base.Description = desc;
            this.Cost = cost;
        }
        public int Cost { get; set; }
    }
}