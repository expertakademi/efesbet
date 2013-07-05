
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EfesBetGUI.Entity;
using System.Collections.ObjectModel;

namespace EfesBetGUI.Model
{
    class RateEstimationGuestModel
    {
        public ObservableCollection<RateEstimationGuest> RateEstimationList = new ObservableCollection<RateEstimationGuest>();
        public RateEstimationGuestModel()
        {
            RateEstimationList = new ObservableCollection<RateEstimationGuest>()
            {
                new RateEstimationGuest()
                {
                    No=15,
                    Code=765494,
                    Host="Piast Gwillice",
                    Guest="Piast Gwillice",
                    Tip="Min3",
                    Estimate=0,
                    Rate=3.15
                },
                new RateEstimationGuest()
                {
                    No=2,
                    Code=763344,
                    Host="Bochum",
                    Guest="St. Pauli",
                    Tip="Min3",
                    Estimate=0,
                    Rate=3.2
                },
                new RateEstimationGuest()
                {
                    No=15,
                    Code=765494,
                    Host="Piast Gwillice",
                    Guest="Piast Gwillice",
                    Tip="Min3",
                    Estimate=0,
                    Rate=3.15
                }
                
            };
        }
    }
}
