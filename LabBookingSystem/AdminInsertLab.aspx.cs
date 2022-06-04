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
            successImg.Visible = false;
            insertTable.Visible = false;
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");

            conn.Open();
            cmd = new SqlCommand("INSERT INTO Lab VALUES (@id, @name)", conn);

            cmd.Parameters.AddWithValue("@id", idTxtBox.Text);
            cmd.Parameters.AddWithValue("@name", nameTxtBox.Text);

            cmd.ExecuteNonQuery();
            idTxtBox.Text = "";
            nameTxtBox.Text = "";
            successImg.Visible = true;
            successLbl.Visible = true;
            GridView1.DataBind();
            conn.Close();

        }

        protected void insertNewBtn_Click(object sender, EventArgs e)
        {
            insertTable.Visible = true;
        }
    }
}