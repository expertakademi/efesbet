using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using EfesBet.DataContract;


namespace EfesBet.ServiceContract
{
    [ServiceContract]
    public interface IEfesBet
    {
        [OperationContract]
        List<GetMatchDetailsDC> GetMatch();
    }
}
