using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_FacE : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void fupd_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update fac.facultydata set fmobile = '" + fmobile.Text + "',femailid = '" + femailid.Text + "' where (fid = '" + fid.Text + "' and dept = '" + dept.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Update Succesful!')</script>");
    }
    protected void fid_datafill(object sender, EventArgs e)
    {
        try
        {
            List<TextBox> tb = new List<TextBox>() { fname, fmobile, femailid, dept, role };
            con.Open();
            SqlCommand cmd = new SqlCommand("select fname,fmobile,femailid,dept,roles from fac.facultydata where (fid = '" + fid.Text + "')", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
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
                for (int i = 0; i < 5; i++)
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