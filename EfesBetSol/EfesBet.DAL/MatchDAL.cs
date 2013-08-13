using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using EfesBet.Entities;
using System.Data.SqlTypes;
using EfesBet.DataContract;


namespace EfesBet.DAL
{
    public class MatchDAL
    {        
        private SqlConnection objConn = null;
        #region Method : GetConnection
        ///<summary> Method name		: GetConnection
        ///<newpara> Date of Creation	: 
        ///<newpara> Description		: Get a connection object.
        ///<newpara> Author				: Aspire Software Consultancy
        ///<param ></param> 
        ///<returns>sql connection object</returns >
        ///<remarks></remarks>		
        public SqlConnection GetConnection()
        {
            try
            {
                if (objConn != null && objConn.State == ConnectionState.Open)
                {
                    return objConn;
                }
                else if (objConn != null && objConn.State == ConnectionState.Closed)
                {
                    objConn.Open();
                    return objConn;
                }
                else
                {
                    objConn = new SqlConnection();
                    //objConn.ConnectionString = ConfigurationManager.AppSettings["ConnectionString"].ToString();                    
                    objConn.ConnectionString="Data Source=192.168.1.163;Database=EfesBetDb;Trusted_Connection=Yes;";
                    objConn.Open();
                }
            }
            catch (Exception ex)
            {
                //errorLog.AddtoLogFile(ex.ToString(), "SQLConnectionClass");
            }
            return objConn;
        }
        #endregion
        #region -- Methods ----
        List<GetMatchDetailsDC> listMatch = new List<GetMatchDetailsDC>();
        GetMatchDetailsDC match = new GetMatchDetailsDC();
        /// <summary>
        /// gets the contents of the 
        /// </summary>
        /// <returns></returns>
        public List<GetMatchDetailsDC> GetMatch()
        {
            objConn = GetConnection();
            listMatch = new List<GetMatchDetailsDC>();
            SqlCommand cmd = new SqlCommand("GetMatchDetails",objConn);
            //SqlDataAdapter ad = new SqlDataAdapter();
            //DataTable dt = new DataTable();
            //ad.SelectCommand = cmd;
            //ad.Fill(dt);
            cmd.CommandType = CommandType.StoredProcedure;            
            SqlDataReader reader = cmd.ExecuteReader();
            //
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    match = new GetMatchDetailsDC();
                    if (reader["MatchNo"] != null)
                    {
                        match.MatchNo = Convert.ToInt32(reader["MatchNo"]);
                    }
                    if (!string.IsNullOrEmpty(reader["TeamName"].ToString()))                    
                    {
                        match.TeamName = reader["TeamName"].ToString();
                    }

                    if (Convert.ToDateTime(reader["MatchDate"]) > SqlDateTime.MinValue && Convert.ToDateTime(reader["MatchDate"]) < SqlDateTime.MaxValue)
                        match.MatchDate = Convert.ToDateTime(reader["MatchDate"]);

                    if (!string.IsNullOrEmpty(reader["LeagueName"].ToString()))
                        match.LeagueName = reader["LeagueName"].ToString();
                    //
                    //
                    listMatch.Add(match);
                }
            }
            return listMatch;
        }
        #endregion
        /*     */
        //
    }
}

