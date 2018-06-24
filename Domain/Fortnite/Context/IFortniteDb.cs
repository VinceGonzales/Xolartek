using System.Linq;

namespace Domain.Fortnite
{
    public interface IFortniteDb
    {
        int PostWeaponRange(WeaponRange weapon);
        int PostWeaponMelee(WeaponMelee weapon);
        int PostWeaponTrap(WeaponTrap weapon);
        void UpdateWeaponRange(WeaponRange weapon);
        void UpdateWeaponMelee(WeaponMelee weapon);
        void UpdateWeaponTrap(WeaponTrap weapon);
        IQueryable<Material> Materials { get; }
        IQueryable<MaterialMelee> MaterialMelees { get; }
        IQueryable<MaterialRange> MaterialRanges { get; }
        IQueryable<MaterialTrap> MaterialTraps { get; }
        IQueryable<Picture> Pictures { get; }
        IQueryable<Rarity> Rarities { get; }
        IQueryable<Trait> Traits { get; }
        IQueryable<TraitMelee> TraitMelees { get; }
        IQueryable<TraitRange> TraitRanges { get; }
        IQueryable<TraitTrap> TraitTraps { get; }
        IQueryable<WeaponMelee> WeaponMelees { get; }
        IQueryable<WeaponRange> WeaponRanges { get; }
        IQueryable<WeaponTrap> WeaponTraps { get; }
        IQueryable<WeaponType> WeaponTypes { get; }
        IQueryable<WeaponEdition> WeaponEditions { get; }
        IQueryable<Schematic> Schematics { get; }
    }
}
