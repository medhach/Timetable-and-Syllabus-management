using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Newtable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDay.Visible = false;
        ddDay.Visible = false;
        lblPeriod.Visible = false;
        ddPeriod.Visible = false;
        lblsubject.Visible = false;
        ddSub.Visible = false;
        lbltf.Visible = false;
        lbTimeFrom.Visible = false;
        lbltt.Visible = false;
        lbTimeTo.Visible = false;
        classType.Visible = false;
        lbltl.Visible = false;
        bc.Visible = false;
        b1.Visible = false;

    }
    protected void ddPeriodSetTime(object sender, EventArgs e)
    {
        switch (ddPeriod.SelectedValue)
        {
            case "1": lbTimeFrom.Text = "9:30";
                lbTimeTo.Text = "10:20";
                break;
            case "2": lbTimeFrom.Text = "10:20";
                lbTimeTo.Text = "11:10";
                break;
            case "3": lbTimeFrom.Text = "11:25";
                lbTimeTo.Text = "12:15";
                break;
            case "4": lbTimeFrom.Text = "12:15";
                lbTimeTo.Text = "13:05";
                break;
            case "5": lbTimeFrom.Text = "13:45";
                lbTimeTo.Text = "14:35";
                break;
            case "6": lbTimeFrom.Text = "14:35";
                lbTimeTo.Text = "15:25";
                break;
            case "7": lbTimeFrom.Text = "15:25";
                lbTimeTo.Text = "16:15";
                break;
        }
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();
        if (dyear.SelectedValue == "First" && dsem.SelectedValue == "YearlyPattern")
        {
            if (dbranch.SelectedValue == "CSE")
            {
                if (dsection.SelectedValue == "A")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneCseA values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
                else if (dsection.SelectedValue == "B")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneCseB values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
                else if (dsection.SelectedValue == "C")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneCseC values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
                else if (dsection.SelectedValue == "D")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneCseD values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
                else if (dsection.SelectedValue == "E")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneCseE values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
                else if (dsection.SelectedValue == "F")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneCseF values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
                else if (dsection.SelectedValue == "G")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneCseG values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }

            }
            else if (dbranch.SelectedValue == "ECE")
            {
                if (dsection.SelectedValue == "A")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneEceA values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
                else if (dsection.SelectedValue == "B")
                {
                    SqlCommand cmd = new SqlCommand("insert into tt.OneEceB values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                    cmd.ExecuteNonQuery();
                }
            }
            else if (dbranch.SelectedValue == "IT")
            {
                SqlCommand cmd = new SqlCommand("insert into tt.OneIt values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
            }
            else if (dbranch.SelectedValue == "EIE")
            {
                SqlCommand cmd = new SqlCommand("insert into tt.OneEie values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
            }
        }
        else if (dyear.SelectedValue == "Second")
        {
            if (dbranch.SelectedValue == "CSE")
            {
                if (dsem.SelectedValue == "1")
                {
                    if (dsection.SelectedValue == "A")
                    {
                        if (classType.SelectedValue == "Lab")
                        {
                            int period = Convert.ToInt32(ddPeriod.SelectedValue);
                            DateTime tf = Convert.ToDateTime(lbTimeFrom.Text);
                            DateTime tt = Convert.ToDateTime(lbTimeTo);
                            for(int i=0;i<3;i++)
                            {
                                SqlCommand cmd = new SqlCommand("insert into tt.Two1CseA values('" + ddDay.SelectedValue + "','" + period + "','" + tf.ToString() + "','" + tt.ToString() + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                                cmd.ExecuteNonQuery();
                                Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);

                                period++;
                                tf = tf.AddMinutes(50);
                                tt = tt.AddMinutes(50);
                            }
                        }
                        else
                        {
                            SqlCommand cmd = new SqlCommand("insert into tt.Two1CseA values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                            cmd.ExecuteNonQuery();
                            Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                        }
                    }
                    else if (dsection.SelectedValue == "B")
                    {
                        SqlCommand cmd = new SqlCommand("insert into tt.Two1CseB values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                        cmd.ExecuteNonQuery();
                        Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                    }
                }
                else if (dsem.SelectedValue == "2")
                {
                    if (dsection.SelectedValue == "A")
                    {
                        SqlCommand cmd = new SqlCommand("insert into tt.Two2CseA values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                        cmd.ExecuteNonQuery();
                        Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                    }
                    else if (dsection.SelectedValue == "B")
                    {
                        if (classType.SelectedValue == "Lab")
                        {
                            int period = Convert.ToInt32(ddPeriod.SelectedValue);
                            DateTime tf = Convert.ToDateTime(lbTimeFrom.Text);
                            DateTime tt = Convert.ToDateTime(lbTimeTo);
                            for (int i = 0; i < 3; i++)
                            {
                                SqlCommand cmd = new SqlCommand("insert into tt.Two2CseB values('" + ddDay.SelectedValue + "','" + period + "','" + tf.ToString() + "','" + tt.ToString() + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                                cmd.ExecuteNonQuery();
                                Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);

                                period++;
                                tf = tf.AddMinutes(50);
                                tt = tt.AddMinutes(50);
                            }
                        }
                        else
                        {
                            SqlCommand cmd = new SqlCommand("insert into tt.Two2CseB values('" + ddDay.SelectedValue + "','" + ddPeriod.SelectedValue + "','" + lbTimeFrom.Text + "','" + lbTimeTo.Text + "','" + ddSub.SelectedValue + "','" + DropDownFac1.SelectedValue + "','" + classType.SelectedValue + "')", con);
                            cmd.ExecuteNonQuery();
                            Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                        }
                    }
                }
            }
        }
        con.Close();
    }
    protected void Display(string day, string period, string sub)
    {
        if (day == "Monday")
        {
            switch (period)
            {
                case "1": Mon1.Text = sub;
                    break;
                case "2": Mon2.Text = sub;
                    break;
                case "3": Mon3.Text = sub;
                    break;
                case "4": Mon4.Text = sub;
                    break;
                case "5": Mon5.Text = sub;
                    break;
                case "6": Mon6.Text = sub;
                    break;
                case "7": Mon7.Text = sub;
                    break;
            }
        }
        else if (day == "Tuesday")
        {
            switch (period)
            {
                case "1": Tue1.Text = sub;
                    break;
                case "2": Tue2.Text = sub;
                    break;
                case "3": Tue3.Text = sub;
                    break;
                case "4": Tue4.Text = sub;
                    break;
                case "5": Tue5.Text = sub;
                    break;
                case "6": Tue6.Text = sub;
                    break;
                case "7": Tue7.Text = sub;
                    break;
            }
        }
        else if (day == "Wednesday")
        {
            switch (period)
            {
                case "1": Wed1.Text = sub;
                    break;
                case "2": Wed2.Text = sub;
                    break;
                case "3": Wed3.Text = sub;
                    break;
                case "4": Wed4.Text = sub;
                    break;
                case "5": Wed5.Text = sub;
                    break;
                case "6": Wed6.Text = sub;
                    break;
                case "7": Wed7.Text = sub;
                    break;
            }
        }
        else if (day == "Thursday")
        {
            switch (period)
            {
                case "1": Thu1.Text = sub;
                    break;
                case "2": Thu2.Text = sub;
                    break;
                case "3": Thu3.Text = sub;
                    break;
                case "4": Thu4.Text = sub;
                    break;
                case "5": Thu5.Text = sub;
                    break;
                case "6": Thu6.Text = sub;
                    break;
                case "7": Thu7.Text = sub;
                    break;
            }
        }
        else if (day == "Friday")
        {
            switch (period)
            {
                case "1": Fri1.Text = sub;
                    break;
                case "2": Fri2.Text = sub;
                    break;
                case "3": Fri3.Text = sub;
                    break;
                case "4": Fri4.Text = sub;
                    break;
                case "5": Fri5.Text = sub;
                    break;
                case "6": Fri6.Text = sub;
                    break;
                case "7": Fri7.Text = sub;
                    break;
            }
        }
        else if (day == "Saturday")
        {
            switch (period)
            {
                case "1": Sat1.Text = sub;
                    break;
                case "2": Sat2.Text = sub;
                    break;
                case "3": Sat3.Text = sub;
                    break;
                case "4": Sat4.Text = sub;
                    break;
                case "5": Sat5.Text = sub;
                    break;
                case "6": Sat6.Text = sub;
                    break;
                case "7": Sat7.Text = sub;
                    break;
            }
        }
    }
    protected void SubjectSubmitButton_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tt.facSyllabus1 (fid, Subcode, Year, Branch, Section) values ((select fid from fac.facultydata where fname = '" + DropDownFac1.SelectedValue + "'), (select SubCode from tt.Subject where SubName = '" + DropDownSub1.SelectedValue + "' and Branch = '" + dbranch.SelectedValue + "'),(select Year from tt.Subject where (SubName = '" + DropDownSub1.SelectedValue + "' and Branch = '" + dbranch.SelectedValue + "')),(select Branch from tt.Subject where (Branch = '" + dbranch.SelectedValue + "' and SubName = '" + DropDownSub1.SelectedValue + "')),'" + dsection.SelectedValue + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        con.Open();
        if (dyear.SelectedValue == "First")
        {

        }
        else if (dyear.SelectedValue == "Second")
        {
            if (dsem.SelectedValue == "1")
            {
                if (dbranch.SelectedValue == "CSE")
                {
                    if (dsection.SelectedValue == "A")
                    {
                        try
                        {
                            SqlCommand cmd1 = new SqlCommand("update tt.FacTwo1CseA set Department = '" + DropDownDept1.SelectedValue + "',Faculty_Name = '" + DropDownFac1.SelectedValue + "' where (Subject_Name = '" + DropDownSub1.SelectedValue + "')", con);
                            cmd1.ExecuteNonQuery();
                        }
                        catch (SqlException se)
                        {
                            SqlCommand cmd1 = new SqlCommand("insert into tt.FacTwo1CseA values ('" + DropDownSub1.SelectedValue + "','" + DropDownDept1.SelectedValue + "','" + DropDownFac1.SelectedValue + "') ", con);
                            cmd1.ExecuteNonQuery();
                        }
                    }
                    else if (dsection.SelectedValue == "B")
                    {
                        try
                        {
                            SqlCommand cmd1 = new SqlCommand("update tt.FacTwo1CseB set Department = '" + DropDownDept1.SelectedValue + "',Faculty_Name = '" + DropDownFac1.SelectedValue + "' where (Subject_Name = '" + DropDownSub1.SelectedValue + "')", con);
                            cmd1.ExecuteNonQuery();
                        }
                        catch (SqlException se)
                        {
                            SqlCommand cmd1 = new SqlCommand("insert into tt.FacTwo1CseB values ('" + DropDownSub1.SelectedValue + "','" + DropDownDept1.SelectedValue + "','" + DropDownFac1.SelectedValue + "') ", con);
                            cmd1.ExecuteNonQuery();
                        }
                    }
                }
            }
            else if (dsem.SelectedValue == "2")
            {
                if (dbranch.SelectedValue == "CSE")
                {
                    if (dsection.SelectedValue == "A")
                    {
                        try
                        {
                            SqlCommand cmd1 = new SqlCommand("update tt.FacTwo2CseA set Department = '" + DropDownDept1.SelectedValue + "',Faculty_Name = '" + DropDownFac1.SelectedValue + "' where (Subject_Name = '" + DropDownSub1.SelectedValue + "')", con);
                            cmd1.ExecuteNonQuery();
                        }
                        catch (SqlException se)
                        {
                            SqlCommand cmd1 = new SqlCommand("insert into tt.FacTwo2CseA values ('" + DropDownSub1.SelectedValue + "','" + DropDownDept1.SelectedValue + "','" + DropDownFac1.SelectedValue + "') ", con);
                            cmd1.ExecuteNonQuery();
                        }
                    }
                    else if (dsection.SelectedValue == "B")
                    {
                        try
                        {
                            SqlCommand cmd1 = new SqlCommand("update tt.FacTwo2CseB set Department = '" + DropDownDept1.SelectedValue + "',Faculty_Name = '" + DropDownFac1.SelectedValue + "' where (Subject_Name = '" + DropDownSub1.SelectedValue + "')", con);
                            cmd1.ExecuteNonQuery();
                        }
                        catch (SqlException se)
                        {
                            SqlCommand cmd1 = new SqlCommand("insert into tt.FacTwo2CseB values ('" + DropDownSub1.SelectedValue + "','" + DropDownDept1.SelectedValue + "','" + DropDownFac1.SelectedValue + "') ", con);
                            cmd1.ExecuteNonQuery();
                        }
                    }
                }
            }
        }
        con.Close();
    }
    protected void ddSub_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void bc_Click(object sender, EventArgs e)
    {
        con.Open();
        if (dyear.SelectedValue == "Second")
        {
            if (dbranch.SelectedValue == "CSE")
            {
                if (dsem.SelectedValue == "1")
                {
                    if (dsection.SelectedValue == "A")
                    {
                        SqlCommand cmd = new SqlCommand("update tt.Two1CseA set Time_from = '" + lbTimeFrom.Text + "',Time_to = '" + lbTimeTo.Text + "',Subject = '" + ddSub.SelectedValue + "',Faculty = '" + DropDownFac1.SelectedValue + "',[Theory/Lab] = '" + classType.SelectedValue + "' where(Day = '" + ddDay.SelectedValue + "' and Period = '" + ddPeriod.SelectedValue + "') ", con);
                        cmd.ExecuteNonQuery();
                        Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                    }
                    else if (dsection.SelectedValue == "B")
                    {
                        SqlCommand cmd = new SqlCommand("update tt.Two1CseB set Time_from = '" + lbTimeFrom.Text + "',Time_to = '" + lbTimeTo.Text + "',Subject = '" + ddSub.SelectedValue + "',Faculty = '" + DropDownFac1.SelectedValue + "',[Theory/Lab] = '" + classType.SelectedValue + "' where(Day = '" + ddDay.SelectedValue + "' and Period = '" + ddPeriod.SelectedValue + "') ", con);
                        cmd.ExecuteNonQuery();
                        Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                    }
                }
                else if (dsem.SelectedValue == "2")
                {
                    if (dsection.SelectedValue == "A")
                    {
                        SqlCommand cmd = new SqlCommand("update tt.Two2CseA set Time_from = '" + lbTimeFrom.Text + "',Time_to = '" + lbTimeTo.Text + "',Subject = '" + ddSub.SelectedValue + "',Faculty = '" + DropDownFac1.SelectedValue + "',[Theory/Lab] = '" + classType.SelectedValue + "' where(Day = '" + ddDay.SelectedValue + "' and Period = '" + ddPeriod.SelectedValue + "') ", con);
                        cmd.ExecuteNonQuery();
                        Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                    }
                    else if (dsection.SelectedValue == "B")
                    {
                        SqlCommand cmd = new SqlCommand("update tt.Two2CseB set Time_from = '" + lbTimeFrom.Text + "',Time_to = '" + lbTimeTo.Text + "',Subject = '" + ddSub.SelectedValue + "',Faculty = '" + DropDownFac1.SelectedValue + "',[Theory/Lab] = '" + classType.SelectedValue + "' where(Day = '" + ddDay.SelectedValue + "' and Period = '" + ddPeriod.SelectedValue + "') ", con);
                        cmd.ExecuteNonQuery();
                        Display(ddDay.SelectedValue, ddPeriod.SelectedValue, ddSub.SelectedValue);
                    }
                }
            }
        }
        con.Close();
    }
    protected void DropDownSub1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SubjectSubmitButton0_Click(object sender, EventArgs e)
    {
        lblDay.Visible = true;
        ddDay.Visible = true;
        lblPeriod.Visible = true;
        ddPeriod.Visible = true;
        lbltf.Visible = true;
        lbTimeFrom.Visible = true;
        lbltt.Visible = true;
        lbTimeTo.Visible = true;
        classType.Visible = true;
        lbltl.Visible = true;
        bc.Visible = true;
        b1.Visible = true;
        lblsubject.Visible = true;
        ddSub.Visible = true;
    }
}