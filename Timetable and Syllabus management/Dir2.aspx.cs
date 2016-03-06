using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Dir2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["facname"].ToString() == null)
        {
            Response.Redirect("Director.aspx");
        }
        else
        {
            string facname = Session["facname"].ToString();
            Label1.Text = Session["facname"].ToString();
            String cmd = "select * from tt.TopicsCovered where (fid = (select fid from fac.facultydata where fname = '" + Session["facname"].ToString() + "'))";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}