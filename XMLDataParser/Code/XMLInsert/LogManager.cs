using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Reflection;
using System.Windows.Forms;

namespace ImportScrapXMLData
{
    class LogManager
    {

        public void AddtoLogFile(string Message, string Source)
        {

            string LogPath = Path.Combine(Path.GetDirectoryName(Application.ExecutablePath), "ErrorLogFiles/");
            if (!Directory.Exists(LogPath ))
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
