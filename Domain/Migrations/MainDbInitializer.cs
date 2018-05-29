using Domain.Utility;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Migrations
{
    public class MainDbInitializer : DropCreateDatabaseIfModelChanges<MainDbContext>
    {
        protected override void Seed(MainDbContext context)
        {
            if (context.Database.Exists())
            {
                Accounts.User user = new Accounts.User()
                {
                    Username = "Admin",
                    Email = "vince.gonzales@hotmail.com",
                    Password = Crypto.HashPassword("password"),
                    IsApproved = true,
                    CreateDate = DateTime.UtcNow,
                    LastPasswordChangedDate = DateTime.UtcNow,
                    PasswordFailuresSinceLastSuccess = 0,
                    IsLockedOut = false
                };

                Accounts.Role _role = new Accounts.Role() { RoleName = "Administrator", Description = "Website Admin" };
                _role.Users = new List<Accounts.User>();
                _role.Users.Add(user);

                user.Roles = new List<Accounts.Role>();
                user.Roles.Add(_role);

                context.Roles.AddOrUpdate(r => r.RoleName,
                    _role,
                    new Accounts.Role() { RoleName = "User", Description = "Website User" },
                    new Accounts.Role() { RoleName = "Guest", Description = "Anonymous Guest" }
                );

                context.Users.AddOrUpdate(u => u.Username, user);

                context.Traits.AddOrUpdate(t => t.Description,
                    new Fortnite.Trait() { Description = "Critical Rating" },
                    new Fortnite.Trait() { Description = "Magazine Size" },
                    new Fortnite.Trait() { Description = "Damage" },
                    new Fortnite.Trait() { Description = "Damage to afflicted targets" },
                    new Fortnite.Trait() { Description = "Causes Affliction damage for 6 seconds" },
                    new Fortnite.Trait() { Description = "Reload Speed" },
                    new Fortnite.Trait() { Description = "Critical Damage" },
                    new Fortnite.Trait() { Description = "Weapon Damage when aiming down sights" },
                    new Fortnite.Trait() { Description = "Increased Building Health" },
                    new Fortnite.Trait() { Description = "Life Leech" },
                    new Fortnite.Trait() { Description = "Durability" }
                );

                context.Rarities.AddOrUpdate(r => r.Description,
                    new Fortnite.Rarity() { Description = "Common" },
                    new Fortnite.Rarity() { Description = "Epic" },
                    new Fortnite.Rarity() { Description = "Legendary" },
                    new Fortnite.Rarity() { Description = "Mythic" },
                    new Fortnite.Rarity() { Description = "Rare" }
                );

                string[] arrMats = new string[] { "Active Powercell", "Adhesive Resin", "Bacon", "Batteries", "Blast Powder", "Obsidian Ore", "Sleek Mechanical Parts" };
                foreach (string desc in arrMats)
                {
                    context.Materials.AddOrUpdate(t => t.Description, new Fortnite.Material() { Description = desc });
                }

                Domain.Picture pict1 = new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Nailer", Source = "~/content/images/T-Icon-Weapons-SK-Hydraulic-Drum-Assault-L.png" };
                context.Pictures.AddOrUpdate(t => t.Alternate,
                    new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Active Powercell", Source = "~/content/images/120px-Active_powercell_icon.png" },
                    new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Adhesive Resin", Source = "~/content/images/120px-Adhesive_resin_icon.png" },
                    new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Bacon", Source = "~/content/images/120px-Bacon_icon.png" },
                    new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Batteries", Source = "~/content/images/120px-Batteries_icon.png" },
                    new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Blast Powder", Source = "~/content/images/120px-Blast_powder_icon.png" },
                    new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Obsidian Ore", Source = "~/content/images/120px-Obsidian_ore_icon.png" },
                    new Domain.Picture() { CSSClass = "img-fluid", Alternate = "Sleek Mechanical Parts", Source = "~/content/images/120px-Sleek_mechanical_parts_icon.png" },
                    pict1
                );

                context.WeaponTypes.AddOrUpdate(t => t.Description,
                    new Fortnite.WeaponType() { Description = "Assault Weapon" },
                    new Fortnite.WeaponType() { Description = "Shotgun" }
                );

                context.WeaponEditions.AddOrUpdate(t => t.Description,
                    new Fortnite.WeaponEdition() { Description = "Hydraulic" },
                    new Fortnite.WeaponEdition() { Description = "Neon" }
                );

                context.SaveChanges();
            }
        }
    }
}
