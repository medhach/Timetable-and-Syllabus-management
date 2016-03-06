using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");

    }
    protected void About_Click(object sender, EventArgs e)
    {
        Response.Redirect("About.aspx");

    }
    protected void Timetable_Click(object sender, EventArgs e)
    {
        Response.Redirect("Newtable.aspx");

    }
}
