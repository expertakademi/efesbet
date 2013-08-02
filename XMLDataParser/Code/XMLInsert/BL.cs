using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.IO;
using System.Data.SqlClient;


namespace ImportScrapXMLData
{

    class BL
    {
        #region Global variable declaration

        LogManager errorLog = new LogManager();

        DAL objDAl = new DAL();
        XmlInsertEL objInsertEL = new XmlInsertEL();
        SqlCommand sqlCmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        List<string> lstTables = new List<string>();
        DataSet ds = new DataSet();
        DataTable dtLg = new DataTable();
        DataTable dt = new DataTable("Matches");
       // int count = 0;
        #endregion

        #region Read Xml File
        
        public void ReadXmlFile(string filePath)
        {
            try
            {
                ds.ReadXml(filePath);

                dt = ds.Tables[2];
                ds.Tables[2].Columns.Add("MatchHome");
                ds.Tables[2].Columns.Add("MatchVisitor");

                for (int i = 0; i < ds.Tables[2].Rows.Count; i++)
                {
                    string value = ds.Tables[2].Rows[i]["name"].ToString();
                    string[] str1 = value.Replace(" v ", "$").Split('$');
                    ds.Tables[2].Rows[i]["MatchHome"] = str1[0];
                    ds.Tables[2].Rows[i]["MatchVisitor"] = str1[1];
                }


                for (int j = 1; j < ds.Tables.Count; j++)
                {
                    dtLg = new DataTable(ds.Tables[j].TableName);

                    for (int i = 0; i < ds.Tables[j].Columns.Count; i++)
                    {
                        dtLg.Columns.Add(ds.Tables[j].Columns[i].ColumnName);
                    }

                    foreach (DataRow dr in ds.Tables[j].Rows)
                    {
                        DataRow drNew;
                        drNew = dtLg.NewRow();
                        for (int i = 0; i < ds.Tables[j].Columns.Count; i++)
                        {
                            drNew[i] = dr[i];
                        }
                        dtLg.Rows.Add(drNew);

                    }
                    dtLg.AcceptChanges();

                    using (MemoryStream str = new MemoryStream())
                    {
                        dtLg.WriteXml(str, true);
                        str.Seek(0, SeekOrigin.Begin);
                        using (StreamReader sr = new StreamReader(str))
                        {
                            lstTables.Add(sr.ReadToEnd());
                        }
                    }
                }
                objInsertEL.leauge = lstTables[0].ToString();
                objInsertEL.match = lstTables[1].ToString();
                objInsertEL.bets = lstTables[2].ToString();
                objInsertEL.bet = lstTables[3].ToString();
                objInsertEL.choice = lstTables[4].ToString();
                ImportXmlFile(objInsertEL);

            }
            catch (Exception ex)
            {
                errorLog.AddtoLogFile(ex.ToString(), "ReadXmlFile");

            }

        }
       
        #endregion

        #region Import Xml File into Database
        
        public void ImportXmlFile(XmlInsertEL objInsertFile)
        {
            try
            {

                SqlDataAdapter sqlDa = new SqlDataAdapter();
                DataTable dt = new DataTable();
                sqlCmd = new SqlCommand();
                con = objDAl.GetConnection();
                sqlCmd.CommandText = "ImportDataFromFile";
                sqlCmd.Parameters.AddWithValue("@XMLStringLg", objInsertFile.leauge);
                sqlCmd.Parameters.AddWithValue("@XMLStringMatch", objInsertFile.match);
                sqlCmd.Parameters.AddWithValue("@XMLStringBets", objInsertFile.bets);
                sqlCmd.Parameters.AddWithValue("@XMLStringBet", objInsertFile.bet);
                sqlCmd.Parameters.AddWithValue("@XMLStringChoice", objInsertFile.choice);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Connection = con;

                DataTable t1 = new DataTable();
                using (SqlDataAdapter a = new SqlDataAdapter(sqlCmd))
                {
                    a.Fill(t1);
                }

                int retVal = sqlCmd.ExecuteNonQuery();
                sqlCmd = null;
            }
            catch (Exception ex)
            {
                errorLog.AddtoLogFile(ex.ToString(), "ImportXmlFile");
            }
        }

        #endregion

    }


}

