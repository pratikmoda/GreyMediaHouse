using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class App_Master_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ADMIN_NAME"] == null && Session["ADMIN_ID"] == null)
        {
            Response.Redirect("~/Admin");
        }
        else { lblUser.Text = Session["ADMIN_NAME"].ToString(); }
    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Admin");
    }
}
