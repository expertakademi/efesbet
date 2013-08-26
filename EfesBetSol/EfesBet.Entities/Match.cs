using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EfesBet.Entities
{
    public class Match
    {
        //
        private int _matchNo;
        public int MatchNo
        {
            get { return _matchNo; }
            set { _matchNo = value; }
        }        

        private string _teamName;
        public string TeamName
        {
            get { return _teamName; }
            set { _teamName = value; }
        }

        private DateTime _matchDate;
        public DateTime MatchDate
        {
            get { return _matchDate; }
            set { _matchDate = value; }
        }

        private string _leagueName;

        public string LeagueName
        {
            get { return _leagueName; }
            set { _leagueName = value; }
        }

        
    }
}
