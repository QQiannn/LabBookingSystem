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
    public partial class ViewLab : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void searchBtn_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=LabBookings;Integrated Security=True");
            SqlCommand cmd;
            String str;

            if (searchDropDown.SelectedValue == "Name")
            {
                str = "SELECT labName, labLocation, labPersonInCharge, labContact FROM Lab WHERE labName LIKE '%' + @search + '%'";
            }
            else
            {
                str = "SELECT labName, labLocation, labPersonInCharge, labContact FROM Lab WHERE labLocation LIKE '%' + @search + '%'";
            }

            cmd = new SqlCommand(str, conn);
            cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = searchTxtBox.Text;

            conn.Open();
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataSet ds = new DataSet();

            if (searchDropDown.SelectedValue == "Name")
            {
                da.Fill(ds, "labName");
            }
            else
            {
                da.Fill(ds, "labLocation");
            }

            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
    }
}