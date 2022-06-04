using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabBookingSystem
{
    public partial class LecturerMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("HomePage.aspx");
        }
    }
}