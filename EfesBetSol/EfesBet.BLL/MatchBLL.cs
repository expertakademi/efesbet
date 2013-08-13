using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EfesBet.Entities;
using EfesBet.DAL;
using EfesBet.DataContract;

namespace EfesBet.BLL
{
    public class MatchBLL
    {
        MatchDAL matchDAL = new MatchDAL();
        public List<GetMatchDetailsDC> GetMatch()
        {
            return matchDAL.GetMatch();
        }
    }
}
