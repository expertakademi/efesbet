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
using System.Windows.Controls.Primitives;
using EfesBetGUI.Entity;

namespace EfesBetGUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        OwnGuestViewModel vmSK = new OwnGuestViewModel();
        MenuPopup pop = new MenuPopup();
        //popup pop = new popup();
        GridLength colfirstOrgPos, colLastOrgPos;
        DataTable dt = new DataTable();
        FrameworkElement tb = new FrameworkElement();
        int getSelectedIndex = -1;
        int checkGridState = 0;

        DataGrid innerDataGrid = new DataGrid();


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
            // this.dataGridParent.MouseRightButtonUp += new MouseButtonEventHandler(dataGridParent_MouseRightButtonUp);
            // this.dataGridParent.MouseLeftButtonUp += new MouseButtonEventHandler(dataGridParent_MouseLeftButtonUp);
            this.dataGridParent.SelectionChanged += new SelectionChangedEventHandler(dataGridParent_SelectionChanged);
            this.dgrdLeftBottom.MouseLeftButtonUp += new MouseButtonEventHandler(dgrdLeftBottom_MouseLeftButtonUp);
        }

        void dgrdLeftBottom_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            try
            {
                if (dgrdLeftBottom.SelectedIndex >= 0)
                {
                    string value = dgrdLeftBottom.CurrentColumn.Header.ToString();
                    if (value == "Oran")
                    {
                        var grid = dgrdLeftBottom;
                        var mygrid = dgrdLeftBottom;
                        if (grid.SelectedIndex >= 0)
                        {
                            for (int i = 0; i <= grid.SelectedItems.Count; i++)
                            {
                                mygrid.Items.Remove(grid.SelectedItems[i]);
                            }
                        }
                        grid = mygrid;
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }


        void dataGridParent_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                if (dataGridParent.SelectedIndex >= 0 && dataGridParent.SelectedIndex==getSelectedIndex)
                {

                    string value = dataGridParent.CurrentColumn.Header == null ? "" : dataGridParent.CurrentColumn.Header.ToString();
                    if (checkGridState == 1 && value == "+")
                    {

                        RateEstimationGuest objRateEst = new RateEstimationGuest();

                        if (dataGridParent.SelectedItems.Count > 0)
                        {
                            foreach (GuestHost item in dataGridParent.SelectedItems)
                            {

                                objRateEst.No = 3;
                                objRateEst.Code = Convert.ToInt32(item.Code.ToString().Substring(1));
                                objRateEst.MyProperty = 4542;
                                objRateEst.Host = item.Own;
                                objRateEst.Guest = item.Guest;
                                objRateEst.Tip = item.MinOption;
                                objRateEst.Estimate = item.T1_host;
                                objRateEst.Rate = item.T2_host;
                            }
                        }
                        dgrdLeftBottom.Items.Add(objRateEst);
                    }
                }
            }
            catch (Exception ex)
            {
            }
        }

        void dataGridParent_RowDetailsVisibilityChanged(object sender, DataGridRowDetailsEventArgs e)
        {
            try
            {
                checkGridState = 0;
                DataGridRow row = e.Row as DataGridRow;
                row.Background = new SolidColorBrush(Colors.White);
                FrameworkElement tb = GetTemplateChildByName(row, "innerGrid");
                tb.Visibility = Visibility.Collapsed;
                string value = dataGridParent.CurrentColumn.Header.ToString();
                if (value == "+")
                {
                    checkGridState = 1;
                    getSelectedIndex = dataGridParent.SelectedIndex;

                    tb.Visibility = Visibility.Visible;
                    tb.DataContext = ownguest.SubGridItemList;

                    // innerDataGrid = e.DetailsElement as DataGrid;
                    //innerDataGrid.DataContext = ownguest.SubGridItemList;
                }

                else
                {
                    dataGridParent.SelectedIndex = -1;
                    // tb.Visibility = Visibility.Collapsed;
                }
            }
            catch (Exception ex) 
            {
 
            }
        }

        public FrameworkElement GetTemplateChildByName(DependencyObject parent, string name)
        {
            int childnum = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < childnum; i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);
                if (child is FrameworkElement && ((FrameworkElement)child).Name == name)
                {
                    return child as FrameworkElement;
                }
                else
                {
                    var s = GetTemplateChildByName(child, name);
                    if (s != null)
                        return s;
                }
            }
            return null;
        }






        void dataGridParent_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {

            if (dataGridParent.SelectedIndex >= 0)
            {
                string value = dataGridParent.CurrentColumn.Header.ToString();
                if (value == "+")
                {
                    //dataGridParent. row = DataGridRow;

                    DependencyObject dep = (DependencyObject)e.OriginalSource;
                    DataGridRow row = dep as DataGridRow;
                    FrameworkElement tb = GetTemplateChildByName(dataGridParent, "innerGrid");
                    //DataGrid innerDataGrid = new DataGrid();
                    // DataGridRow row = new DataGridRow();
                    //DataGridRow row = e.Source as DataGridRow;
                    if (tb != null && value == "+")
                    {
                        // tb.DataContext = null;

                        if (tb.Visibility == Visibility.Visible && value == "+")
                        {
                            tb.Visibility = Visibility.Collapsed;
                            tb.DataContext = null;

                        }
                        else
                        {
                            tb.Visibility = Visibility.Collapsed;
                            tb.DataContext = ownguest.SubGridItemList;
                            tb.Visibility = Visibility.Visible;
                        }
                    }
                }

                else
                {
                    dataGridParent.SelectedIndex = -1;
                }
            }
        }


        void dataGridParent_MouseRightButtonUp(object sender, MouseButtonEventArgs e)
        {
            //detecting the column, cell and row that has been clicked 
            DependencyObject dep = (DependencyObject)e.OriginalSource;

            // iteratively traverse the visual tree
            while ((dep != null) && !(dep is DataGridCell) && !(dep is DataGridColumnHeader))
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


                DataGridRow row = dep as DataGridRow;
                //while ((dep != null) && !(dep is DataGridColumn))
                //{
                //    dep = VisualTreeHelper.GetParent(dep);
                //}

                //DataGridColumn col = dep as DataGridColumn;
                // int rowIndex = FindRowIndex(row);

            }
        }
        private int FindColumnIndex(DataGridColumn col)
        {
            DataGrid dataGrid = ItemsControl.ItemsControlFromItemContainer(col) as DataGrid;
            int index = dataGrid.ItemContainerGenerator.IndexFromContainer(col);
            return index;
        }
        private int FindRowIndex(DataGridRow row)
        {
            DataGrid dataGrid = ItemsControl.ItemsControlFromItemContainer(row) as DataGrid;
            int index = dataGrid.ItemContainerGenerator.IndexFromContainer(row);

            return index;
        }


        test t = new test();

        void miAxleTools_Click(object sender, RoutedEventArgs e)
        {
            t.ShowDialog();
            // pop.Visibility = Visibility.Visible;
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




        //private void grdBakiyem_MouseEnter(object sender, MouseEventArgs e)
        //{
        //    grdBakiyem.Background = new SolidColorBrush(Colors.Gray);
        //    Menu1.Visibility = Visibility.Visible;
        //}

        //private void grdBakiyem_MouseLeave(object sender, MouseEventArgs e)
        //{
        //    grdBakiyem.Background = new SolidColorBrush(Colors.Transparent);
        //    Menu1.Visibility = Visibility.Collapsed;
        //}





    }
}
