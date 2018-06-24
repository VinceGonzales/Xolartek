using System;

namespace Xolartek.Web.Models
{
    public class Schematic
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Damage { get; set; }
        public decimal DPS { get; set; }
        public decimal AttackRate { get; set; }
        public decimal CritChance { get; set; }
        public decimal CritDamage { get; set; }
        public decimal Impact { get; set; }
        public decimal Range { get; set; }
    }
}