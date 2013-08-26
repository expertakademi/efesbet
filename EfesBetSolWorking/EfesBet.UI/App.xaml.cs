using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading;
using System.Windows;
using EfesBetGUI.View;
using EfesBetGUI.ViewModel;

namespace EfesBetGUI
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {               
        //MainWindowViewModel mainWindowVM = new MainWindowViewModel();
        MainWindow mainWindow = new MainWindow();
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);            
            //mainWindow.DataContext = mainWindowVM;            
            mainWindow.Show();
        }
    }
}
