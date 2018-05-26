using Domain.Accounts;
using System.Collections.Generic;
using System.Linq;

namespace Xolartek.Web.Models
{
    public class Repository : IAccountDb
    {
        private IAccountDb db;

        public Repository(IAccountDb ctx)
        {
            db = ctx;
        }

        public IQueryable<User> Users
        {
            get { return db.Users; }
        }

        public IQueryable<Role> Roles
        {
            get { return db.Roles; }
        }

        public IList<UserAccount> GetUsers()
        {
            List<UserAccount> result = new List<UserAccount>();
            foreach(User usr in Users)
            {
                result.Add(new UserAccount
                {
                    UserId = usr.UserId,
                    Username = usr.Username,
                    Email = usr.Email,
                    IsApproved = usr.IsApproved,
                    CreateDate = usr.CreateDate,
                    IsLockedOut = usr.IsLockedOut,
                    Group = usr.Roles.FirstOrDefault().RoleName
                });
            }
            return result;
        }

        public IList<UserRole> GetRoles()
        {
            List<UserRole> result = new List<UserRole>();
            foreach(Role role in Roles)
            {
                result.Add(new UserRole
                {
                    RoleId = role.RoleId,
                    RoleName = role.RoleName,
                    Description = role.Description
                });
            }
            return result;
        }
    }
}