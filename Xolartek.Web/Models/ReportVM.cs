using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Xolartek.Web.Models
{
    public class ReportVM
    {
        public IList<RangedWeapon> WaterWeapons { get; set; }
        public IList<RangedWeapon> FireWeapons { get; set; }
        public IList<RangedWeapon> NatureWeapons { get; set; }
    }
}