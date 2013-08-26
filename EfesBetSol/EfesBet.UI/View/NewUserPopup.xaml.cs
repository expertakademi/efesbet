using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using EfesBetGUI.ViewModel;

namespace EfesBetGUI.View
{
    /// <summary>
    /// Interaction logic for NewUserPopup.xaml
    /// </summary>
    public partial class NewUserPopup : Window
    {
        OwnGuestViewModel ownGuestViewModel = new OwnGuestViewModel();
        public NewUserPopup()
        {
            InitializeComponent();
            this.DataContext = ownGuestViewModel;
        }
    }
}
