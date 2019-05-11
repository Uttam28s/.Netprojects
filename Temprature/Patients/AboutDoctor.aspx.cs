using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patients_Default : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt16(Session["uid"]);
        String conString = "Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True";
        con = new SqlConnection(conString);
        String query1 = "select Did from Patient where id =" + id;
        SqlCommand cmd1 = new SqlCommand(query1, con);
        con.Open();
        String i = cmd1.ExecuteScalar().ToString();
        con.Close();

        String q1 = "SELECT Tbl_Doctor.* FROM Tbl_Doctor INNER JOIN Patient ON Tbl_Doctor.Did =" + i;
        SqlCommand cd1 = new SqlCommand(q1, con);
        SqlDataAdapter sda1 = new SqlDataAdapter(cd1);
        DataTable dt1 = new DataTable();
        con.Open();
        cd1.ExecuteNonQuery();
        con.Close();
        sda1.Fill(dt1);
        dView.DataSource = dt1;
        dView.DataBind();
    }
}