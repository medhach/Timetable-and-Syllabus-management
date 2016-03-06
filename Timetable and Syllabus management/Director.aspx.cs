using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Director : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void SButton_Click(object sender, EventArgs e)
    {
       // Response.Redirect("Dir2.aspx");
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select fname from fac.facultydata where (fname like '%" + STextBox.Text + "%')", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex) { }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView1.SelectedRow.Cells[0] != null)
        {
            Session["facname"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("Dir2.aspx");
        }
    }
    protected void STextBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}