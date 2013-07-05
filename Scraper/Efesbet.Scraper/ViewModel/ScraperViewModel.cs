using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace Efesbet.Scraper.ViewModel
{
    /// <summary>
    /// Scraper view model
    /// </summary>
    public class ScraperViewModel : INotifyPropertyChanged
    {
        //Timer
        DispatcherTimer _crawlTimer;

        //Website list
        ObservableCollection<string> _websiteList;
        string _selectedWebsite = string.Empty;
       
        //Start/Stop command
        ICommand _startCrawlCommand;
        ICommand _stopCommand;
        bool _isLiveMode = false;

        //Crawl log
        StringBuilder _tempCrawlLog;
        StringBuilder _crawlLog;

        //Property changed event
        public event PropertyChangedEventHandler PropertyChanged;
        object _locker = new object();

        //Hardcode message
        const string NoHistoryMessage = "No history.";
        const string StartCrawlMessage = "Start Crawl...";
        const string StopCrawlMessage = "Stop Crawl.";
        const string DateTimeFormat = "yyyy-MM-dd HH:mm:ss";
        const string SelectWebsiteErrorMessage = "Please select website to crawl.";

        const int LiveCrawlInterval = 1; //seconds
        const int NormalCrawlInterval = 2; //days
        const int MaxCrawlCounter = 20;

        //HttpRequestTimeout
        const int RequestTimeout = 120000; //2 minutes

        int _crawlCounter = 0;
        string _testUrl = "http://www.nicobet.com/hlbs_index.jsp?index=10";
        

        #region PropertyChanged
        /// <summary>
        /// Property changed
        /// </summary>
        /// <param name="propertyName"></param>
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this,
                    new PropertyChangedEventArgs(propertyName));
        }
        #endregion

        #region Properties

        /// <summary>
        /// Website list
        /// </summary>
        public ObservableCollection<string> WebsiteList
        {
            get
            {
                return _websiteList;
            }
            set
            {
                if (_websiteList != value)
                {
                    _websiteList = value;
                    OnPropertyChanged("WebsiteList");
                }
            }
        }

        /// <summary>
        /// Is live mode
        /// </summary>
        public bool IsLiveMode
        {
            get
            {
                return _isLiveMode;
            }
            set
            {
                if (_isLiveMode != value)
                {
                    _isLiveMode = value;
                    OnPropertyChanged("IsLiveMode");
                }
            }
        }

        /// <summary>
        /// Selected website
        /// </summary>
        public string SelectedWebsite
        {
            get
            {
                return _selectedWebsite;
            }
            set
            {
                if (_selectedWebsite != value)
                {
                    _selectedWebsite = value;
                    OnPropertyChanged("SelectedWebsite");
                }
            }
        }

        /// <summary>
        /// Crawl result log
        /// </summary>
        public StringBuilder CrawlLog
        {
            get
            {
                return _crawlLog;
            }
            set
            {
                if (_crawlLog != value)
                {
                    _crawlLog = value;
                    OnPropertyChanged("CrawlLog");
                }
            }
        }

        #endregion

        #region Commands
        /// <summary>
        /// StartCrawlCommand
        /// </summary>
        public ICommand StartCrawlCommand
        {
            get
            {
                return _startCrawlCommand;
            }
            set
            {
                _startCrawlCommand = value;
            }
        }

        /// <summary>
        /// StopCommand
        /// </summary>
        public ICommand StopCommand
        {
            get
            {
                return _stopCommand;
            }
            set
            {
                _stopCommand = value;
            }
        }

        #endregion

        #region Methods
        /// <summary>
        /// ViewModel constructor
        /// </summary>
        public ScraperViewModel()
        {
            _crawlLog = new StringBuilder(NoHistoryMessage);
            _tempCrawlLog = new StringBuilder();

            StartCrawlCommand = new RelayCommand(new Action<object>(StartCrawlData));
            StopCommand = new RelayCommand(new Action<object>(StopCrawlData));
            PopulateWebsiteList();
        }

        /// <summary>
        /// Populate website list
        /// </summary>
        private void PopulateWebsiteList()
        {
            _websiteList = new ObservableCollection<string>();
            _websiteList.Add("http://www.nicobet.com/hlbs_index.jsp?index=10");
            _websiteList.Add("Others");
        }

        /// <summary>
        /// Show error message
        /// </summary>
        /// <param name="message"></param>
        private void ShowError(string message)
        {
            MessageBox.Show(message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        /// <summary>
        /// Add crawl log
        /// </summary>
        /// <param name="message"></param>
        private void AddCrawlLog(string message)
        {
            lock (_locker)
            {
                _tempCrawlLog.Insert(0, string.Format("{0}: {1}{2}", DateTime.Now.ToString(DateTimeFormat), message, Environment.NewLine));
                this.CrawlLog = new StringBuilder(_tempCrawlLog.ToString());
            }
        }

        /// <summary>
        /// Start crawl data command
        /// </summary>
        /// <param name="param"></param>
        private void StartCrawlData(object param)
        {
            if (string.IsNullOrEmpty(this.SelectedWebsite))
            {
                ShowError(SelectWebsiteErrorMessage);
            }
            else
            {
                StartCrawlTimer();
            }
        }

        /// <summary>
        /// Stop crawl data command
        /// </summary>
        /// <param name="param"></param>
        private void StopCrawlData(object param)
        {
            if (_crawlTimer != null)
            {
                _crawlTimer.Stop();
            }

            AddCrawlLog(StopCrawlMessage);
        }

        /// <summary>
        /// StartScrawl timer
        /// </summary>
        private void StartCrawlTimer()
        {
            DateTime nextCrawlTime = DateTime.MinValue ;
            if (_crawlTimer != null) StopCrawlData(null);
            else
            {
                _crawlTimer = new DispatcherTimer();

                //Crawl timer tick
                _crawlTimer.Tick += new EventHandler(async (object s, EventArgs a) =>
                {
                    _crawlCounter++;
                    AddCrawlLog(await CrawlDataAsync(null));

                    if (_crawlCounter >= MaxCrawlCounter)
                    {
                        ResetData();
                    }
                });
            }

            //Set interval
            if (this.IsLiveMode)
            {
                nextCrawlTime = DateTime.Now.AddSeconds(LiveCrawlInterval);
                _crawlTimer.Interval = TimeSpan.FromSeconds(LiveCrawlInterval);
            }
            else
            {
                nextCrawlTime = DateTime.Now.AddDays(NormalCrawlInterval);
                _crawlTimer.Interval = TimeSpan.FromDays(NormalCrawlInterval);
            }
            _crawlTimer.Start();
            AddCrawlLog(string.Format("Started. Crawler will run at {0}.", nextCrawlTime.ToString(DateTimeFormat)));
        }

        private void ResetData()
        {
            _crawlCounter = 0;
            _tempCrawlLog = new StringBuilder();
            _crawlLog = new StringBuilder();
        }

        /// <summary>
        /// Crawl data asynchronously
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        private async Task<string> CrawlDataAsync(object param)
        {
            string errorMessage= string.Empty;
            string crawledHtmlText = this.GetHtmlTextFromUrl(this.SelectedWebsite, ref errorMessage);
            if (!string.IsNullOrEmpty(crawledHtmlText))
            {
                return "Crawl HTML Text successfully !!!" + Environment.NewLine + crawledHtmlText;
            }
            else
                return errorMessage;
        }

        /// <summary>
        /// Get HtmlText
        /// </summary>
        /// <param name="requesetUrl"></param>
        /// <param name="errorMessage"></param>
        /// <returns></returns>
        private string GetHtmlTextFromUrl(string requesetUrl, ref string errorMessage)
        {
            errorMessage = string.Empty;
            string returnHtmlText = string.Empty;
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(requesetUrl);
            httpWebRequest.Timeout = RequestTimeout;
            WebResponse response = null;
            try
            {
                response = httpWebRequest.GetResponse();

                using (StreamReader streamReader = new StreamReader(response.GetResponseStream()))
                {
                    returnHtmlText = streamReader.ReadToEnd();
                }
            }
            catch (Exception ex)
            {
                errorMessage = ex.Message;
                if (ex.InnerException != null)
                {
                    errorMessage += string.Format("{0}{1}", Environment.NewLine, ex.InnerException.Message);
                }
            }
            return returnHtmlText;
        }
        #endregion
    }
}
