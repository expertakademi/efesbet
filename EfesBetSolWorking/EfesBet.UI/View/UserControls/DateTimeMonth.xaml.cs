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
using System.Windows.Threading;

namespace EfesBetGUI.View.UserControls
{
    /// <summary>
    /// Interaction logic for DateTimeMonth.xaml
    /// </summary>
    public partial class DateTimeMonth : UserControl
    {
        public string dateStr = string.Empty;
        public DateTimeMonth()
        {
            InitializeComponent();
            DispatcherTimer timer = new DispatcherTimer(new TimeSpan(0, 0, 1), DispatcherPriority.Normal, delegate
            {
                dateStr = DateTime.Now.ToString("HH:mm");               

            }, this.Dispatcher);
        }
    }
}
