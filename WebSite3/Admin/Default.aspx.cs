using BusinessComponent;
using BusinessComponent.BL_Admin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    BL_Admin objAdmin = new BL_Admin();
    BL_Common objCommon = new BL_Common();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet dsLogin = objAdmin.ValidateAdminLogin(txtUsername.Text.Trim(), txtPassword.Text.Trim());
            if (dsLogin != null)
            {
                if (dsLogin.Tables[0].Rows.Count > 0)
                {
                    Session["ADMIN_NAME"] = dsLogin.Tables[0].Rows[0]["NAME"];
                    Session["ADMIN_ID"] = dsLogin.Tables[0].Rows[0]["ID"];
                    Response.Redirect("~/Admin/Home.aspx");
                }
            }
            else
            {
                tdMsg.InnerHtml = "Invalid Login Id / Password";
            }
        }
        catch (Exception ex)
        {
            objCommon.LogFile(Session["ADMIN_NAME"].ToString(), Session["ADMIN_ID"].ToString(), ex);
        }

    }
}