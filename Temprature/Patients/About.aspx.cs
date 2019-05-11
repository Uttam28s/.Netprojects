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
        String query = "select Hospital from Patient where id ="+id;
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        string Hospital = cmd.ExecuteScalar().ToString();
        con.Close();

       
       
        String q = "SELECT Tbl_Hospital.* FROM Tbl_Hospital INNER JOIN Patient ON Tbl_Hospital.Name ='"+Hospital+"'";
        SqlCommand cd = new SqlCommand(q, con);
        SqlDataAdapter sda = new SqlDataAdapter(cd);
        DataTable dt = new DataTable();
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        sda.Fill(dt);
        dView.DataSource = dt;
        dView.DataBind();

        //String query1 = "select Did from Patient where id =" + id;
        //SqlCommand cmd1 = new SqlCommand(query1, con);
        //con.Close();
        //con.Open();
        //String i = cmd.ExecuteScalar().ToString();

        //con.Close();

        //String q1 = "SELECT Tbl_Doctor.* FROM Tbl_Doctor INNER JOIN Patient ON Tbl_Doctor.Did =" + i;
        //SqlCommand cd1 = new SqlCommand(q1, con);
        //SqlDataAdapter sda1 = new SqlDataAdapter(cd1);
        //DataTable dt1 = new DataTable();
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
        //sda1.Fill(dt1);
        //DetailsView1.DataSource = dt1;
        //DetailsView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AboutDoctor.aspx");
    }
}