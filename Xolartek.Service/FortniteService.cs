using Domain.Fortnite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using Xolartek.Service.DTO;
using Xolartek.Service.Repository;

namespace Xolartek.Service
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerCall, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public class FortniteService : IFortniteService
    {
        public RangedWeapon GetRangedWeapon(int id)
        {
            RangedWeapon result = new RangedWeapon();
            using (Fortnitedb db = new Fortnitedb())
            {
                result = db.GetRangedWeapon(id);
            }
            return result;
        }

        public IList<RangedWeapon> GetRangedWeapons()
        {
            IList<RangedWeapon> result = new List<RangedWeapon>();
            using (Fortnitedb db = new Fortnitedb())
            {
                result = db.GetRangedWeapons();
            }
            return result;
        }

        public void SubmitRange(RangedWeapon range)
        {
            try
            {
                using (Fortnitedb db = new Fortnitedb())
                {
                    db.PostRangedWeapon(range);
                }
            }
            catch(Exception)
            {
                //
            }
        }
    }
}
