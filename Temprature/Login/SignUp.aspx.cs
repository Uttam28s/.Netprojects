using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Tbl_User (UName,Email,Pass,Address,Mnumber) Values (@uname,@email,@pass,@add,@mnuber)", cn);
        cmd.Parameters.AddWithValue("@uname", Uname.Text);
        cmd.Parameters.AddWithValue("@email", Email.Text);
        cmd.Parameters.AddWithValue("@pass", Pass.Text);
        cmd.Parameters.AddWithValue("@add", add.Text);
        cmd.Parameters.AddWithValue("@mnuber",Mnumber.Text);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Login.aspx");
    }
}