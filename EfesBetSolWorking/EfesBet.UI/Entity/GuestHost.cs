using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EfesBetGUI.Entity
{
    public class GuestHost
    {
        public int Code { get; set; }
        public string History { get; set; }
        public string Own { get; set; }
        public string Guest { get; set; }
        public double One_guest { get; set; }
        public double X_game { get; set; }
        public double Two_guest { get; set; }
        public double T1_host { get; set; }
        public double TX_host { get; set; }
        public double T2_host { get; set; }
        public string TotalOptions { get; set; }
        public string MinOption { get; set; }        
        public string League { get; set; }
        public string Cases { get; set; }
        public bool ToggleBtn { get; set; }
    }
}
