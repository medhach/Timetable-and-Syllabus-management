using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_SubjectD : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sdel_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tt.Subject where (SubName = '" + SubName.SelectedValue + "' and SubCode = '" + SubCode.SelectedValue + "' and Year = '" + ddyear.SelectedValue + "' and Branch = '" + ddbranch.SelectedValue + "' and Semester = '" + ddsem.SelectedValue + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Deleted!')</script>");
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}