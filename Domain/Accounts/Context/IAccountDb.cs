using System.Linq;

namespace Domain.Accounts
{
    public interface IAccountDb
    {
        IQueryable<User> Users { get; }
        IQueryable<Role> Roles { get; }
    }
}
