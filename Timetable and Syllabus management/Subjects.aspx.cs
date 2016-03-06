using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Subjects : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void sin_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tt.Subject values ('" +SubName.Text+ "','" + SubCode.Text + "','" + ddyear.SelectedValue + "','" + ddbranch.SelectedValue + "','" + ddsem.SelectedValue + "')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Successful!')</script>");
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    
}