﻿using System;
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
using System.Windows.Threading;
using System.Threading;
using System.Diagnostics;
using System.Collections;
using System.Threading.Tasks;
using System.Windows;


namespace EfesBetGUI.ViewModel
{
    public class MainWindowViewModel : WorkspaceViewModel, INotifyCollectionChanged
    {        
        RelayCommand _loadCommand;
        
        MatchBLL matchBLL = new MatchBLL();
        EfesBetServiceReference.EfesBetClient proxy = new EfesBetClient();
        public ICommand DoSomethingCommand { get; set; }
        public MainWindowViewModel()
        {
            
            //DoSomethingCommand = new AsyncDelegateCommand(
            //    () => Load(), null, null,
            //    (ex) => Debug.WriteLine(ex.Message));
            
            _matchObsCollection = new ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC>();            
            PopulateSahibiKonuk();
            _matchObsCollection.CollectionChanged += new NotifyCollectionChangedEventHandler(_matchObsCollection_CollectionChanged);
            //BindMatchGridinAsync();
        }
        public MainWindowViewModel(SynchronizationContext context)
        {
            
        }
        #region Asynchrous Operation Done by Lalit
        private async void BindMatchGridinAsync()
        {
            ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC> _matchObsCollection = await BindMatchGridAsync();
        }
        async Task<ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC>> BindMatchGridAsync()
        {
            await Task.Run(() =>
            {
                BindMatchGrid();
            });
            return null;
        }
        void BindMatchGrid()
        {
            BindMatchGridDel bindDel = new BindMatchGridDel(BindMatchGridData);
            matchList = new List<GetMatchDetailsDC>();
            //Application.Current.Dispatcher.BeginInvoke(bindDel, null);
            //dataGridParent.Dispatcher.BeginInvoke(bindDel, null);
            matchList = proxy.GetMatch().ToList();
            Application.Current.Dispatcher.BeginInvoke(bindDel, null);
        }
        public delegate void BindMatchGridDel();
        void BindMatchGridData()
        {
            //dataGridParent.ItemsSource = matchList;
        }

        #endregion  
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
        //public ICommand LoadCommand
        //{
        //    get
        //    {
        //        if (_loadCommand == null)
        //        {
        //            _loadCommand = new RelayCommand(
        //                param => this.Load(),
        //                param => this.CanLoad
        //                );
        //        }
        //        return _loadCommand; 
        //    }
        //}
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
        //
        
        public void Load()
        {            
            //matchList = new List<GetMatchDetailsDC>();
            //matchList = proxy.GetMatch().ToList();
            //foreach (EfesBet.DataContract.GetMatchDetailsDC match in matchList)
            //{

            //    //context.Send(   AddMatchItem, null);*
            //    //context.Post(delegate { AddMatchItem(match); }, null);
            //    //uiContext.Send(x => _matchObsCollection.Add(match),null);
            //}
            
        }

        void AddMatchItem(Object state)
        {
            _matchObsCollection.Add((EfesBet.DataContract.GetMatchDetailsDC)state);
        }

        void timer_Tick(object sender, EventArgs e)
        {
            //Load(); 
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
        EfesBetGUI.Model.GuestHostModel guestHostModel = new EfesBetGUI.Model.GuestHostModel();//for parent datagrid
        EfesBetGUI.Model.MaxGooseModel maxGooseModel = new EfesBetGUI.Model.MaxGooseModel();
        EfesBetGUI.Model.SubGridModel subGridModel = new EfesBetGUI.Model.SubGridModel();
        EfesBetGUI.Model.RateEstimationGuestModel rateEstimationGuestModel = new EfesBetGUI.Model.RateEstimationGuestModel();
        EfesBetGUI.Model.UserModel objUserModel = new EfesBetGUI.Model.UserModel();
        private ObservableCollection<EfesBetGUI.Entity.SubGridItem> _subGridItemList;
        //public IEnumerable SubGridItems
        //{
        //    get { return SubGridItemList; }
        //}
        public ObservableCollection<EfesBetGUI.Entity.SubGridItem> SubGridItems
        {
            get
            {
                return _subGridItemList;
            }//
            set
            {
                if (_subGridItemList != value)
                {
                    _subGridItemList = value;
                    OnPropertyChanged("SubGridItems");
                }
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
            //_guestHostList = guestHostModel.guestHostList;
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

        public void UpdateEvent()
        {
            
        }
        /*  */
    }
}
