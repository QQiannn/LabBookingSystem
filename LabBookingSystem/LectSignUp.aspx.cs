using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LabBookingSystem
{
    public partial class LectSignUp : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            conn.Open();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LectLogin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into lecturer " + "(lecturerID,name,email,phone_number,gender,password) values (@lecturerID,@name,@email,@phone_number,@gender,@password)", conn);
            cmd.Parameters.AddWithValue("@lecturerID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@phone_number", TextBox4.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox5.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "SignUp Successfully please back to login page";
        }
    }
}