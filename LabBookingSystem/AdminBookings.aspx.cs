using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LabBookingSystem
{
    public partial class AdminBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            int index = gvr.RowIndex;
            int value = Convert.ToInt32(GridView1.Rows[index].Cells[0].Text);
            string lab = GridView1.Rows[index].Cells[3].Text;
            Session["bookingEdit"] = value;
            Session["bookedLab"] = lab;
            Response.Redirect("AdminUpdate.aspx");
        }
    }
}