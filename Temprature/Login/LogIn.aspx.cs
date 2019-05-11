using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedIndex == 2)
        {

        
            string query = "select id from Patient where Phone=@email and FirstName=@Fname and Password=@pass";
            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@email", txtMobId.Text);
            cmd.Parameters.AddWithValue("@pass", Pass.Text);
            cmd.Parameters.AddWithValue("@Fname", Unam.Text);
            cn.Open();
            int i = Convert.ToInt16(cmd.ExecuteScalar());
            //SqlDataReader sdr = cmd.ExecuteReader();
            if (i != 0)
            {
                Session["uid"] = i.ToString();
                Response.Redirect("../Patients/Patient.aspx?uid=" + i);
            }
            else
            {
                Label2.Text = "This mobile number is not registered at any hospital please contact with your hospital ..!!";
            }
            cn.Close();
        }

        if (DropDownList1.SelectedIndex == 1)
        {
           
            SqlCommand cmd = new SqlCommand("select * from Tbl_Doctor where mnumber=@email and Password=@pass", cn);

            cmd.Parameters.AddWithValue("@email", txtMobId.Text);
            cmd.Parameters.AddWithValue("@pass", Pass.Text);
            cn.Open();
            int i = Convert.ToInt16(cmd.ExecuteScalar());
            //SqlDataReader sdr = cmd.ExecuteReader();
            if (i != 0)
            {
                Session["uid"] = i.ToString();
                Response.Redirect("../Doctor/Doctor.aspx?uid=" + i);
            }
            else
            {
                Label2.Text = "Mobile Number or Password Is not correct Try again..!!";

            }
            cn.Close();
        }

    }
}
