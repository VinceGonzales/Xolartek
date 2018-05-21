using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Web.Security;

namespace Domain.Accounts
{
    public class AccountContextInitializer : IDatabaseInitializer<AccountContext>
    {
        public delegate void CompleteHandler(bool isEmpty);
        public event CompleteHandler Complete;

        private void Seed(AccountContext context)
        {

        }

        public void InitializeDatabase(AccountContext context)
        {
            //context.Database.Delete();
            if (context.Database.Exists())
            {
                if (!context.Database.CompatibleWithModel(true))
                    //context.Database.Delete();
                    throw new Exception("AccountContext Database not compatible with models!");
            }
            if (!context.Database.Exists())
            {
                context.Database.Create();
                Seed(context);
                context.SaveChanges();
                Complete.Invoke(true);
            }
            else
            {
                Complete.Invoke(false);
            }

        }
    }
}
