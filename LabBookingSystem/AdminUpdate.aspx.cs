using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;

namespace LabBookingSystem
{
    public partial class AdminUpdate : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            conn.Open();

            cmd = new SqlCommand("INSERT INTO Lab (name, staffID, lab, date, timeStart, timeEnd) VALUES (@name, @id, @lab, @date, @timeStart, @timeEnd)", conn);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@id", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lab", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@date", TextBox3.Text);
            cmd.Parameters.AddWithValue("@timeStart", TextBox4.Text);
            cmd.Parameters.AddWithValue("@timeEnd", TextBox5.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Data successfully saved";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDelete.aspx");
        }
    }
}