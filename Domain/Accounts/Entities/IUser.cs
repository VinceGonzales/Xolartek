using System;

namespace Domain.Accounts
{
    public interface IUser
    {
        Guid UserId { get; set; }
        string Username { get; set; }
        string Email { get; set; }
        bool IsApproved { get; set; }
        DateTime? CreateDate { get; set; }
        Boolean IsLockedOut { get; set; }
    }
}
