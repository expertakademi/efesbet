using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using EfesBet.ServiceContract;
using EfesBet.BLL;


namespace EfesBet.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "EfesBetService" in code, svc and config file together.
    public class EfesBetService : IEfesBet
    {
        
        #region IEfesBet Members
        MatchBLL matchBLL = new MatchBLL();
        public List<DataContract.GetMatchDetailsDC> GetMatch()
        {
            return matchBLL.GetMatch();
        }
        #endregion
    }
}
