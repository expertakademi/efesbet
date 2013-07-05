using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Collections.ObjectModel;
using EfesBetGUI.Entity;
using EfesBetGUI.Model;

namespace EfesBetGUI.ViewModel
{
    class OwnGuestViewModel:INotifyPropertyChanged
    {
        OwnGuestModel ownGuestModel = new OwnGuestModel();
        GuestHostModel guestHostModel = new GuestHostModel();
        MaxGooseModel maxGooseModel = new MaxGooseModel();
        RateEstimationGuestModel rateEstimationGuestModel = new RateEstimationGuestModel();
        /// <summary>
        /// this is the constructor pupulating the Guest and host in the datagrid
        /// </summary>
        public OwnGuestViewModel()
        {
            PopulateSahibiKonuk();
        }
        private ObservableCollection<RateEstimationGuest> _rateEstimationGuestList;
        public ObservableCollection<RateEstimationGuest> RateEstimationGuestList
        {
            get
            {
                return _rateEstimationGuestList;
            }
            set
            {
                if (_rateEstimationGuestList != value)
                {
                    _rateEstimationGuestList = value;
                    OnPropertyChanged("RateEstimationGuestList");
                }
            }
        }

        private ObservableCollection<Goose> _maxGooseList;
        public ObservableCollection<Goose> MaxGooseList
        {
            get
            {
                return _maxGooseList;
            }
            set
            {
                if (_maxGooseList != value)
                {
                    _maxGooseList = value;
                    OnPropertyChanged("MaxGooseList");
                }
            }

        }
        private ObservableCollection<GuestHost> _guestHostList;
        public ObservableCollection<GuestHost> GuestHostTotalList
        {
            get
            {
                return _guestHostList;
            }
            set
            {
                if (_guestHostList != value)
                {
                    _guestHostList = value;
                    OnPropertyChanged("GuestHostTotalList");
                }
            }
        }
        private ObservableCollection<OddsResult> _sahibiKonukList;
        public ObservableCollection<OddsResult> SahibiKonukList
        {
            get
            {
                return _sahibiKonukList;
            }
            set
            {
                if (_sahibiKonukList != value)
                {
                    _sahibiKonukList = value;
                    OnPropertyChanged("SahibiKonukList");
                }
            }
        }
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this,
                    new PropertyChangedEventArgs(propertyName));
        }
        private void PopulateSahibiKonuk()
        {
            //get the value of 
            _sahibiKonukList = ownGuestModel.sahibikonukList;
            _guestHostList = guestHostModel.guestHostList;
            _maxGooseList = maxGooseModel.GooseList;
            _rateEstimationGuestList = rateEstimationGuestModel.RateEstimationList;

        }
        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        #endregion
    }
}
