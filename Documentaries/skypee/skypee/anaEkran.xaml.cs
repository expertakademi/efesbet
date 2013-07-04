using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace skypee
{
    /// <summary>
    /// Interaction logic for anaEkran.xaml
    /// </summary>
    public partial class anaEkran : Window
    {
        public anaEkran()
        {
            InitializeComponent();
            macDetay.ItemsSource = macDetayData();
            macListe.ItemsSource = maclarDetay();
        }
        public class mac
        {
            public int kod { get; set; }
            public string evSahibi { get; set; }
            public string konuk { get; set; }
            public string altSecenekler { get; set; }
        }
        public class maclar
        {
            public int kod { get; set; }
            public string tarih { get; set; }
            public string evSahibi { get; set; }
            public string konuk { get; set; }
            public double master1 { get; set; }
            public double master0 { get; set; }
            public double master2 { get; set; }
            public double t1 { get; set; }
            public double tx { get; set; }
            public double t2 { get; set; }
            public int alt { get; set; }
            public string min { get; set; }
            public string lig { get; set; }
            public int durum { get; set; }
        }
        private List<maclar> maclarDetay() { 
            List<maclar> macs = new List<maclar>();
            macs.Add(new maclar() {
                kod = 2645,
                tarih = "17.04 17:00",
                evSahibi = "Fenerbahçe",
                konuk = "Galatasaray",
                master1 = 2.15,
                master0 = 3.20,
                master2 = 1.50,
                t1 = 1.17,
                tx = 1.30,
                t2 = 2.10,
                alt = 11,
                min = "Min3",
                lig = "Rusya Kupa",
                durum = 1
            });
            macs.Add(new maclar()
            {
                kod = 2645,
                tarih = "17.04 17:00",
                evSahibi = "Fenerbahçe",
                konuk = "Galatasaray",
                master1 = 2.15,
                master0 = 3.20,
                master2 = 1.50,
                t1 = 1.17,
                tx = 1.30,
                t2 = 2.10,
                alt = 11,
                min = "Min3",
                lig = "Rusya Kupa",
                durum = 1
            });
            macs.Add(new maclar()
            {
                kod = 2645,
                tarih = "17.04 17:00",
                evSahibi = "Fenerbahçe",
                konuk = "Galatasaray",
                master1 = 2.15,
                master0 = 3.20,
                master2 = 1.50,
                t1 = 1.17,
                tx = 1.30,
                t2 = 2.10,
                alt = 11,
                min = "Min3",
                lig = "Rusya Kupa",
                durum = 1
            });
            macs.Add(new maclar()
            {
                kod = 2645,
                tarih = "17.04 17:00",
                evSahibi = "Fenerbahçe",
                konuk = "Galatasaray",
                master1 = 2.15,
                master0 = 3.20,
                master2 = 1.50,
                t1 = 1.17,
                tx = 1.30,
                t2 = 2.10,
                alt = 11,
                min = "Min3",
                lig = "Rusya Kupa",
                durum = 1
            });
            return macs;
        }
        private List<mac> macDetayData()
        {
            List<mac> macs = new List<mac>();
            macs.Add(new mac()
            {
                kod = 2645,
                evSahibi = "Fenerbahçe",
                konuk = "Galatasaray",
                altSecenekler = "HandiCap (0:1)"
            });
            macs.Add(new mac()
            {
                kod = 101,
                evSahibi = "Aalborg",
                konuk = "FC Kobenhavn",
                altSecenekler = "Tekli"
            });
            macs.Add(new mac()
            {
                kod = 2345,
                evSahibi = "Beşiktaş",
                konuk = "Ankaragücü",
                altSecenekler = "Asian"
            });
            macs.Add(new mac()
            {
                kod = 101,
                evSahibi = "Sivasspor",
                konuk = "Konyaspor",
                altSecenekler = "Master"
            });
            macs.Add(new mac()
            {
                kod = 101,
                evSahibi = "M. United",
                konuk = "Sparta",
                altSecenekler = "Çifte Şans"
            });
            macs.Add(new mac()
            {
                kod = 101,
                evSahibi = "Lizbon",
                konuk = "Lazio",
                altSecenekler = "HandiCap (0:1)"
            });
            macs.Add(new mac()
            {
                kod = 2645,
                evSahibi = "Fenerbahçe",
                konuk = "Galatasaray",
                altSecenekler = "HandiCap (0:1)"
            });
            return macs;
        }
    }
}
