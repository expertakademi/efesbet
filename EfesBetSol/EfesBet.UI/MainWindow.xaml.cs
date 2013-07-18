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
            // this.dataGridParent.MouseRightButtonUp += new MouseButtonEventHandler(dataGridParent_MouseRightButtonUp);
            //   this.dataGridParent.MouseLeftButtonUp += new MouseButtonEventHandler(dataGridParent_MouseLeftButtonUp);           
        }







        void dataGridParent_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            //    //detecting the column, cell and row that has been clicked 
            //    DependencyObject dep = (DependencyObject)e.OriginalSource;

            //    // iteratively traverse the visual tree
            //    while ((dep != null) && !(dep is DataGridCell) && !(dep is DataGridColumnHeader))
            //    {
            //        dep = VisualTreeHelper.GetParent(dep);
            //    }

            //    if (dep == null)
            //        return;

            //    if (dep is DataGridColumnHeader)
            //    {
            //        DataGridColumnHeader columnHeader = dep as DataGridColumnHeader;
            //        // do something
            //    }

            //    if (dep is DataGridCell)
            //    {
            //        DataGridCell cell = dep as DataGridCell;

            //        // do something
            //        // navigate further up the tree
            //        while ((dep != null) && !(dep is DataGridRow))
            //        {
            //            dep = VisualTreeHelper.GetParent(dep);
            //        }
            //        DataGridRow row = dep as DataGridRow;
            //        DataGridColumn col=dep as DataGridColumn;
            //        int colIndexValue = cell.Column.DisplayIndex;
            //        MessageBox.Show(colIndexValue.ToString());
            //        if (colIndexValue == 10)
            //        {
            //            //DataGrid innerDataGrid = new DataGrid();
            //            //innerDataGrid.Height = 10;
            //            //innerDataGrid.Width = 200;
            //            //innerDataGrid.AutoGenerateColumns = false;

            //            //innerDataGrid.DataContext = ownguest.SubGridItemList;
            //            //DataGrid innerDataGrid = new DataGrid();
            //           // innerDataGrid.DataContext = ownguest.SubGridItemList;


            //        }
            //        else
            //        {

            //        }
            //        int rowIndex = FindRowIndex(row);         

            //        //extract the value of the cell 
            //        object value=ExtractBoundValue(row, cell);
            //    }
            //}

            //private object ExtractBoundValue(DataGridRow row,  DataGridCell cell)
            //{
            //    // find the column that this cell belongs to
            //    DataGridBoundColumn col = cell.Column as DataGridBoundColumn;

            //    // find the property that this column is bound to
            //    Binding binding = col.Binding as Binding;
            //    string boundPropertyName = binding.Path.Path;

            //    // find the object that is related to this row
            //    object data = row.Item;

            //    // extract the property value
            //    PropertyDescriptorCollection properties =
            //        TypeDescriptor.GetProperties(data);

            //    PropertyDescriptor property = properties[boundPropertyName];
            //    object value = property.GetValue(data);

            //    return value;
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
            //t.ShowDialog();
            pop.Visibility = Visibility.Visible;
        }
        void dataGridParent_RowDetailsVisibilityChanged(object sender, DataGridRowDetailsEventArgs e)
        {
            DataGrid innerDataGrid = new DataGrid();

            string value = dataGridParent.CurrentColumn.Header.ToString();

            if (value == "+")
            {


               // objDt.Resources.
               // dataGridParent.RowDetailsTemplate  = new DataTemplate();
               // objDt.DataType =   DataTable();
               // dataGridParent.RowDetailsTemplate = objDt;


               innerDataGrid = e.DetailsElement as DataGrid;
                innerDataGrid.DataContext = ownguest.SubGridItemList;
            }

            else
            {
                dataGridParent.SelectedIndex = -1;
                
            

            }

            //dataGridParent.Columns.

            //MessageBox.Show("Row Visibility");
            // DataGrid innerDataGrid = e.DetailsElement as DataGrid;
            // innerDataGrid.DataContext = ownguest.SubGridItemList;
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




        private void grdBakiyem_MouseEnter(object sender, MouseEventArgs e)
        {
            grdBakiyem.Background = new SolidColorBrush(Colors.Gray);
            Menu1.Visibility = Visibility.Visible;
        }

        private void grdBakiyem_MouseLeave(object sender, MouseEventArgs e)
        {
            grdBakiyem.Background = new SolidColorBrush(Colors.Transparent);
            Menu1.Visibility = Visibility.Collapsed;
        }


        private void grdSettings_MouseEnter(object sender, MouseEventArgs e)
        {
            grdSettings.Background = new SolidColorBrush(Colors.Gray);
            grdSettingsSubMenu.Visibility = Visibility.Visible;
            
        }

        private void grdSettings_MouseLeave(object sender, MouseEventArgs e)
        {
            grdSettings.Background = new SolidColorBrush(Colors.Transparent);
            grdSettingsSubMenu.Visibility = Visibility.Collapsed;
        }

    }
}
