using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class Doctor_Default : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
        cn = new SqlConnection(@"Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True");

        string com = "Select * from Patient";
        SqlDataAdapter adpt = new SqlDataAdapter(com, cn);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
        DropDownList1.DataTextField = "id";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();

        string id = DropDownList1.SelectedItem.Text;
        SqlDataAdapter sda = new SqlDataAdapter("select FirstName from Patient where id=" + id, cn);
        DataTable dat = new DataTable();
        sda.Fill(dat);
        Repeater1.DataSource = dat;
        Repeater1.DataBind();
    }

    private void BindGrid()
    {
        string constr = @"Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True";
        string query = "SELECT * FROM Tbl_medicine";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
            {
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }

    protected void Insert(object sender, EventArgs e)
    {
        string name = txtName.Text;
        string country = txtTime.Text;
        txtName.Text = "";
        txtTime.Text = "";
        string query = "INSERT INTO Tbl_medicine (Medicine_name,Time,Uid) VALUES(@Name, @Country ,@uid)";
        string constr = @"Data Source=LAPTOP-7OD30UGR;Initial Catalog=Uttam;Integrated Security=True";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Country", country);
                cmd.Parameters.AddWithValue("@uid", DropDownList1.SelectedItem.Text);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        this.BindGrid();
    }
}