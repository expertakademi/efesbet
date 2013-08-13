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
       
        /// <summary>
        /// this is the constructor pupulating the Guest and host in the datagrid
        /// </summary>
        public OwnGuestViewModel()
        {
            //PopulateSahibiKonuk();
        }
        
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this,
                    new PropertyChangedEventArgs(propertyName));
        }
        

        



        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        #endregion
    }
}
