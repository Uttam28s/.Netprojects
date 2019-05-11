using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Password : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True");
    }

    protected void Done_Click(object sender, EventArgs e)
    {
        string uname = Request.QueryString["Username"];
        SqlCommand cmd= new SqlCommand ("Update Patient set Pass=@pass where Uname='" + uname+"'",cn);
        cmd.Parameters.AddWithValue("@pass", Pass.Text);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}