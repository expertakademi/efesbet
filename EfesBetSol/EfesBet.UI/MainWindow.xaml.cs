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
using System.Windows.Threading;
using System.Collections.ObjectModel;
using EfesBet.DataContract;
using EfesBetGUI.EfesBetServiceReference;
using System.Threading.Tasks;
using System.Threading;
using EfesBetGUI.Model;

namespace EfesBetGUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //OwnGuestViewModel vmSK = new OwnGuestViewModel();
        SubGridModel subGridModel = new SubGridModel();
        MainWindowViewModel mainWindowViewModel = new MainWindowViewModel();
        popup pop = new popup();
        GridLength colfirstOrgPos, colLastOrgPos;
        DataTable dt = new DataTable();
        FrameworkElement tb = new FrameworkElement();
        int getSelectedIndex = -1;
        int checkGridState = 0;
        int isOpen = 0;
        DataGrid innerDataGrid = new DataGrid();
        EfesBetServiceReference.EfesBetClient proxy = new EfesBetClient();     
        
        public MainWindow()
        {            
            InitializeComponent();
             DispatcherTimer timer = new DispatcherTimer(new TimeSpan(0,0,1), DispatcherPriority.Normal, delegate
             {
                 this.txtTime.Text = DateTime.Now.ToString("HH:mm");
                 this.txtDate.Text = DateTime.Now.Day.ToString();
             }, this.Dispatcher);
            this.Height = SystemParameters.MaximizedPrimaryScreenHeight;
            this.Width = SystemParameters.MaximizedPrimaryScreenWidth;
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            this.miAxleTools.Click += new RoutedEventHandler(miAxleTools_Click);          

            #region -- ViewModel --
            //vmSK = new OwnGuestViewModel();
            this.DataContext = mainWindowViewModel;
            #endregion
            image1.VerticalAlignment = System.Windows.VerticalAlignment.Center;
            image2.VerticalAlignment = System.Windows.VerticalAlignment.Center;
            colfirstOrgPos = grdFirstCol.Width;
            colLastOrgPos = grdLastCol.Width;
            spLeft.IsEnabled = false;
            spRight.IsEnabled = false;
            //this.dataGridParent.DataContext = ownguest.GuestHostTotalList; 
            //this.dataGridUserDetails.DataContext = ownguest.UserList; 
            //this.dataGridParent.RowDetailsVisibilityChanged += new EventHandler<DataGridRowDetailsEventArgs>(dataGridParent_RowDetailsVisibilityChanged);
            //this.dataGridParent.MouseRightButtonUp += new MouseButtonEventHandler(dataGridParent_MouseRightButtonUp);
            //this.dataGridParent.MouseLeftButtonUp += new MouseButtonEventHandler(dataGridParent_MouseLeftButtonUp);
           // this.dataGridParent.SelectionChanged += new SelectionChangedEventHandler(dataGridParent_SelectionChanged);
            this.dgrdLeftBottom.MouseLeftButtonUp += new MouseButtonEventHandler(dgrdLeftBottom_MouseLeftButtonUp);
            this.dgrdLeftBottom.SizeChanged += new SizeChangedEventHandler(dgrdLeftBottom_SizeChanged);
            this.brdOyna.MouseLeftButtonUp += new MouseButtonEventHandler(brdOyna_MouseLeftButtonUp);
            this.DataContext = mainWindowViewModel;
            _matchObsCollection = new ObservableCollection<GetMatchDetailsDC>();

            BindMatchGridinAsync();
        }

        private void NormalWaydone()
        {
            
        }
        List<EfesBet.DataContract.GetMatchDetailsDC> matchList;
        ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC> _matchObsCollection;

        public ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC> MatchObsCollection
        {
            get { return _matchObsCollection; }
            set
            {
                _matchObsCollection = value;                
            }
        }
        
        
        private void RowClick(object sender, RoutedEventArgs e)
        {
            try
            {
                var row = (DataGridRow)sender;
                row.DataContext = subGridModel.SubGridItemList;
                string value = dataGridParent.CurrentColumn.Header.ToString();
                if (value == "+")
                {
                    if (isOpen == 0)
                    {
                        row.DetailsVisibility = row.DetailsVisibility == Visibility.Collapsed ? Visibility.Visible : Visibility.Collapsed;
                        FrameworkElement tb = GetTemplateChildByName(row, "innerGrid");
                        if (tb.Visibility == Visibility.Collapsed)
                        {
                            tb.Visibility = Visibility.Visible;
                            tb.DataContext = subGridModel.SubGridItemList;
                            //innerDataGrid.ItemsSource = subGridModel.SubGridItemList;
                            row.DetailsVisibility = Visibility.Visible;
                            DispatcherTimer dispTimer = new DispatcherTimer(new TimeSpan(0, 0, 30), DispatcherPriority.Normal, delegate
                            {
                                tb.Visibility = Visibility.Collapsed;

                            }, this.Dispatcher);
                        }
                        else
                        {
                            tb.Visibility = Visibility.Collapsed;
                            row.DetailsVisibility = Visibility.Collapsed;
                        }
                    }
                    else
                    {
                        isOpen = 0;
                    }
                }
                else
                {
                    dataGridParent.SelectedIndex = -1;
                }
            }
            catch (Exception)
            {
                //
            }

        }
        private void InnerGridRowClick(object sender, RoutedEventArgs e)
        {
            //Aug 24 I have commented this code 
            //RateEstimationGuest objRateEst = new RateEstimationGuest();

            //if (dataGridParent.SelectedItems.Count > 0)
            //{
            //    isOpen = 1;

            //    foreach (GuestHost item in dataGridParent.SelectedItems)
            //    {
            //        objRateEst.No = dgrdLeftBottom.Items.Count + 1;
            //        //objRateEst.No = 3;
            //        objRateEst.Code = Convert.ToInt32(item.Code.ToString().Substring(1));
            //        objRateEst.MyProperty = 4542;
            //        objRateEst.Host = item.Own;
            //        objRateEst.Guest = item.Guest;
            //        objRateEst.Tip = item.MinOption;
            //        objRateEst.Estimate = item.T1_host;
            //        objRateEst.Rate = item.T2_host;
            //    }
            //}
            //dgrdLeftBottom.Items.Add(objRateEst);

        }

        void brdOyna_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            //I have commented this code the following three lines of code on Aug 24 
            //NewUserPopup newUserPopup = new NewUserPopup();
            //newUserPopup.ShowDialog();
            //User objUser = new User();



            //if (dataGridUserDetails.Items.Count>0)
            //{
            //    int num = ownguest.UserList.Count-1;


            //    string str = ownguest.UserList[num].CuponNo.Substring(0, 14);
            //    int numcheck = Convert.ToInt32(ownguest.UserList[num].CuponNo.Substring(14,4));

            //    //foreach (User item in ownguest.UserList[0])
            //   // {
            //    objUser.History = ownguest.UserList[num].History;
            //    objUser.CuponNo = ownguest.UserList[num].CuponNo.Substring(0,14) + (Convert.ToInt32( ownguest.UserList[num].CuponNo.Substring(14,4))+1213 );
            //    objUser.Amount = ownguest.UserList[num].Amount;
            //    objUser.UserName = ownguest.UserList[num].UserName;
            //    objUser.Earnings = ownguest.UserList[num].Earnings;
            //    objUser.NoOfCupons = ownguest.UserList[num].NoOfCupons+1;
            //    objUser.MaxEarning = ownguest.UserList[num].MaxEarning;
            // // }

            //}
            //ownguest.UserList.Add(objUser);
            //this.dataGridUserDetails.DataContext = ownguest.UserList;

           // dataGridUserDetails.Items.Add(objUser);
            /*  */

        }

        void dgrdLeftBottom_SizeChanged(object sender, SizeChangedEventArgs e)
        {

            TxtInput1.Text = dgrdLeftBottom.Items.Count.ToString();


            if (dgrdLeftBottom.Items.Count >= 3)
            {
                brdOyna.IsEnabled = true;

            }
            else
            {
                brdOyna.IsEnabled = false;
            }

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
                if (dataGridParent.SelectedIndex >= 0 && dataGridParent.SelectedIndex == getSelectedIndex)
                {

                    string value = dataGridParent.CurrentColumn.Header == null ? "" : dataGridParent.CurrentColumn.Header.ToString();
                    if (checkGridState == 1 && value == "+")
                    {

                        RateEstimationGuest objRateEst = new RateEstimationGuest();

                        if (dataGridParent.SelectedItems.Count > 0)
                        {
                            foreach (GuestHost item in dataGridParent.SelectedItems)
                            {
                                objRateEst.No = dgrdLeftBottom.Items.Count + 1;
                                //objRateEst.No = 3;
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
                //innerDataGrid.Visibility = Visibility.Visible;
                checkGridState = 0;
                DataGridRow row = e.Row as DataGridRow;
                innerDataGrid.Visibility = Visibility.Collapsed;
                FrameworkElement tb = GetTemplateChildByName(row, "innerGrid");
                tb.Visibility = Visibility.Collapsed;
                string value = dataGridParent.CurrentColumn.Header.ToString();
                if (value == "+")
                {
                    innerDataGrid.Visibility = Visibility.Visible;

                    isOpen = isOpen + 2;
                    checkGridState = 1;
                    getSelectedIndex = dataGridParent.SelectedIndex;

                    tb.Visibility = Visibility.Visible;

                    //tb.DataContext = ownguest.SubGridItemList;

                    innerDataGrid = e.DetailsElement as DataGrid;
                    //innerDataGrid.DataContext = ownguest.SubGridItemList;
                }

                else
                {
                    dataGridParent.SelectedIndex = -1;
                    tb.Visibility = Visibility.Collapsed;
                    innerDataGrid.Visibility = Visibility.Collapsed;

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

        private void textBlockOyna_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            //NewUserPopup newUserPopup = new NewUserPopup();
            //newUserPopup.ShowDialog(); 
        }
        private void brdOyna_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //NewUserPopup newUserPopup = new NewUserPopup();
            //newUserPopup.ShowDialog();
        }

        private void miAxleTools_Click(object sender, RoutedEventArgs e)
        {
            pop.Visibility = Visibility.Visible;
        }



        //private void dataGridParent_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        //{
        //    if (((System.Windows.Controls.DataGrid)(sender)).CurrentColumn.Header.ToString() == "+")
        //    {

        
        //    }
        //}
        //



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


        #region Asynchrous Operation Done by Lalit
        private async void BindMatchGridinAsync()
        {
            ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC> _matchObsCollection = await BindMatchGridAsync(); 
        }        
        async Task<ObservableCollection<EfesBet.DataContract.GetMatchDetailsDC>> BindMatchGridAsync()
        {
            await Task.Run(() => 
                {
                    BindMatchGrid();
                });
            return null;
        }
        void BindMatchGrid()
        {
            BindMatchGridDel bindDel = new BindMatchGridDel(BindMatchGridData);
            matchList = new List<GetMatchDetailsDC>();
            //dataGridParent.Dispatcher.BeginInvoke(bindDel, null);
            matchList = proxy.GetMatch().ToList();
            
            dataGridParent.Dispatcher.BeginInvoke(bindDel, null);
        }
        public delegate void BindMatchGridDel();
        void BindMatchGridData()
        {
            dataGridParent.ItemsSource = matchList;
        }

        #endregion  
        /* */
    }
}
