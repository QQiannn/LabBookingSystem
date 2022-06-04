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
    public partial class LectBookLab : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            conn.Open();

            cmd = new SqlCommand("INSERT INTO Bookings VALUES (@lecturerID, @name, @lab, @date, @timeStart, @timeEnd)", conn);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lecturerID", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lab", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@date", TextBox4.Text);
            cmd.Parameters.AddWithValue("@timeStart", TextBox5.Text);
            cmd.Parameters.AddWithValue("@timeEnd", TextBox6.Text);
            cmd.ExecuteNonQuery();
            Label7.Text = "Data successfully saved";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LectViewBookings.aspx?");

        }
    }
}