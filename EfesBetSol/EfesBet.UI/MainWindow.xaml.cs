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
using System.Windows.Navigation;
using System.Windows.Shapes;
using EfesBetGUI.ViewModel;

namespace EfesBetGUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        SahibiKonukViewModel vmSK = new SahibiKonukViewModel();
        public MainWindow()
        {
            InitializeComponent();
            this.Height = SystemParameters.MaximizedPrimaryScreenHeight;
            this.Width = SystemParameters.MaximizedPrimaryScreenWidth;
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            #region -- ViewModel --
            vmSK = new SahibiKonukViewModel();
            this.DataContext = vmSK;            
            #endregion
        }
    }
}
