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


        public FormImportScrapXMLData()
        {
            InitializeComponent();
            objBL.WatchFile();

        }

        private void btnInset_Click(object sender, EventArgs e)
        {
            try
            {
                filePath = Path.Combine(Path.GetDirectoryName(Application.ExecutablePath), "XmlFiles/futbol.xml");

                if (File.Exists(filePath))
                {
                    objBL.ReadXmlFile(filePath);
                }
                else
                {

                    MessageBox.Show("Xml file not found");
                }
            }
            catch (Exception ex)
            {
                errorLog.AddtoLogFile(ex.ToString(), "InsertButtonClick_Form1");
            }
        }
    
    }
}
