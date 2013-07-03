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
    class SahibiKonukViewModel:INotifyPropertyChanged
    {
        SahibiKonukModel sk = new SahibiKonukModel();
        /// <summary>
        /// this is the constructor pupulating the Guest and host in the datagrid
        /// </summary>
        public SahibiKonukViewModel()
        {
            PopulateSahibiKonuk();
        }
        private ObservableCollection<SahibiKonuk> _sahibiKonukList;
        public ObservableCollection<SahibiKonuk> SahibiKonukList
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
            _sahibiKonukList = sk.sahibikonukList;
        }
        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        #endregion
    }
}
