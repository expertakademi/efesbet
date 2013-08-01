using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;


namespace ImportScrapXMLData
{
    public partial class FormImportScrapXMLData : Form
    {
        LogManager errorLog = new LogManager();

        BL objBL = new BL();
        string filePath = string.Empty;


        FileSystemWatcher fileWatch = new FileSystemWatcher();

        public FormImportScrapXMLData()
        {
            InitializeComponent();
        }

        private void btnInset_Click(object sender, EventArgs e)
        {
            try
            {

                // filePath="D:/GOPI/XMLInsert/XMLInsert/XML/futbol.xml";
                //filePath = "C:/Documents and Settings/aspire/Desktop/XmlToDatabase/XMLInsert/XMLInsert/XML/futbol.xml";
                filePath = " http://www.ecb.int/stats/eurofxref/eurofxref-daily.xml";
               // filePath = " http://www.w3schools.com/xml/cd_catalog.xml";


                objBL.ReadXmlFile(filePath);
            }
            catch (Exception ex)
            {
                errorLog.AddtoLogFile(ex.ToString(), "InsertButtonClick_Form1");
            }
        }
    }
}
