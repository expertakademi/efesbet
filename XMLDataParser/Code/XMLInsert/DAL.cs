﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ImportScrapXMLData
{
    class DAL
    {
        private SqlConnection objConn = null;
        
        LogManager errorLog = new LogManager();


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
                    objConn.ConnectionString = ConfigurationManager.AppSettings["ConnectionString"].ToString();
                    objConn.Open();
                }
            }
            catch (Exception ex)
            {

                errorLog.AddtoLogFile(ex.ToString(), "SQLConnectionClass");
            }
            return objConn;
        }


        #endregion
    }
}
