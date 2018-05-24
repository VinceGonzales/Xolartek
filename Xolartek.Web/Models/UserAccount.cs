using Domain.Accounts;
using System;

namespace Xolartek.Web.Models
{
    public class UserAccount : IUser
    {
        public Guid UserId { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public bool IsApproved { get; set; }
        public DateTime? CreateDate { get; set; }
        public bool IsLockedOut { get; set; }
        public string Group { get; set; }
    }
}