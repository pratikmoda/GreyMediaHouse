using BusinessComponent;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class services : System.Web.UI.Page
{
    BL_Contact objContact = new BL_Contact();
    string FromEmail = ConfigurationManager.AppSettings["FromEmail"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        divThanku.Visible = false;
    }
    public bool Validat()
    {
        bool valid = true;
        if (txtFirstName.Text.Trim() == "")
        {
            txtFirstName.BorderColor = System.Drawing.Color.Red;
            txtFirstName.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtFirstName.BorderColor = System.Drawing.Color.Empty;
            txtFirstName.BorderStyle = BorderStyle.None;
        }

        if (txtLastName.Text.Trim() == "")
        {
            txtLastName.BorderColor = System.Drawing.Color.Red;
            txtLastName.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtLastName.BorderColor = System.Drawing.Color.Empty;
            txtLastName.BorderStyle = BorderStyle.None;
        }

        if (txtCompanyName.Text.Trim() == "")
        {
            txtCompanyName.BorderColor = System.Drawing.Color.Red;
            txtCompanyName.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtCompanyName.BorderColor = System.Drawing.Color.Empty;
            txtCompanyName.BorderStyle = BorderStyle.None;
        }

        if (txtCountry.Text.Trim() == "")
        {
            txtCountry.BorderColor = System.Drawing.Color.Red;
            txtCountry.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtCountry.BorderColor = System.Drawing.Color.Empty;
            txtCountry.BorderStyle = BorderStyle.None;
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

        if (txtContact.Text.Trim() == "")
        {
            txtContact.BorderColor = System.Drawing.Color.Red;
            txtContact.BorderStyle = BorderStyle.Solid;
            valid = false;
        }
        else
        {
            txtContact.BorderColor = System.Drawing.Color.Empty;
            txtContact.BorderStyle = BorderStyle.None;
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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Validat())
            {
                Services objServices = new Services();

                objServices.FirstName = txtFirstName.Text;
                objServices.LastName = txtLastName.Text;
                objServices.CompanyName = txtCompanyName.Text;
                objServices.Email = txtEmail.Text;
                objServices.Contact = txtContact.Text;
                objServices.Country = txtCountry.Text;
                objServices.Message = txtMessage.Text;

                int result = objContact.addServicesInquiry(objServices);

                if (result > 0)
                {
                    divThanku.Visible = true;
                    divThanku.Focus();
                   

                    //Email to GMH
                    StreamReader sr = new StreamReader(@Server.MapPath("/Mailers/GMHServiceInquiry.html"));
                    string _MailBody = sr.ReadToEnd();
                    string MailBody = _MailBody.Replace("XXFIRSTNAMEXX", txtFirstName.Text).Replace("XXLASTNAMEXX", txtLastName.Text).Replace("XXCOMPANYNAMEXX", txtCompanyName.Text)
                        .Replace("XXCOUNTRYXX", txtCountry.Text).Replace("XXEMAILXX", txtEmail.Text).Replace("XXCONTACTXX", txtContact.Text);
                    objContact.SendEMail(FromEmail, "no-reply@greymediahouse.com", "GMH Service Enquiry", MailBody, null, null, null);

                    //Email to Client
                    StreamReader sr2 = new StreamReader(@Server.MapPath("/Mailers/ClientServiceInquiry.html"));
                    string _MailBody2 = sr.ReadToEnd();
                    string MailBody2 = _MailBody2.Replace("XXFIRSTNAMEXX", txtFirstName.Text);
                    objContact.SendEMail(FromEmail, "no-reply@greymediahouse.com", "Grey Media House", MailBody2, null, null, null);

                    Clear();
                }
            }
        }
        catch (Exception ex)
        {
            objContact.LogFile("services.aspx.cs", "btnSubmit_Click", ex);
        }


    }
    private void Clear()
    {
        txtFirstName.Text = ""; txtLastName.Text = ""; txtCompanyName.Text = ""; txtEmail.Text = ""; txtContact.Text = ""; txtCountry.Text = ""; txtMessage.Text = "";
    }
}