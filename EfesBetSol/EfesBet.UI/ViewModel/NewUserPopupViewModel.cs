using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace EfesBetGUI.ViewModel
{
    class NewUserPopupViewModel:INotifyPropertyChanged
    {
        public int MyProperty { get; set; }

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        #endregion
    }
}
