
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data.Common;
using System.Data;

namespace BusinessComponent
{
    public class BL_Contact : BL_Common
    {
        string SQLSP;
        SqlParameter sqlParam;
        SqlParameter[] sqlParams;

        BL_Common objCommom = new BL_Common();

        public BL_Contact()
        {
            connectionStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }

        public int addInquiry(string name, string email, string subject, string message)
        {
            int status = 0;
            try
            {
                Database objDB = new SqlDatabase(connectionStr);
                DbCommand objAdd = new SqlCommand();
                objAdd.CommandType = CommandType.StoredProcedure;
                objAdd.CommandText = "InsertInquiry";
                objDB.AddInParameter(objAdd, "@Name", DbType.String, name);
                objDB.AddInParameter(objAdd, "@Email", DbType.String, email);
                objDB.AddInParameter(objAdd, "@Subject", DbType.String, subject);
                objDB.AddInParameter(objAdd, "@Message", DbType.String, message);
                objDB.AddOutParameter(objAdd, "@Stat", DbType.Int16, 16);
                objDB.ExecuteNonQuery(objAdd);
                status = Convert.ToInt16(objDB.GetParameterValue(objAdd, "@Stat"));

                return status;
            }
            catch (Exception ex)
            {
                objCommom.LogFile("Contact.aspx", "addInquiry", ex);
                return status;
            }
        }

        public DataSet getInquiry()
        {
            DataSet dsProduct = new DataSet();
            SQLSP = "GetInquiryData";
            try
            {
                dsProduct = GetCachedData(CommandType.StoredProcedure, SQLSP, null, 0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dsProduct;
        }

        public DataSet getClient()
        {
            DataSet dsProduct = new DataSet();
            SQLSP = "GetClientData";
            try
            {
                dsProduct = GetCachedData(CommandType.StoredProcedure, SQLSP, null, 0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dsProduct;
        }
    }
}
