using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace EfesBet.DataContract
{
    [DataContract]
    public class GetMatchDetailsDC
    {
        private int _matchNo;

        [DataMember]
        public int MatchNo
        {
            get { return _matchNo; }
            set { _matchNo = value; }
        }

        private string _teamName;

        [DataMember]
        public string TeamName
        {
            get { return _teamName; }
            set { _teamName = value; }
        }

        private DateTime _matchDate;

        [DataMember]
        public DateTime MatchDate
        {
            get { return _matchDate; }
            set { _matchDate = value; }
        }

        private string _leagueName;

        [DataMember]
        public string LeagueName
        {
            get { return _leagueName; }
            set { _leagueName = value; }
        }

    }
}
