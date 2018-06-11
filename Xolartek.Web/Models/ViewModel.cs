using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Xolartek.Web.Models
{
    public class ViewModel
    {
        public RangedWeapon Ranged { get; set; }
        public MeleeWeapon Melee { get; set; }
        public TrapWeapon Trap { get; set; }
        public IList<RangedWeapon> RangedWeapons { get; set; }
        public IList<MeleeWeapon> MeleeWeapons { get; set; }
        public IList<TrapWeapon> TrapWeapons { get; set; }
        public IList<Trait> Traits { get; set; }
        public IList<TraitImpact> WeaponTraits { get; set; }
        public IList<Material> Materials { get; set; }
        public IList<MaterialCost> MaterialCosts { get; set; }
        public IEnumerable<SelectListItem> Rarities { get; set; }
        public IEnumerable<SelectListItem> WeaponTypes { get; set; }
        public IEnumerable<SelectListItem> WeaponEdition { get; set; }
    }
}