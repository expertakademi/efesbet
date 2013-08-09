using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using EfesBet.BLL;
using EfesBet.Entities;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace EfesBetGUI.ViewModel
{
    public class MainWindowViewModel:WorkspaceViewModel,INotifyCollectionChanged
    {
        //
        RelayCommand _loadCommand;
        MatchBLL matchBLL = new MatchBLL();
        public MainWindowViewModel()
        {
            _matchObsCollection = new ObservableCollection<Match>();
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
        List<Match> matchList;
        ObservableCollection<Match> _matchObsCollection;

        public ObservableCollection<Match> MatchObsCollection
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
            matchList = matchBLL.GetMatch();
            foreach (Match match in matchList)
            {
                _matchObsCollection.Add(match);
            }
        }
        bool CanLoad
        {
            get { return true; }
        }


        #region INotifyCollectionChanged Members

        public event NotifyCollectionChangedEventHandler CollectionChanged;       

        #endregion
        /* */
    }
}
