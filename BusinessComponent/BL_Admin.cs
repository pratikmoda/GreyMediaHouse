using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using BusinessComponent;


namespace BusinessComponent.BL_Admin
{
    public class BL_Admin : BL_Common
    {
        string SQLSP;
        SqlParameter sqlParam;
        SqlParameter[] sqlParams;

        public BL_Admin()
        {
            connectionStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }

        #region Admin Login Methods
        public DataSet ValidateAdminLogin(string Loginid, string Password)
        {
            DataSet dsLogin = new DataSet();
            SQLSP = "ValidateAdminUser";
            sqlParams = new SqlParameter[2];
            sqlParams[0] = new SqlParameter("@Username", SqlDbType.VarChar);
            sqlParams[0].Value = Loginid;
            sqlParams[1] = new SqlParameter("@Password", SqlDbType.VarChar);
            sqlParams[1].Value = Password;
            try
            {
                dsLogin = GetCachedData(CommandType.StoredProcedure, SQLSP, sqlParams, 0);
            }
            catch (Exception ex)
            {
                LogFile("Admin Login Methods", "ValidateAdminLogin", ex);
            }
            if (dsLogin.Tables.Count == 0)
            {
                return dsLogin = null;
            }
            else
            {
                return dsLogin;
            }
        }
        #endregion
    }
}
