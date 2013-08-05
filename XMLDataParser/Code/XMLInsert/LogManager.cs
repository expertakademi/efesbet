using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using System.Configuration;

namespace ImportScrapXMLData
{
    class LogManager
    {

        public void AddtoLogFile(string Message, string Source)
        {


            //string LogPath = Path.Combine(Path.GetDirectoryName(Application.ExecutablePath), "ErrorLogFiles/");//anidya put in app.config
            //string LogPath =  "C:/ErrorLogFiles/";//anidya put in app.config
            // string LogPath = Path.Combine(ConfigurationManager.AppSettings[" "].ToString(), "ErrorLogFiles/");
           string LogPath = Convert.ToString(ConfigurationManager.AppSettings["LogFilePath"]);
            if (!Directory.Exists(LogPath))
            {
                Directory.CreateDirectory(LogPath);
            }
            string filename = "ErrorLog_" + DateTime.Now.ToString("dd-MM-yyyy") + ".txt";
            string filepath = LogPath + filename;
            if (File.Exists(filepath))
            {
                using (StreamWriter writer = new StreamWriter(filepath, true))
                {
                    writer.WriteLine("-------------------START-------------" + DateTime.Now);
                    writer.WriteLine("Source : " + Source);
                    writer.WriteLine(Message);
                    writer.WriteLine("-------------------END-------------" + DateTime.Now);
                    writer.WriteLine(" ");
                }
            }
            else
            {
                StreamWriter writer = File.CreateText(filepath);
                writer.WriteLine(" -------------------START-------------" + DateTime.Now);
                writer.WriteLine("Source : " + Source);
                writer.WriteLine(Message);
                writer.WriteLine("-------------------END-------------" + DateTime.Now);
                writer.WriteLine(" ");
                writer.Close();
            }
        }

    }
}
