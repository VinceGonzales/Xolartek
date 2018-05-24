using System;

namespace Domain.Accounts
{
    public interface IRole
    {
        Guid RoleId { get; set; }
        string RoleName { get; set; }
        string Description { get; set; }
    }
}
