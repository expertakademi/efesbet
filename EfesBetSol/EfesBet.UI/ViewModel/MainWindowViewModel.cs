using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using EfesBet.BLL;
using EfesBet.Entities;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using EfesBetGUI.EfesBetServiceReference;
using EfesBet.DataContract;

namespace EfesBetGUI.ViewModel
{
    public class MainWindowViewModel:WorkspaceViewModel,INotifyCollectionChanged
    {        
        RelayCommand _loadCommand;
        MatchBLL matchBLL = new MatchBLL();
        EfesBetServiceReference.EfesBetClient proxy = new EfesBetClient();
        public MainWindowViewModel()
        {
            _matchObsCollection = new ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC>();
            
            Load();
           
            _matchObsCollection.CollectionChanged += new NotifyCollectionChangedEventHandler(_matchObsCollection_CollectionChanged);
        }
        /// <summary>
        /// This will get called when the collection is changed(for reference see http://stackoverflow.com/questions/1427471/observablecollection-not-noticing-when-item-in-it-changes-even-with-inotifyprop)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void _matchObsCollection_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            
        }
        protected override void OnPropertyChanged(string propertyName)
        {
            base.OnPropertyChanged(propertyName);
        }
        public ICommand LoadCommand
        {
            get
            {
                if (_loadCommand == null)
                {
                    _loadCommand = new RelayCommand(
                        param => this.Load(),
                        param => this.CanLoad
                        );
                }
                return _loadCommand; 
            }
        }
        List<EfesBet.DataContract.GetMatchDetailsDC> matchList;
        ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC> _matchObsCollection;

        public ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC> MatchObsCollection
        {
            get { return _matchObsCollection; }
            set
            {
                _matchObsCollection = value;
                OnPropertyChanged("MatchObsCollection");
            }
        }
        public void Load()
        {
            matchList = new List<GetMatchDetailsDC>();
            matchList = proxy.GetMatch().ToList();
            
            
            foreach (EfesBet.DataContract.GetMatchDetailsDC match in matchList)
            {
                _matchObsCollection.Add(match);
            }
            //ajebaje code
            PopulateSahibiKonuk();
        }
        bool CanLoad
        {
            get { return true; }
        }


        #region INotifyCollectionChanged Members

        public event NotifyCollectionChangedEventHandler CollectionChanged;       

        #endregion

        #region Old coding
        EfesBetGUI.Model.OwnGuestModel ownGuestModel = new EfesBetGUI.Model.OwnGuestModel();
        EfesBetGUI.Model.GuestHostModel guestHostModel = new EfesBetGUI.Model.GuestHostModel();
        EfesBetGUI.Model.MaxGooseModel maxGooseModel = new EfesBetGUI.Model.MaxGooseModel();
        EfesBetGUI.Model.SubGridModel subGridModel = new EfesBetGUI.Model.SubGridModel();
        EfesBetGUI.Model.RateEstimationGuestModel rateEstimationGuestModel = new EfesBetGUI.Model.RateEstimationGuestModel();
        EfesBetGUI.Model.UserModel objUserModel = new EfesBetGUI.Model.UserModel();
        private ObservableCollection<EfesBetGUI.Entity.SubGridItem> _subGridItemList;
        public ObservableCollection<EfesBetGUI.Entity.SubGridItem> SubGridItemList
        {
            get
            {
                return _subGridItemList;
            }
            set
            {
                _subGridItemList = value;
            }
        }
        private ObservableCollection<EfesBetGUI.Entity.RateEstimationGuest> _rateEstimationGuestList;
        public ObservableCollection<EfesBetGUI.Entity.RateEstimationGuest> RateEstimationGuestList
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

        private ObservableCollection<EfesBetGUI.Entity.Goose> _maxGooseList;
        public ObservableCollection<EfesBetGUI.Entity.Goose> MaxGooseList
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
        private ObservableCollection<EfesBetGUI.Entity.GuestHost> _guestHostList;
        public ObservableCollection<EfesBetGUI.Entity.GuestHost> GuestHostTotalList
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
        private ObservableCollection<EfesBetGUI.Entity.OddsResult> _sahibiKonukList;
        public ObservableCollection<EfesBetGUI.Entity.OddsResult> SahibiKonukList
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

        public void PopulateSahibiKonuk()
        {
            //get the value of 
            _sahibiKonukList = ownGuestModel.sahibikonukList;
            _guestHostList = guestHostModel.guestHostList;
            _maxGooseList = maxGooseModel.GooseList;
            _rateEstimationGuestList = rateEstimationGuestModel.RateEstimationList;
            _subGridItemList = subGridModel.SubGridItemList;
            _userList = objUserModel.UserList;
        }
        private ObservableCollection<EfesBetGUI.Entity.User> _userList;
        public ObservableCollection<EfesBetGUI.Entity.User> UserList
        {
            get
            {
                return _userList;
            }
            set
            {
                _userList = value;
            }
        }
        #endregion
    }
}
