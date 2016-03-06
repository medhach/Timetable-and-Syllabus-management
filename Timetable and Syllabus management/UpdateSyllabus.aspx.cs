using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UpdateSyllabus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
       // ListBox1.Visible = false;
        int mno = Convert.ToInt32(Session["fid"].ToString());
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select fname from fac.facultydata where fid ="+mno,con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while(dr.Read())
        {
            Label4.Text = "Hello, " + dr["fname"].ToString();
        }
        con.Close();
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct tt.Subject.Year from tt.Subject, tt.facSyllabus1 where(tt.facSyllabus1.fid = " + mno + " and tt.facSyllabus1.Subcode = tt.Subject.SubCode)", con);
            SqlDataReader dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                ddyear1.Items.Add(dr1["Year"].ToString());
            }
            con.Close();
        }
    }
    protected void ddyear1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int mno = Convert.ToInt32(Session["fid"].ToString());

        con.Open();
        SqlCommand cmd = new SqlCommand("select fs.Subcode from tt.facSyllabus1 fs, tt.Subject where(fs.fid = " + mno + " and tt.Subject.SubCode = fs.Subcode and tt.Subject.Year = '" + ddyear1.SelectedValue + "')", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddsubcode1.Items.Add(dr["Subcode"].ToString());
        }
        con.Close();
    }
    protected void ddbranch1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int mno = Convert.ToInt32(Session["fid"].ToString());

        con.Open();
        SqlCommand cmd = new SqlCommand("select Section from tt.facSyllabus1 where(fid = " + mno + " and Subcode = '" + ddsubcode1.SelectedValue + "' and Branch = '" + ddbranch1.SelectedValue + "')", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddsec.Items.Add(dr["Section"].ToString());
        }
        con.Close();
    }
    protected void ddsubcode1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int mno = Convert.ToInt32(Session["fid"].ToString());

        con.Open();
        SqlCommand cmd = new SqlCommand("select Branch from tt.facSyllabus1 where(fid = " + mno + " and Subcode = '" + ddsubcode1.SelectedValue + "')", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddbranch1.Items.Add(dr["Branch"].ToString());
        }
        con.Close();
        
    }
    
    protected void ddsec_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        ListBox1.Visible = true;
        /* con.Open();
         SqlCommand cmd1 = new SqlCommand(" insert into tt.TopicsCovered(fid, Subcode, Branch, Section, Topic_ID)select fid, Subcode, Branch, Section, Topic_ID from dbo.Data where dbo.Data.fid!=TopicsCovered.fid", con);
         try
         {
             cmd1.ExecuteNonQuery();
         }
         catch (SqlException ex) { }
         finally{
         con.Close();*/
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int mno = Convert.ToInt32(Session["fid"].ToString());



        CheckBox ch = (CheckBox)GridView1.SelectedRow.Cells[1].FindControl("Checkbox1");
        Label lbl = (Label)GridView1.SelectedRow.Cells[3].FindControl("Label2");
        Label lbl2 = (Label)GridView1.SelectedRow.Cells[2].FindControl("Label1");
        TextBox tb1 = (TextBox)GridView1.SelectedRow.Cells[4].FindControl("TextBox4");
        bool check = ch.Checked;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tt.TopicsCovered values(" + mno + ",'" + ddsubcode1.SelectedValue + "','"+ddyear1.SelectedValue+"', '" + ddbranch1.SelectedValue + "','" + ddsec.SelectedValue + "',(select distinct Unitno from tt.SyllabusTable1 where Unit_name = '" + lbl.Text + "'),(select distinct Topic_ID from tt.SyllabusTable1 where Topic_Name = '" + lbl2.Text + "'),'" + check + "', '" + tb1.Text + "')", con);
            cmd.ExecuteNonQuery();
            ListBox1.Items.Add("" + lbl.Text + "," + lbl2.Text + " Added.");
            con.Close();
        }
        catch (SqlException ex)
        {
            Response.Write("<script>alert('Record Already Updated.')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}