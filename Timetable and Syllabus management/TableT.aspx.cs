using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TableT : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void dsection1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String[] sub = new String[42];
        String[] sl = new String[8];
        String[] fl = new String[8];
        con.Open();
        if (dyear1.SelectedValue == "First" && dsem1.SelectedValue == "YearlyPattern")
        {

        }
        else if (dyear1.SelectedValue == "Second")
        {
            if (dsem1.SelectedValue == "1")
            {
                if (dbranch1.SelectedValue == "CSE")
                {
                    if (dsection1.SelectedValue == "A")
                    {
                        SqlCommand cmd = new SqlCommand("select Subject from tt.Two1CseA", con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        int i = 0;
                        while (dr.Read() && i < 42)
                        {
                            sub[i] = dr.GetValue(0).ToString();
                            i++;
                        }
                        con.Close();
                        con.Open();
                        SqlCommand cd1 = new SqlCommand("select Subject_Name from tt.FacTwo1CseA", con);
                        SqlDataReader rdr1 = cd1.ExecuteReader();
                        int s = 0;
                        while (rdr1.Read() && s < 8)
                        {
                            sl[s] = rdr1.GetValue(0).ToString();
                            s++;
                        }
                        con.Close();
                        con.Open();
                        SqlCommand cd2 = new SqlCommand("select Faculty_Name from tt.FacTwo1CseA", con);
                        SqlDataReader rdr2 = cd2.ExecuteReader();
                        int f = 0;
                        while (rdr2.Read() && f < 8)
                        {
                            fl[f] = rdr2.GetValue(0).ToString();
                            f++;
                        }
                        fillTable(sub, sl, fl);
                    }
                }
                else if (dbranch1.SelectedValue == "ECE")
                {

                }
                else if (dbranch1.SelectedValue == "IT")
                {

                }
                else if (dbranch1.SelectedValue == "EIE")
                {

                }
            }
            else if (dsem1.SelectedValue == "2")
            {
                if (dbranch1.SelectedValue == "CSE")
                {
                    if (dsection1.SelectedValue == "A")
                    {
                        SqlCommand cmd = new SqlCommand("select Subject from tt.Two2CseA", con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        int i = 0;
                        while (dr.Read() && i < 42)
                        {
                            sub[i] = dr.GetValue(0).ToString();
                            i++;
                        }
                        con.Close();
                        con.Open();
                        SqlCommand cd1 = new SqlCommand("select Subject_Name from tt.FacTwo2CseA", con);
                        SqlDataReader rdr1 = cd1.ExecuteReader();
                        int s = 0;
                        while (rdr1.Read() && s < 8)
                        {
                            sl[s] = rdr1.GetValue(0).ToString();
                            s++;
                        }
                        con.Close();
                        con.Open();
                        SqlCommand cd2 = new SqlCommand("select Faculty_Name from tt.FacTwo2CseA", con);
                        SqlDataReader rdr2 = cd2.ExecuteReader();
                        int f = 0;
                        while (rdr2.Read() && f < 8)
                        {
                            fl[f] = rdr2.GetValue(0).ToString();
                            f++;
                        }
                        fillTable(sub, sl, fl);
                    }
                    else if (dbranch1.SelectedValue == "ECE")
                    {

                    }
                    else if (dbranch1.SelectedValue == "IT")
                    {

                    }
                    else if (dbranch1.SelectedValue == "EIE")
                    {

                    }
                }
            }
            else if (dyear1.SelectedValue == "Third")
            {

            }
            else if (dyear1.SelectedValue == "Fourth")
            {

            }
        }
        con.Close();
    }
    protected void fillTable(String[] sub, String[] sl, String[] fl)
    {
        List<Label> Monday = new List<Label>() { Mon1, Mon2, Mon3, Mon4, Mon5, Mon6, Mon7 };
        List<Label> Tuesday = new List<Label>() { Tue1, Tue2, Tue3, Tue4, Tue5, Tue6, Tue7 };
        List<Label> Wednesday = new List<Label>() { Wed1, Wed2, Wed3, Wed4, Wed5, Wed6, Wed7 };
        List<Label> Thursday = new List<Label>() { Thu1, Thu2, Thu3, Thu4, Thu5, Thu6, Thu7 };
        List<Label> Friday = new List<Label>() { Fri1, Fri2, Fri3, Fri4, Fri5, Fri6, Fri7 };
        List<Label> Saturday = new List<Label>() { Sat1, Sat2, Sat3, Sat4, Sat5, Sat6, Sat7 };
        List<Label> SubList = new List<Label>() { lbsub1, lbsub2, lbsub3, lbsub4, lbsub5, lbsub6, lbsub7, lbsub8 };
        List<Label> FacList = new List<Label>() { lbfac1, lbfac2, lbfac3, lbfac4, lbfac5, lbfac6, lbfac7, lbfac8 };

        int j = 0;
        while (j < 42)
        {
            int p = 0;
            while (j < 7)
            {
                Monday[p].Text = sub[j];
                j++; p++;
            }
            p = 0;
            while (j >= 7 && j < 14)
            {
                Tuesday[p].Text = sub[j];
                j++; p++;
            }
            p = 0;
            while (j >= 14 && j < 21)
            {
                Wednesday[p].Text = sub[j];
                j++; p++;
            }
            p = 0;
            while (j >= 21 && j < 28)
            {
                Thursday[p].Text = sub[j];
                j++; p++;
            }
            p = 0;
            while (j >= 28 && j < 35)
            {
                Friday[p].Text = sub[j];
                j++; p++;
            }
            p = 0;
            while (j >= 35 && j < 42)
            {
                Saturday[p].Text = sub[j];
                j++; p++;
            }
        }
        for (int k = 0; k < 8; k++)
        {
            SubList[k].Text = sl[k] + ":";
        }
        for (int l = 0; l < 8; l++)
        {
            FacList[l].Text = fl[l];
        }
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        List<Label> Monday = new List<Label>() { Mon1, Mon2, Mon3, Mon4, Mon5, Mon6, Mon7 };
        List<Label> Tuesday = new List<Label>() { Tue1, Tue2, Tue3, Tue4, Tue5, Tue6, Tue7 };
        List<Label> Wednesday = new List<Label>() { Wed1, Wed2, Wed3, Wed4, Wed5, Wed6, Wed7 };
        List<Label> Thursday = new List<Label>() { Thu1, Thu2, Thu3, Thu4, Thu5, Thu6, Thu7 };
        List<Label> Friday = new List<Label>() { Fri1, Fri2, Fri3, Fri4, Fri5, Fri6, Fri7 };
        List<Label> Saturday = new List<Label>() { Sat1, Sat2, Sat3, Sat4, Sat5, Sat6, Sat7 };
        List<Label> SubList = new List<Label>() { lbsub1, lbsub2, lbsub3, lbsub4, lbsub5, lbsub6, lbsub7, lbsub8 };
        List<Label> FacList = new List<Label>() { lbfac1, lbfac2, lbfac3, lbfac4, lbfac5, lbfac6, lbfac7, lbfac8 };

        for (int i = 0; i < 7; i++)
        {
            Monday[i].Text = null;
            Tuesday[i].Text = null;
            Wednesday[i].Text = null;
            Thursday[i].Text = null;
            Friday[i].Text = null;
            Saturday[i].Text = null;
        }
        for (int j = 0; j < 8; j++)
        {
            SubList[j].Text = null;
            FacList[j].Text = null;
        }
    }
    protected void LinkLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}