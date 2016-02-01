using BusinessComponent;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    BL_Contact objContact = new BL_Contact();
    BL_Common objCommon = new BL_Common();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            divThanku.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int result = objContact.addInquiry(txtName.Value.ToString(), txtEmail.Value.ToString(), txtSubject.Value.ToString(), txtMessage.Value.ToString());   
     

        if (result > 0)
        {
            divThanku.Visible = true;
            divThanku.Focus();
        }
    }

    protected void Clear()
    {
        txtName.Value = "Name..."; txtEmail.Value = "Email..."; txtSubject.Value = "Subject..."; txtMessage.Value = "Message:";
    }
}