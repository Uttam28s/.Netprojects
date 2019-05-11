using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        string Uid = Request.QueryString["uid"];
        String conString = "Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True";
        con = new SqlConnection(conString);
        String query = "select * from Tbl_Hospital where Hno = @uid";

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@uid", Uid);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        sda.Fill(dt);
        dView.DataSource = dt;
        dView.DataBind();
    }
}