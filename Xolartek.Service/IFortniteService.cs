using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Threading.Tasks;
using Xolartek.Service.DTO;

namespace Xolartek.Service
{
    [ServiceContract]
    public interface IFortniteService
    {
        [WebGet(UriTemplate = "range", ResponseFormat = WebMessageFormat.Json)]
        [OperationContract]
        IList<RangedWeapon> GetRangedWeapons();
        [WebGet(UriTemplate = "range/{id}")]
        [OperationContract]
        RangedWeapon GetRangedWeapon(int id);
        [WebInvoke(Method = "POST", UriTemplate = "range")]
        [OperationContract]
        void SubmitRange(RangedWeapon range);
    }
}
