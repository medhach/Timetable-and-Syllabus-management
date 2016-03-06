using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FacManagement : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void fin_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into fac.facultydata (fid,fname,fmobile,femailid,dept,roles) values ('" + fid.Text + "','" + fname.Text + "','" + fmobile.Text + "','" + femailid.Text + "','" + dept.Text + "','" + role.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Faculty added Successfully!')</script>");
            con.Close();
        }
        catch(SqlException se)
        {
            Response.Write("<script>alert('Faculty already exists!')</script>");

        }
    }
    protected void fid_check(object sender, EventArgs e)
    {
        try
        {
            List<TextBox> tb = new List<TextBox>() { fname, fmobile, femailid, dept, role };
            con.Open();
            SqlCommand cmd = new SqlCommand("select fname,fmobile,femailid,dept,roles from fac.facultydata where (fid = '" + fid.Text + "')", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows==true)
            {
                while (dr.Read())
                {
                    tb[0].Text = dr.GetValue(0).ToString();
                    tb[1].Text = dr.GetValue(1).ToString();
                    tb[2].Text = dr.GetValue(2).ToString();
                    tb[3].Text = dr.GetValue(3).ToString();
                    tb[4].Text = dr.GetValue(4).ToString();
                }
            }
            else
            {
                for(int i = 0; i < 5; i++)
                {
                    tb[i].Text = null;
                }
            }
            con.Close();
        }
        catch (Exception se) { }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}