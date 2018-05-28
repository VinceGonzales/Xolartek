using System.Linq;

namespace Domain.Fortnite
{
    public interface IFortniteDb
    {
        IQueryable<Material> Materials { get; }
        IQueryable<MaterialMelee> MaterialMelees { get; }
        IQueryable<MaterialRange> MaterialRanges { get; }
        IQueryable<MaterialTrap> MaterialTraps { get; }
        IQueryable<Trait> Traits { get; }
        IQueryable<TraitMelee> TraitMelees { get; }
        IQueryable<TraitRange> TraitRanges { get; }
        IQueryable<TraitTrap> TraitTraps { get; }
        IQueryable<WeaponMelee> WeaponMelees { get; }
        IQueryable<WeaponRange> WeaponRanges { get; }
        IQueryable<WeaponTrap> WeaponTraps { get; }
    }
}
