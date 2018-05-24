using Domain.Accounts;
using System;

namespace Xolartek.Web.Models
{
    public class UserRole : IRole
    {
        public Guid RoleId { get; set; }
        public string RoleName { get; set; }
        public string Description { get; set; }
    }
}