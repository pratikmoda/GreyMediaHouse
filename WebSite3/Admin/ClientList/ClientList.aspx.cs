using BusinessComponent;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ClientList_ClientList : System.Web.UI.Page
{
    BL_Contact objContact = new BL_Contact();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            loadData();
    }

    private void loadData()
    {
        try
        {
            DataSet dsMaster = objContact.getClient();
            ViewState["dsProducts"] = dsMaster;
            if (dsMaster != null)
            {
                if (dsMaster.Tables[0].Rows.Count > 0)
                {
                    lvInquiry.DataSource = dsMaster.Tables[0];
                    lvInquiry.DataBind();
                    lblNoData.Visible = false;
                }

            }
            else
            { lvInquiry.Visible = false; lblNoData.Visible = true; }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}