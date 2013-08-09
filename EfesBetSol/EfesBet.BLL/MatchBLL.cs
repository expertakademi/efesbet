using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EfesBet.Entities;
using EfesBet.DAL;

namespace EfesBet.BLL
{
    public class MatchBLL
    {
        MatchDAL matchDAL = new MatchDAL();
        public List<Match> GetMatch()
        {
            return matchDAL.GetMatch();
        }
    }
}
