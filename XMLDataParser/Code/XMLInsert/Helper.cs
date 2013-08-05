using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace ImportScrapXMLData
{
   public static class Helper
    {

        public static string GetAppConfigValue(string key)
        {
            return Convert.ToString(ConfigurationManager.AppSettings[key]);
        }

    }
}
