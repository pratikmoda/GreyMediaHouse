using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessComponent;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    BL_Common objCommon = new BL_Common();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgSubmit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.greymediahouse.com/#contact");

        try
        {
            var smtp = new System.Net.Mail.SmtpClient();
            var credential = new System.Net.Configuration.SmtpSection().Network;

            string strHost = smtp.Host;
            int port = smtp.Port;
            string strUserName = credential.UserName;
            string strFromPass = credential.Password;

            string strtoAddress = ConfigurationManager.AppSettings["EnquiryToMail"];
            string strfromAddress = ConfigurationManager.AppSettings["EnquiryFromMail"];
            string strSubject = txtSubject.Text.ToString();
            string strbody = "<html><head></head><body>Name : " + txtName.Text.ToString() + "<br/>Email : "
                + txtEmail.Text.ToString() + "<br/>Description : " + txtDescription.Text.ToString() + "</body></html";

            objCommon.SendEMail(strtoAddress, strfromAddress, strSubject, strbody, null, null, null);
        }
        catch (Exception ex)
        {
            objCommon.LogFile(ex.Message, "imgSubmit_Click", ex);
        }
    }
}