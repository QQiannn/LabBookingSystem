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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            notiTable.Visible = false;
        }

        protected void searchBtn_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            SqlCommand cmd, cmd2;
            String str, str2;

            if (searchDropDown.SelectedValue == "ID")
            {
                str = "SELECT * FROM Lab WHERE labID LIKE '%' + @search + '%'";
                str2 = "SELECT COUNT(labID) FROM Lab WHERE labID LIKE '%' + @search + '%'";
            }
            else
            {
                str2 = "SELECT COUNT(labName) FROM Lab WHERE labName LIKE '%' + @search + '%'";
                str = "SELECT * FROM Lab WHERE labName LIKE '%' + @search + '%'";
            }

            cmd = new SqlCommand(str, conn);
            cmd2 = new SqlCommand(str2, conn);
            cmd.Parameters.Add("@search", SqlDbType.VarChar).Value = searchTxtBox.Text;
            cmd2.Parameters.Add("@search", SqlDbType.VarChar).Value = searchTxtBox.Text;

            conn.Open();
            cmd.ExecuteNonQuery();
            int columns = Convert.ToInt32(cmd2.ExecuteScalar());

            if(columns == 0)
            {
                notiTable.Visible = true;
                GridView2.Visible = true;
                GridView1.Visible = false;
                conn.Close();
            }
            else
            {
                GridView2.Visible = false;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;

                DataSet ds = new DataSet();

                if (searchDropDown.SelectedItem.Equals("Lab ID"))
                {
                    da.Fill(ds, "labID");
                }
                else
                {
                    da.Fill(ds, "labName");
                }

                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
                conn.Close();
            }

            
        }

        protected void bookBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LectBookLab.aspx");
        }
    }
}