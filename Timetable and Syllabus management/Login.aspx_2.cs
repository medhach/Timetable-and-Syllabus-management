using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Student()
    {
        Response.Redirect("CheckSyllabus.aspx");
    }
    protected void Faculty()
    {
        Response.Redirect("UpdateSyllabus.aspx");

    }
    protected void Admin()
    {
        Response.Redirect("Syllabus.aspx");
    }
    protected void Director()
    {
        Response.Redirect("Director.aspx");

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        int count = 0, i = 0;
        string[] fnames = new string[200];
        if (un.Text != null && pass.Text != null)
        {
            //Director Login starts.
            if (un.Text == "Director1")
            {
                if (pass.Text == "kmit12345")
                    Director();
                else
                    lbl.Text = "Invalid Login";
            }
            //Director Login ends.
            //Admin Login starts.
            else if (un.Text == "Admin")
            {
                if (pass.Text == "kmit12345")

                    Admin();
                else
                    lbl.Text = "Invalid Login";
            }
            //Admin Login ends.
            //Student Login starts.
            else if (un.Text.Contains("BD"))
            {
                con.Open();
                Session["studentid"] = un.Text;
                if (un.Text.Contains("12BD"))
                {
                    SqlCommand cmd12 = new SqlCommand("select sname, sroll from studentdata2012 where (sroll ='" + un.Text + "' and smobile = "+pass.Text+")", con);
                    SqlDataReader dr = cmd12.ExecuteReader();
                    while (dr.Read())
                    {
                        count++;
                    }
                    if (count == 1)
                    {
                        Student();
                    }
                    else
                    {
                        lbl.Text = "Invalid Login";
                    }
                }
                else if (un.Text.Contains("13BD"))
                {
                    SqlCommand cmd = new SqlCommand("select sname, sroll from studentdata2013 where (sroll ='" + un.Text + "' and smobile = "+pass.Text+")", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        count++;
                    }
                    if (count == 1)
                    {
                        Student();
                    }
                    else
                        lbl.Text = "Invalid Login";
                }
                else if (un.Text.Contains("14BD"))
                {
                    SqlCommand cmd = new SqlCommand("select sname, sroll from studentdata2014 where (sroll ='" + un.Text + "' and sroll= "+pass.Text+")", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        count++;
                    }
                    if (count == 1)
                    {
                        Student();
                    }
                    else
                        lbl.Text = "Invalid Login";
                }

                con.Close();
            }
            //Student Login ends.

        //Faculty check start.
            else if (Convert.ToInt32(un.Text) >= 0 && Convert.ToInt32(un.Text)<200)
            {
                con.Open();
                Session["fid"] = un.Text;
                SqlCommand cmd1 = new SqlCommand("select fid from fac.facultydata", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    fnames[i] = dr1["fid"].ToString();
                    i++;
                }
                con.Close();
                string password = pass.Text;
                for (int j = 0; j < 200; j++)
                {
                    if (un.Text==(fnames[j]))
                    {
                        con.Open();

                        Session["facid"] = fnames[j];
                        SqlCommand cmd3 = new SqlCommand("select fname from fac.facultydata where (fid = '" + fnames[j] + "'and fmobile = "+Convert.ToDecimal(password)+")", con);
                        SqlDataReader dr2 = cmd3.ExecuteReader();
                        while (dr2.Read())
                        {
                            //Session["facname"] = dr1["fname"].ToString();
                            count++;

                        }
                        if (count == 1)
                            Faculty();
                        else
                            lbl.Text = "Invalid Login";
                        break;
                    }

                }
                con.Close();
            }
            //Faculty Login ends.
            else
                lbl.Text = "Invalid Login";

        }
    }

}
