using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabBookingSystem
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                Response.Redirect("AdminInsertLab.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            conn.Open();
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("SELECT * FROM Admin WHERE username='" + TxtUsername.Text + "' AND password='" + TxtPassword.Text + "'", conn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            if (DT.Rows.Count > 0)
            {
                Response.Redirect("AdminInsertLab.aspx");
            }
            else
            {
                Response.Write("<script>alert('Username & Password Is not correct Try again..!!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LectLogin.aspx");
        }
    }
}