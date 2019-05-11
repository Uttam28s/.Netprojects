using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True");

        string com = "Select * from Tbl_Hospital";
        SqlDataAdapter adpt = new SqlDataAdapter(com, cn);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataValueField = "Hno";
        DropDownList1.DataBind();

        string cm = "Select * from Tbl_Doctor";
        SqlDataAdapter adt = new SqlDataAdapter(cm,cn);
        DataTable dat = new DataTable();
        adt.Fill(dat);
        DropDownList2.DataSource = dat;
        DropDownList2.DataBind();
        DropDownList2.DataTextField = "Did";
        DropDownList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string Mn = Phone.Text.Substring(0, 4);
            string Name = FirstName.Text.Substring(0, 2);
            string pass = Name + Mn;
            SqlCommand cmd = new SqlCommand("Insert into Patient (FirstName,LastName,Address,Phone,Gender,BloodGroup,Dieses,Password,Hospital,Did) values (@fname,@lname,@Add,@phone,@Gender,@Blood,@dieses,@pass,@Hos,@did)", cn);
            cmd.Parameters.AddWithValue("@fname", FirstName.Text);
            cmd.Parameters.AddWithValue("@lname", Lastname.Text);
            cmd.Parameters.AddWithValue("@Add", Address.Text);
            cmd.Parameters.AddWithValue("@phone", Phone.Text);
            cmd.Parameters.AddWithValue("@dieses", Dieses.Text);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Blood", RadioButtonList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@pass", pass);
            cmd.Parameters.AddWithValue("@Hos", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@did", DropDownList2.SelectedItem.Text);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();

            if (i != 0)
            {
                lbmsg.Text = "Patient Submitted Succesfully";
                lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                lbmsg.Text = "Some Problem Occured";
                lbmsg.ForeColor = System.Drawing.Color.Red;

            }

        }
        catch (Exception)
        {
            lbmsg.Text = "Please fill all the field";
        }
    }
}