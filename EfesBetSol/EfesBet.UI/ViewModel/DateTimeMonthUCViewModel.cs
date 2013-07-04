using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Windows.Threading;
using EfesBetGUI.View.UserControls;

namespace EfesBetGUI.ViewModel
{
    class DateTimeMonthUCViewModel:INotifyPropertyChanged
    {
        DateTimeMonth dateTimeMonth = new DateTimeMonth();

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        #endregion
    }
}
