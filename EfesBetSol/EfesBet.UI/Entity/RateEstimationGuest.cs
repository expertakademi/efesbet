using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EfesBetGUI.Entity
{
    public class RateEstimationGuest
    {
        public int No { get; set; }
        public int Code { get; set; }
        public int MyProperty { get; set; }
        public string Host { get; set; }
        public string Guest { get; set; }
        public string Tip { get; set; }
        public double Estimate { get; set; }
        public double Rate { get; set; }
    }
}
