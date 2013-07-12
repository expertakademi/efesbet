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

namespace EfesBetGUI.View
{
    /// <summary>
    /// Interaction logic for popup.xaml
    /// </summary>
    public partial class popup : Window
    {
        public popup()
        {
            InitializeComponent();
            //this.btnClose.Click += new RoutedEventHandler(btnClose_Click);
            if (WindowState == WindowState.Minimized)
                WindowState = WindowState.Maximized;
            
        }


      
        private void image1_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.Visibility = Visibility.Collapsed;
        }
    }
}
