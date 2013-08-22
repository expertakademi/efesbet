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
    /// Interaction logic for test.xaml
    /// </summary>
    public partial class test : Window
    {
        //MainWindowViewModel v = new MainWindowViewModel();
        public test()
        {
            InitializeComponent();
            //this.DataContext = v;
            //StackPanel CustomCommandStackPanel = new StackPanel();
            //Button CustomCommandButton = new Button();
            //CustomCommandStackPanel.Children.Add(CustomCommandButton);

            //CustomCommandButton.Command = CustomRoutedCommand;
            //CommandBinding customCommandBinding = new CommandBinding(CustomRoutedCommand, ExecutedCustomCommand, CanExecuteCustomCommand);
        }
    //    private void ExecutedCustomCommand(object sender,
    //ExecutedRoutedEventArgs e)
    //    {
    //        MessageBox.Show("Custom Command Executed");
    //    }
    //    // CanExecuteRoutedEventHandler that only returns true if 
    //    // the source is a control.  
    //    private void CanExecuteCustomCommand(object sender,
    //        CanExecuteRoutedEventArgs e)
    //    {
    //        Control target = e.Source as Control;

    //        if (target != null)
    //        {
    //            e.CanExecute = true;
    //        }
    //        else
    //        {
    //            e.CanExecute = false;
    //        }
    //    }
        /* */
    }
}
