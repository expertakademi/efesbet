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
using EfesBetGUI.View;
using System.Data;
using System.ComponentModel;
using EfesBetGUI.ViewModel;
using System.Windows.Controls.Primitives;

namespace EfesBetGUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        OwnGuestViewModel vmSK = new OwnGuestViewModel();
        //MenuPopup pop = new MenuPopup();
        popup pop = new popup();
        GridLength colfirstOrgPos, colLastOrgPos;
        DataTable dt = new DataTable();
        OwnGuestViewModel ownguest = new ViewModel.OwnGuestViewModel();
        public MainWindow()
        {
            InitializeComponent();//
            this.Height = SystemParameters.MaximizedPrimaryScreenHeight;
            this.Width = SystemParameters.MaximizedPrimaryScreenWidth;
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;            
            this.miAxleTools.Click += new RoutedEventHandler(miAxleTools_Click);
            #region -- ViewModel --
            vmSK = new OwnGuestViewModel();
            this.DataContext = vmSK;            
            #endregion
            image1.VerticalAlignment = System.Windows.VerticalAlignment.Center;
            image2.VerticalAlignment = System.Windows.VerticalAlignment.Center;
            colfirstOrgPos = grdFirstCol.Width;
            colLastOrgPos = grdLastCol.Width;
            spLeft.IsEnabled = false;
            spRight.IsEnabled = false;
            this.dataGridParent.DataContext = ownguest.GuestHostTotalList;
            this.dataGridParent.RowDetailsVisibilityChanged += new EventHandler<DataGridRowDetailsEventArgs>(dataGridParent_RowDetailsVisibilityChanged);
            this.dataGridParent.MouseRightButtonUp += new MouseButtonEventHandler(dataGridParent_MouseRightButtonUp);
           
        }

        void dataGridParent_MouseRightButtonUp(object sender, MouseButtonEventArgs e)
        {
            //detecting the column, cell and row that has been clicked 
            DependencyObject dep = (DependencyObject)e.OriginalSource;

            // iteratively traverse the visual tree
            while ((dep != null) && !(dep is DataGridCell) &&  !(dep is DataGridColumnHeader))
            {
                dep = VisualTreeHelper.GetParent(dep);
            }

            if (dep == null)
                return;

            if (dep is DataGridColumnHeader)
            {
                DataGridColumnHeader columnHeader = dep as DataGridColumnHeader;
                // do something
            }

            if (dep is DataGridCell)
            {
                DataGridCell cell = dep as DataGridCell;
                
                // do something
                // navigate further up the tree
                while ((dep != null) && !(dep is DataGridRow))
                {
                    dep = VisualTreeHelper.GetParent(dep);
                }

                //while ((dep != null) && !(dep is DataGridColumn))
                //{
                //    dep = VisualTreeHelper.GetParent(dep);
                //}

                //DataGridColumn col = dep as DataGridColumn;
                //int rowIndex = FindRowIndex(col);
            }
        }

        private int FindRowIndex(DataGridColumn col)
        {
            DataGrid dataGrid =
                ItemsControl.ItemsControlFromItemContainer(col)
                as DataGrid;

            int index = dataGrid.ItemContainerGenerator.
                IndexFromContainer(col);

            return index;
        }

        test t = new test();       

        void miAxleTools_Click(object sender, RoutedEventArgs e)
        {
            //t.ShowDialog();
            pop.Visibility = Visibility.Visible;
        }

        void dataGridParent_RowDetailsVisibilityChanged(object sender, DataGridRowDetailsEventArgs e)
        {
            DataGrid innerDataGrid = e.DetailsElement as DataGrid;
            innerDataGrid.DataContext = ownguest.SubGridItemList;
        }        
        private void image1_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (grdFirstCol.Width == new GridLength(0.00))
                grdFirstCol.Width = colfirstOrgPos;
            else
                grdFirstCol.Width = new GridLength(0.00);
        }
        private void image2_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (grdLastCol.Width == new GridLength(0.00))
                grdLastCol.Width = colLastOrgPos;
            else
                grdLastCol.Width = new GridLength(0.00);
        }

       

        //private void dataGridParent_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        //{
        //    if (((System.Windows.Controls.DataGrid)(sender)).CurrentColumn.Header.ToString() == "+")
        //    {

                
        //    }
        //}

       
    }
}
