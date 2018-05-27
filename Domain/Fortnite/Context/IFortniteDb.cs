using System.Linq;

namespace Domain.Fortnite
{
    public interface IFortniteDb
    {
        IQueryable<Material> Materials { get; }
        IQueryable<MaterialCost> MaterialCosts { get; }
        IQueryable<Trait> Traits { get; }
        IQueryable<TraitImpact> TraitImpacts { get; }
        IQueryable<WeaponMelee> WeaponMelees { get; }
        IQueryable<WeaponRange> WeaponRanges { get; }
        IQueryable<WeaponTrap> WeaponTraps { get; }
    }
}
