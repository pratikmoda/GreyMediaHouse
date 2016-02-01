using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessComponent;
using System.Data;
using System.Configuration;
using System.Threading;

public partial class Admin_Mailers_Introduction : System.Web.UI.Page
{
    BL_Mailer objMailer = new BL_Mailer();
    BL_Common objCommon = new BL_Common();
    string fromEmail = ConfigurationManager.AppSettings["FromEmail"].ToString();
    string subject = ConfigurationManager.AppSettings["IntroSubject"].ToString();
    string template;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { }

    }

    private void loadData()
    {
        try
        {
            DataSet dsMaster = objMailer.getMailerTemplate("Introduction");
            ViewState["dsProducts"] = dsMaster;
            if (dsMaster != null)
            {
                if (dsMaster.Tables[0].Rows.Count > 0)
                {
                    template = dsMaster.Tables[0].Rows[0]["MAILER"].ToString();
                }

            }
            else
            { template = null; }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void btnSendMail_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet dsClient = objMailer.getIntroClient();
            DataTable dt = dsClient.Tables[0];
            int count = 0;
            loadData();
            if (dt != null && template != null)
            {
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        int result = objCommon.SendEMail(dt.Rows[i]["EMAIL"].ToString(), "Grey Media House<" + fromEmail + ">", subject, template, null, null, null);
                        if (result == 1)
                        {
                            objMailer.UpdateMailer(Convert.ToInt32(dt.Rows[i]["ID"].ToString()));
                            Thread.Sleep(15000);//Added to send 4 emails every 1 minute
                            count++;
                        }

                    }
                    lblMsg.Text = "Mail sent successfully to " + count;
                }
            }
        }
        catch (Exception ex)
        {
            objCommon.LogFile("Intro Mail Error", "btnSendMail_Click", ex);
        }

    }
}