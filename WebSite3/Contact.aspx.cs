using BusinessComponent;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    BL_Contact objContact = new BL_Contact();
    BL_Common objCommon = new BL_Common();
    string FromEmail = ConfigurationManager.AppSettings["FromEmail"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            divThanku.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Validat())
            {
                int result = objContact.addInquiry(txtName.Text.Trim(), txtEmail.Text.Trim(), txtSubject.Text.Trim(), txtMessage.Text.Trim());

                if (result > 0)
                {
                    divThanku.Visible = true;
                    divThanku.Focus();


                    //Email to GMH
                    StreamReader sr = new StreamReader(@Server.MapPath("/Mailers/GMHContact.html"));
                    string _MailBody = sr.ReadToEnd();
                    string MailBody = _MailBody.Replace("XXNAMEXX", txtName.Text).Replace("XXEMAILXX", txtEmail.Text).Replace("XXMESSAGEXX", txtMessage.Text);
                    objContact.SendEMail(FromEmail, "no-reply@greymediahouse.com", txtSubject.Text, MailBody, null, null, null);

                    //Email to Client
                    StreamReader sr2 = new StreamReader(@Server.MapPath("/Mailers/ClientServiceInquiry.html"));
                    string _MailBody2 = sr.ReadToEnd();
                    string MailBody2 = _MailBody2.Replace("XXFIRSTNAMEXX", txtName.Text);
                    objContact.SendEMail(txtEmail.Text, "no-reply@greymediahouse.com", "Grey Media House", MailBody2, null, null, null);

                    Clear();
                }
            }
        }
        catch (Exception ex)
        {
            objContact.LogFile("Contact.aspx.cs", "btnSubmit_Click", ex);
        }

    }
    protected void Clear()
    {
        txtName.Text = ""; txtEmail.Text = ""; txtSubject.Text = ""; txtMessage.Text = "";
    }
    public bool Validat()
    {
        bool valid = true;
        if (txtName.Text.Trim() == "")
        {
            txtName.BorderColor = System.Drawing.Color.Red;
            txtName.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtName.BorderColor = System.Drawing.Color.Empty;
            txtName.BorderStyle = BorderStyle.None;
        }

        if (txtEmail.Text.Trim() == "")
        {
            txtEmail.BorderColor = System.Drawing.Color.Red;
            txtEmail.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtEmail.BorderColor = System.Drawing.Color.Empty;
            txtEmail.BorderStyle = BorderStyle.None;
        }

        if (txtSubject.Text.Trim() == "")
        {
            txtSubject.BorderColor = System.Drawing.Color.Red;
            txtSubject.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtSubject.BorderColor = System.Drawing.Color.Empty;
            txtSubject.BorderStyle = BorderStyle.None;
        }

        if (txtMessage.Text.Trim() == "")
        {
            txtMessage.BorderColor = System.Drawing.Color.Red;
            txtMessage.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtMessage.BorderColor = System.Drawing.Color.Empty;
            txtMessage.BorderStyle = BorderStyle.None;
        }

        return valid;
    }

}