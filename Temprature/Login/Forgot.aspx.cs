using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ForgotP_Click(object sender, EventArgs e)
    {
        string uname = Email.Text;
        Response.Redirect("Password.aspx?Username=" + uname);
    }
}