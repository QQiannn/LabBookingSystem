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
    public partial class AdminDelete : System.Web.UI.Page
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

            cmd = new SqlCommand("Delete from Lab WHERE [labID] =  '" + TextBox1.Text + "'", conn);
            cmd.ExecuteNonQuery();
            Label1.Text = "Data successfully deleted";
            TextBox1.Text = "";
            conn.Close();
        }
    }
}