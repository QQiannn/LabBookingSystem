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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successLbl.Visible = false;
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Lab;Integrated Security=True");

            conn.Open();
            cmd = new SqlCommand("INSERT INTO Lab (labName, labLocation, labPersonInCharge, labContact) VALUES (@name, @location, @pic, @contact)", conn);

            cmd.Parameters.AddWithValue("@name", nameTxtBox.Text);
            cmd.Parameters.AddWithValue("@location", locationTxtBox.Text);
            cmd.Parameters.AddWithValue("@pic", picTxtBox.Text);
            cmd.Parameters.AddWithValue("@contact", contactTxtBox.Text);

            cmd.ExecuteNonQuery();
            successLbl.Visible = true;
            conn.Close();

        }
    }
}