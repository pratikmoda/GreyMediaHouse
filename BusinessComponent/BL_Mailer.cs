
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
    public class BL_Mailer : BL_Common
    {
        string SQLSP;
        SqlParameter sqlParam;
        SqlParameter[] sqlParams;

        BL_Common objCommom = new BL_Common();

        public BL_Mailer()
        {
            connectionStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }

        public DataSet getIntroClient()
        {
            DataSet dsProduct = new DataSet();
            SQLSP = "GetIntroMaillerClients";
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

        public DataSet getMailerTemplate(string name)
        {
            DataSet dsProduct = new DataSet();
            SQLSP = "GetMailerTemplatebyName";
            try
            {
                sqlParams = new SqlParameter[1];
                sqlParams[0] = new SqlParameter("@Name", SqlDbType.VarChar);
                sqlParams[0].Value = name;

                dsProduct = GetCachedData(CommandType.StoredProcedure, SQLSP, sqlParams, 0);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dsProduct;
        }

        public int UpdateMailer(int Id)
        {
            int status = 0;
            try
            {
                Database objDB = new SqlDatabase(connectionStr);
                DbCommand objAdd = new SqlCommand();
                objAdd.CommandType = CommandType.StoredProcedure;
                objAdd.CommandText = "UpdateClientbyId";
                objDB.AddInParameter(objAdd, "@Id", DbType.Int32, Id);
                objDB.AddOutParameter(objAdd, "@Status", DbType.Int16, 16);
                objDB.ExecuteNonQuery(objAdd);
                status = Convert.ToInt16(objDB.GetParameterValue(objAdd, "@Status"));

                return status;
            }
            catch (Exception ex)
            {
                throw ex;
                return status;
            }
        }
    }
}
