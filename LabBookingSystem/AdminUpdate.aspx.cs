using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace LabBookingSystem
{
    public partial class AdminUpdate : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
                conn.Open();

                cmd = new SqlCommand("SELECT [lecturerID],[name],[lab],[date],[timeStart],[timeEnd] FROM Bookings WHERE [bookingID]=@val", conn);
                cmd.Parameters.AddWithValue("@val", Session["bookingEdit"]);
                cmd.ExecuteNonQuery();

                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                TextBox1.Text = sdr["name"].ToString();
                TextBox2.Text = sdr["lecturerID"].ToString();
                TextBox3.Text = sdr["date"].ToString();
                DropDownList1.ClearSelection();
                DropDownList1.SelectedValue = (string)Session["bookedLab"];

                TextBox4.Text = sdr["timeStart"].ToString();
                TextBox5.Text = sdr["timeEnd"].ToString();
                conn.Close();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            conn.Open();
            
            cmd = new SqlCommand("UPDATE Bookings SET lecturerID=@id, name= @name, lab=@lab, date=@date, timeStart=@timeStart, timeEnd=@timeEnd WHERE bookingID= @bookingID", conn);
            cmd.Parameters.AddWithValue("@bookingID", Session["bookingEdit"]);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@id", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lab", DropDownList1.SelectedValue);
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
            DropDownList1.SelectedIndex = 0;
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDelete.aspx");
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("HomePage.aspx");
        }
    }
}