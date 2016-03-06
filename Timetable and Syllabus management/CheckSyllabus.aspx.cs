using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CheckSyllabus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Subject.Visible = false;
    }
    protected void Subject_SelectedIndexChanged(object sender, EventArgs e)
    {
        Subject.Visible = true;
        GridView1.Visible = true;
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Branch_SelectedIndexChanged(object sender, EventArgs e)
    {
        Subject.Visible = true;
    }
}