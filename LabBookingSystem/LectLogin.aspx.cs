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
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["uid"] != null)
            {
                Response.Redirect("LectViewLab.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LectSignUp.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            if (Session["uid"] != null)
            {
                Response.Redirect("LectViewLab.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            conn.Open();
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("SELECT * FROM Lecturer WHERE lecturerID='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "'", conn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            if (DT.Rows.Count > 0)
            {
                Session["uid"] = TextBox1.Text;
                Response.Redirect("LectViewLab.aspx");
            }
            else
            {
                Response.Write("<script>alert('lecturerID & Password Is not correct Try again..!!')</script>");
            }
        }
    }
}